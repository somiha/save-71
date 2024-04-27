const { query } = require("express");
const db = require("../config/database.config");
const catModel = require("../middlewares/cat");
const crypto = require("../middlewares/crypto");

exports.orderDetails = async (req, res) => {
  var isLogged = crypto.decrypt(req.cookies.login_status || '');
  if (isLogged) {
    try {
      const currencyCode = crypto.decrypt(req.cookies.currencyCode || '');
      const [images, currRate, users] = await Promise.all([
        catModel.fetchFeaturedImages(),
        catModel.fetchCurrencyRate(currencyCode),
        catModel.fetchAllUserInfo(),
      ]);
      var oID = req.params.id;
      var uID = crypto.decrypt(req.cookies.userId)    // maybe a bug, because it's seller own user id
      var seller_id = crypto.decrypt(req.cookies.seller_id)
      db.query(
        "SELECT * FROM `order_details` INNER JOIN `orders` ON `orders`.`order_id` = `order_details`.`order_id` INNER JOIN `products` ON `products`.`product_id` = `order_details`.`product_id` WHERE `orders`.`order_id` = ?",
        [oID],
        (err1, order_details) => {
          if (!err1) {
            db.query(
              "SELECT * FROM `orders` WHERE `orders`.`order_id` = ?",
              [oID],
              (err2, res2) => {
                if (!err2) {
                  if (res2[0].seller_id == seller_id || res2[0].userId == uID) {
                    db.query("SELECT * FROM `shop` WHERE `shop`.`id` = ?", [seller_id], (err3, res3) => {
                      if (!err3) {
                        // console.log(res2);
                        // console.log(order_details)
                        db.query("SELECT * FROM `shop_due_details` WHERE `shop_id` = ? AND `is_paid` = 0 AND `last_date` < CURDATE()", [seller_id], (err4, shopDueDetails) => {
                          if (err4) {
                            res.send(err4);
                            return;
                          }

                          // If no due is pending, redirect to balance page
                          if (shopDueDetails.length > 0) {
                            res.redirect("/balance");
                          }
                          var matchingUser = users.find(function (user) { return user.user_id === res2[0].user_id; });
                          res.render("order-details", {
                            ogImage: "https://www.localhost:3000/images/logo-og.webp",
                            ogTitle: "Save71 Connects You and the World through Business.",
                            ogUrl: "https://www.localhost:3000",
                            currRate,
                            currencyCode,
                            menuId: "shop-owner-orders",
                            order_details: order_details,
                            image: images,
                            order: res2[0],
                            seller_details: res3[0],
                            matchingUser,
                          });
                        })
                      } else {
                        res.send(err3)
                      }
                    })
                  } else {
                    res.status(404).send('<script>alert("UnAuthorized !"); window.history.go(-1);</script>');
                    return
                  }
                } else {
                  res.status(404).send(err2);
                  return
                }
              }
            );
          } else {
            res.status(404).send(err1);
            return
          }
        }
      );
    } catch (err) {
      console.error(err);
      res.status(500).send("Internal Server Error");
    }
  } else {
    res.redirect('/login')
  }
};

// Commission, admin calculation
exports.order_status_complete = async (req, res) => {
  try {
    const [setNotification] = await Promise.all([
      catModel.setNotification,
    ]);
    var oID = req.params.id;
    var status = req.params.status;
    var ref_shop_id = req.params.ref_shop_id;
    var buyerUserId = crypto.decrypt(req.cookies.userId);
    var seller_id = req.params.seller_id;
    // console.log("Status : ", status);

    db.query("SELECT * FROM `orders` WHERE `order_id` = ?", [oID], (err37, res37) => {
      if (err37) {
        console.error(err37);
        res.status(500).send("An error occurred while fetching the order details.");
        return;
      }

      db.query(
        "UPDATE `orders` SET `order_status` = ?, `request_review` = '0' WHERE `orders`.`order_id` = ?",
        [status, oID],
        (err1, res1) => {
          if (err1) {
            console.error(err1);
            res.status(500).send("An error occurred while updating the order status.");
            return;
          }

          const statusArray = ["Confirmed", "Rejected", "New Order", "Shipped", "Return Order", "Pending"];

          setNotification(res37[0].user_id, `Your order status is changed to ${statusArray[status - 1]} for order ${oID} By seller.`, `/user_order`);

          // console.log("Res", res37);

    // calculate total price and deduct price
          if (status == 1) {
            db.query(
              "SELECT SUM(product_total_price) as `total_price`, SUM(deduct_price) as total_deduct_price FROM `order_details` WHERE `order_details`.`order_id` = ?",
              [oID],
              (err2, res2) => {
                if (err2) {
                  console.error(err2);
                  res.status(500).send("An error occurred while calculating the total price and deduct price.");
                  return;
                }

                // Adding Due history in "shop_due_details" table
                const currentDate = new Date();
                const dueTime = 1; // 1 day
                currentDate.setDate(currentDate.getDate() + dueTime);
                const dueDate = currentDate.toISOString().replace('T', ' ').substring(0, 19);

                db.query("INSERT INTO `shop_due_details` (`due_id`, `shop_id`, `order_id`, `due_amount`, `last_date`, `ref_id`, `is_paid`) VALUES (NULL, ?, ?, ?, ?, ?, '0')",
                  [
                    seller_id,
                    oID,
                    res2[0].total_deduct_price,
                    dueDate,
                    ref_shop_id,
                  ], (err3, res3) => {
                    if (!err3) {
                      console.log("Due added !")
                    } else {
                      console.error(err3);
                      res.status(500).send("An error occurred while Inserting shop_due_details.");
                      return;
                    }
                })


                // seller money add
                db.query("SELECT * FROM `shop` WHERE `id` = ?", [seller_id], (errSeller, resSeller) => {
                  if (!errSeller) {

                    // fetch seller balance
                    db.query("SELECT * FROM `shop_balance` WHERE `shop_id` = ?", [seller_id], (err3, res3) => {
                      if (err3) {
                        console.error(err3);
                        res.status(500).send("An error occurred while fetching seller balance.");
                        return;
                      }

                      // adding money to seller from buyer
                      db.query("SELECT SUM(product_total_price) as `total_price`, `deliveryCharge`  FROM `order_details` INNER JOIN `orders` ON `orders`.`order_id` = `order_details`.`order_id` WHERE `order_details`.`order_id` = ?",
                        [oID], (errOrder, resOrder) => {
                          if (errOrder) {
                            console.error(errOrder);
                            res.status(500).send("An error occurred while fetching order details.");
                            return;
                          }
                          // fetch buyer user details
                          db.query("SELECT * FROM `user` INNER JOIN `shop` ON `shop`.`seller_user_id` = `user`.`user_id` INNER JOIN `shop_balance` ON `shop_balance`.`shop_id` = `shop`.`id`  WHERE `user_id` = ?",
                            [buyerUserId], (errUser, resUser) => {
                            if (errUser) {
                              console.error(errUser);
                              res.status(500).send("An error occurred while fetching user details.");
                              return;
                            }

                            const payableAmount = resOrder[0].total_price + resOrder[0].deliveryCharge;

                        // if user can pay
                            if (resUser[0].own_balance >= payableAmount) {
                              // update user balance
                              db.query("UPDATE `shop_balance` SET `own_balance` = ? WHERE `shop_balance`.`shop_id` = ?",
                                [
                                  resUser[0].own_balance - payableAmount,
                                  resUser[0].shop_id,
                                ], (err4, res4) => {
                                  if (err4) {
                                    console.error(err4);
                                    res.status(500).send("An error occurred while updating seller balance.");
                                    return;
                                  }
                                  console.log("Seller balance updated");

                                  // select seller balance
                                  db.query("SELECT * FROM `shop_balance` WHERE `shop_id` = ?",
                                    [seller_id], (err6, res6) => {
                                      if (err6) {
                                        console.error(err6);
                                        res.status(500).send("An error occurred while fetching seller balance.");
                                        return;
                                      }
                                      // seller balance add
                                      db.query("UPDATE `shop_balance` SET `own_balance` = ? WHERE `shop_balance`.`shop_id` = ?",
                                        [
                                          res6[0].own_balance + payableAmount,
                                          seller_id,
                                        ], (err7, res7) => {
                                          if (err7) {
                                            console.error(err7);
                                            res.status(500).send("An error occurred while updating seller balance.");
                                            return;
                                          }
                                          console.log("Seller balance updated");
                                          // res.redirect("back");
                                        })
                                    })
                                })
                            }
                          })
                        })
                  // adding money to seller from buyer end

                      //  add money only if seller is in "Save shop"
                      // if (resSeller[0].shop_type == 1) {
                      //   if (res3.length > 0) {
                      //     db.query(
                      //       "UPDATE `shop_balance` SET `own_balance` = ?, `due_payment` = ? WHERE `shop_balance`.`shop_id` = ?",
                      //       [
                      //         res3[0].own_balance +
                      //           res2[0].total_price +
                      //           res37[0].deliveryCharge,
                      //         res3[0].due_payment +
                      //           res2[0].total_deduct_price,
                      //         seller_id,
                      //       ],
                      //       (err4, res4) => {
                      //         if (err4) {
                      //           console.error(err4);
                      //           res.status(500).send("An error occurred while updating seller balance.");
                      //           return;
                      //         } else {
                      //           console.log("Seller balance updated");
                      //         }
                      //       }
                      //     );
                      //   } else {
                      //     db.query(
                      //       "INSERT INTO `shop_balance` (`balance_id`, `shop_id`, `own_balance`, `due_payment`, `from_ref`, `withdraw`) VALUES (NULL, ?, ?, ?, ?, ?)",
                      //       [
                      //         seller_id,
                      //         res2[0].total_price + res37[0].deliveryCharge,
                      //         res2[0].total_deduct_price,
                      //         0,
                      //         0,
                      //       ],
                      //       (err4, res4) => {
                      //         if (err4) {
                      //           console.error(err4);
                      //           res.status(500).send("An error occurred while creating seller balance.");
                      //           return;
                      //         } else {
                      //           console.log("Seller balance Created. Id : ", seller_id);
                      //         }
                      //       }
                      //     );
                      //   }
                      // } else {

                  // add money only if seller balance id exists
                      if (res3.length > 0) {
                        db.query(
                          "UPDATE `shop_balance` SET `due_payment` = ? WHERE `shop_balance`.`shop_id` = ?",
                          [
                            res3[0].due_payment +
                            res2[0].total_deduct_price,
                            seller_id,
                          ],
                          (err4, res4) => {
                            if (err4) {
                              console.error(err4);
                              res.status(500).send("An error occurred while updating seller balance.");
                              return;
                            } else {
                              console.log("Seller balance updated");
                            }
                          }
                        );
                      } else {
                        db.query(
                          "INSERT INTO `shop_balance` (`balance_id`, `shop_id`, `own_balance`, `due_payment`, `from_ref`, `withdraw`) VALUES (NULL, ?, ?, ?, ?, ?)",
                          [
                            seller_id,
                            res2[0].total_price + res37[0].deliveryCharge,
                            res2[0].total_deduct_price,
                            0,
                            0,
                          ],
                          (err4, res4) => {
                            if (err4) {
                              console.error(err4);
                              res.status(500).send("An error occurred while creating seller balance.");
                              return;
                            } else {
                              console.log("Seller balance Created. Id : ", seller_id);
                            }
                          }
                        );
                      }

                      // }

                // buyer history added
                      db.query(
                        "INSERT INTO `payment_history` (`history_id`, `shop_id`, `amount`, `type`, `date`, `order_id`, `ref_user_id`) VALUES (NULL, ?, ?, ?, ?, ?, ?)",
                        [
                          seller_id,
                          res2[0].total_price +
                          res37[0].deliveryCharge,
                          1,
                          new Date().toISOString().replace('T', ' ').substring(0, 19),
                          oID,
                          buyerUserId,
                        ],
                        (err5, res5) => {
                          if (err5) {
                            console.error(err5);
                            res.status(500).send("An error occurred while adding seller payment history.");
                            return;
                          } else {
                            console.log("Added seller payment history");
                            res.redirect("back");
                          }
                        }
                      );
                    });
                  }
                  // seller shop details fetch error
                  else {
                    console.error(errSeller);
                    res.status(500).send("An error occurred while fetching seller shop details.");
                    return;
                  }
                })
                // seller money add end

              }
            );
          }
          // when status = 1 | calculate total price and deduct price else portion
          else if (status == 3) {
            db.query(
              "UPDATE `orders` SET `seller_confirm` = '1', `request_review` = '1' WHERE `orders`.`order_id` = ?",
              [oID],
              (err2, res2) => {
                if (err2) {
                  console.error(err2);
                  res.status(500).send("An error occurred while updating seller confirmation and review status.");
                  return;
                } else {
                  console.log("Seller sent review for order : ", oID);
                  res.redirect("back");
                }
              }
            );
          } else {
            res.redirect("back");
          }
        }
      );
    });
  } catch (err) {
    console.error(err);
    res.status(500).send("Internal Server Error");
  }
};


exports.delivery_charge = async (req, res) => {
  try {
    const currencyCode = crypto.decrypt(req.cookies.currencyCode);
    const [currRate] = await Promise.all([
      catModel.fetchCurrencyRate(currencyCode),
    ]);
    var oID = req.params.oID;
    const { deliveryCharge } = req.body;
    // console.log(deliveryCharge / currRate)
    db.query(
      "UPDATE `orders` SET `deliveryCharge` = ? WHERE `orders`.`order_id` = ?",
      [deliveryCharge / currRate, oID],
      (err1, res1) => {
        if (!err1) {
          res.redirect("back");
        } else {
          res.send(err1);
        }
      }
    );
  } catch (err) {
    console.error(err);
    // Handle error and send appropriate response
    res.status(500).send("Internal Server Error");
  }
};

exports.order_status = (req, res) => {
  var oID = req.params.id;
  var status = req.params.status;
  var buyerUserId = crypto.decrypt(req.cookies.userId);

  db.query(
    "SELECT * FROM `orders` WHERE `orders`.`order_id` = ?",
    [oID],
    (err11, res11) => {
      if (!err11) {
        // fetching seller details
        db.query(
          "SELECT * FROM `shop` WHERE `id` = ?",
          [res11[0].seller_id],
          (err22, res22) => {
            if (!err22) {
          // fetching seller's ref user details
              db.query(
                "SELECT * FROM `user` WHERE `user`.`user_id` = ?",
                [res22[0].seller_user_id],
                (err1, res1) => {
              // fetch seller user details then fetch if seller has ref user
                  if (!err1 && res1.length > 0) {
                    db.query(
                      "SELECT * FROM `user` WHERE `user`.`own_ref_id` = ?",
                      [res1[0].reference_id],
                      (err2, res2) => {
                    // fetch reference user details
                        if (!err2 && res2.length > 0) {
                      // selecting reference user's seller id
                          db.query(
                            "SELECT * FROM `shop` WHERE `shop`.`seller_user_id` = ?",
                            [res2[0].user_id],
                            (err3, res3) => {
                              if (!err3 && res3.length > 0) {
                                // if reference seller user ID exists
                                res.redirect(
                                  // /order_details/order_id/status/ref_shop_id/main_seller_id

                                  "/order_details/" + oID + "/" + status + "/" + res3[0].id + "/" + res11[0].seller_id
                                );
                              } else {
                                res.send(err3);
                              }
                            }
                          );
                      // selecting reference user's seller id end
                        } else {
                          res.send(err2);
                        }
                  // fetch reference user details end
                      }
                    );
                  } else {
                    res.send(err1);
                  }
            // fetch seller user details then fetch if seller has ref user end
                }
              );
          // fetching seller's ref user details end
            } else {
              res.send(err22);
            }
          }
        );
      // fetching seller details end
      } else {
        res.send(err11);
      }
    }
  );
};

exports.order_delete = (req, res) => {
  var oID = req.params.id;
  db.query(
    "DELETE FROM `orders` WHERE `orders`.`order_id` = ?",
    [oID],
    (err1, res1) => {
      if (!err1) {
        db.query(
          "DELETE FROM `order_details` WHERE `order_details`.`order_id` = ?",
          [oID],
          (err2, res2) => {
            if (!err2) {
              res.redirect("/orders");
            } else {
              res.send(err2);
            }
          }
        );
      } else {
        res.send(err1);
      }
    }
  );
};

exports.stock_out = (req, res) => {
  var pID = req.params.pID;
  var oID = req.params.id;
  var order_id = req.params.order_id;
  db.query(
    "UPDATE `products` SET `quantity` = -1 WHERE `products`.`product_id` = ?",
    [pID],
    (err1, stock_out) => {
      if (!err1) {
        db.query(
          "UPDATE `order_details` SET `stock_out` = 1 WHERE `order_details`.`order_details_id` = ?",
          [oID],
          (err2, res2) => {
            if (!err2) {
              db.query(
                "UPDATE `orders` SET `request_review` = 1 WHERE `orders`.`order_id` = ?",
                [order_id],
                (err3, rqRev) => {
                  if (!err3) {
                    res.redirect("back");
                  } else {
                    res.send(err3);
                  }
                }
              );
            } else {
              res.send(err2);
            }
          }
        );
      } else {
        res.send(err1);
      }
    }
  );
};

// Seller and buyer can update order quantity and thus the overall price and deduct amount
exports.updateOrder = async (req, res) => {
  try {
    const [setNotification] = await Promise.all([
      catModel.setNotification,
    ]);
    const { order_details_id, extra_cat_id, is_seller } = req.params;
    const { update_quantity } = req.body;
    db.query(
      "SELECT * FROM `order_details` INNER JOIN `products` ON `order_details`.`product_id` = `products`.`product_id` INNER JOIN `orders` ON `orders`.`order_id` = `order_details`.`order_id` WHERE `order_details`.`order_details_id` = ?",
      [order_details_id],
      (err1, res1) => {
        if (err1) {
          console.error(err1);
          res.status(500).send("An error occurred while fetching order details.");
          return;
        }
        db.query("SELECT `retailer_deduct_percentage`, `manufacturer_deduct_percentage` FROM `extra_cat` WHERE `extra_cat`.`extra_cat_id` = ?",
          [extra_cat_id], (err2, res2) => {
            if (err2) {
              console.error(err2);
              res.status(500).send("An error occurred while fetching extra category details.");
              return;
            }
            const update_query = "UPDATE `order_details` SET `product_quantity` = ?, `product_total_price` = ?, `deduct_price` = ? WHERE `order_details`.`order_details_id` = ?"
            const up_deduct_price = res1[0].product_price * update_quantity * res2[0].retailer_deduct_percentage / 100;
            const up_total_price = res1[0].product_price * update_quantity;
            const refund_amount = res1[0].product_total_price - up_total_price;
            db.query(update_query, [update_quantity, up_total_price, up_deduct_price, order_details_id], (err3, res3) => {
              if (err3) {
                console.error(err3);
                res.status(500).send("An error occurred while updating order details.");
                return;
              }

              // who changed the quantity ? seller or buyer
              if (is_seller === 1) {
                setNotification(res1[0].user_id, `Your order quantity is updated for order ${res1[0].order_id} By seller.`, `/user_order/?oID=${res1[0].order_id}`);
              } else {
                setNotification(res1[0].seller_id, `(Partial Purchase) Your order quantity is updated for order ${res1[0].order_id} By buyer.`, `/order_details/${res1[0].order_id}`);
                // cash on delivery, so no need to update balance | due balance will be added after this confirmation
              }
              res.redirect("back");
            })
          })
      })
  } catch (err) {
    console.error(err);
    res.status(500).send("Internal Server Error");
  }
}