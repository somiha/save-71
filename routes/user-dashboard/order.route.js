const express = require("express");
const {
  order,
  acceptOrder,
  delOrder,
  returnOrder,
} = require("../../controllers/user-dashboard/order.controller");
const router = express.Router();

router.get("/user_order", order);
router.get("/user_acceptOrder/:order_id", acceptOrder);
router.get("/user_delOrder/:order_id", delOrder);
router.post("/returnOrder/:order_id", returnOrder);

module.exports = router;
