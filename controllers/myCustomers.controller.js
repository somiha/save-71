const db = require("../config/database.config");
const catModel = require("../middlewares/cat");
const crypto = require("../middlewares/crypto");

// exports.myCustomers = async (req, res) => {
//   var isLogged = crypto.decrypt(req.cookies.login_status || "");

//   // var userImage = crypto.decrypt(req.cookies.userImage || '');
//   // var userName = crypto.decrypt(req.cookies.userName);
//   if (isLogged) {
//     try {
//       const userId = crypto.decrypt(req.cookies.userId);
//       const currencyCode = crypto.decrypt(req.cookies.currencyCode);
//       const [images, currRate, notification] = await Promise.all([
//         catModel.fetchFeaturedImages(),
//         catModel.fetchCurrencyRate(currencyCode),
//         catModel.fetchAllNotifications(userId),
//       ]);
//       var seller_id = crypto.decrypt(req.cookies.seller_id || "");
//       db.query(
//         "SELECT * FROM `shop` WHERE `id` = ?",
//         [seller_id],
//         (err1, res1) => {
//           if (!err1) {
//             db.query(
//               "SELECT * FROM `user` WHERE `reference_id` = ?",
//               [res1[0].shop_number],
//               (err2, res2) => {
//                 if (!err2) {
//                   db.query(
//                     "SELECT * FROM `payment_history` WHERE `shop_id` = ? AND `type` = 2",
//                     [seller_id],
//                     (err3, res3) => {
//                       if (!err3) {
//                         res.render("myCustomers", {
//                           ogImage:
//                             "https://admin-save71.lens-ecom.store/images/logo-og.webp",
//                           ogTitle:
//                             "Save71 Connects You and the World through Business.",
//                           ogUrl: "https://admin-save71.lens-ecom.store",
//                           currencyCode,
//                           currRate,
//                           menuId: "myCustomers",
//                           name: "My Customers",
//                           customers: res2,
//                           earning: res3,
//                           notification: notification,
//                         });
//                       } else {
//                         res.send(err3);
//                       }
//                     }
//                   );
//                 } else {
//                   res.send(err2);
//                 }
//               }
//             );
//           } else {
//             res.send(err1);
//           }
//         }
//       );
//     } catch (err) {
//       console.error(err);
//       // Handle error and send appropriate response
//       res.status(500).send("Internal Server Error");
//     }
//   } else {
//     res.redirect("/login");
//   }
// };

exports.myCustomers = async (req, res) => {
  var isLogged = crypto.decrypt(req.cookies.login_status || "");

  if (isLogged) {
    try {
      const userId = crypto.decrypt(req.cookies.userId);
      const currencyCode = crypto.decrypt(req.cookies.currencyCode);
      const [images, currRate, notification] = await Promise.all([
        catModel.fetchFeaturedImages(),
        catModel.fetchCurrencyRate(currencyCode),
        catModel.fetchAllNotifications(userId),
      ]);
      var seller_id = crypto.decrypt(req.cookies.seller_id || "");
      db.query(
        "SELECT * FROM `shop` WHERE `id` = ?",
        [seller_id],
        (err1, res1) => {
          if (!err1) {
            db.query(
              "SELECT * FROM `user` WHERE `reference_id` = ?",
              [res1[0].shop_number],
              (err2, res2) => {
                if (!err2) {
                  const customerIds = res2.map((customer) => customer.user_id);

                  if (customerIds.length > 0) {
                    db.query(
                      "SELECT user_id, COUNT(*) as completedOrders FROM `orders` WHERE `user_id` IN (?) AND `order_status` = 4 GROUP BY user_id",
                      [customerIds],
                      (err3, res3) => {
                        if (!err3) {
                          // Merge completed orders count into customer data
                          const customersWithOrders = res2.map((customer) => {
                            const orders = res3.find(
                              (order) => order.user_id === customer.user_id
                            );
                            return {
                              ...customer,
                              completedOrders: orders
                                ? orders.completedOrders
                                : 0,
                            };
                          });

                          db.query(
                            "SELECT * FROM `payment_history` WHERE `shop_id` = ? AND `type` = 2",
                            [seller_id],
                            (err4, res4) => {
                              if (!err4) {
                                res.render("myCustomers", {
                                  ogImage:
                                    "https://admin-save71.lens-ecom.store/images/logo-og.webp",
                                  ogTitle:
                                    "Save71 Connects You and the World through Business.",
                                  ogUrl: "https://admin-save71.lens-ecom.store",
                                  currencyCode,
                                  currRate,
                                  menuId: "myCustomers",
                                  name: "My Customers",
                                  customers: customersWithOrders,
                                  earning: res4,
                                  notification: notification,
                                });
                              } else {
                                res.send(err4);
                              }
                            }
                          );
                        } else {
                          res.send(err3);
                        }
                      }
                    );
                  } else {
                    res.render("myCustomers", {
                      ogImage:
                        "https://admin-save71.lens-ecom.store/images/logo-og.webp",
                      ogTitle:
                        "Save71 Connects You and the World through Business.",
                      ogUrl: "https://admin-save71.lens-ecom.store",
                      currencyCode,
                      currRate,
                      menuId: "myCustomers",
                      name: "My Customers",
                      customers: res2,
                      earning: [],
                      notification: notification,
                    });
                  }
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
    } catch (err) {
      console.error(err);
      res.status(500).send("Internal Server Error");
    }
  } else {
    res.redirect("/login");
  }
};
