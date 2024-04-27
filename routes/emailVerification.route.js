const express = require("express");
const {
    emailVerification,
    emailVerificationPost,
    emailVerificationRequest,
    emailVerificationRequestAPI,
    emailVerificationPostAPI,
} = require("../controllers/emailVerification.controller");
const router = express.Router();

router.post("/emailVerificationRequestAPI", emailVerificationRequestAPI);
router.post("/emailVerificationPostAPI", emailVerificationPostAPI);

router.post("/emailVerification", emailVerificationPost);
router.get("/emailVerificationRequest/:encUserId/:message", emailVerificationRequest);

module.exports = router;