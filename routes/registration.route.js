const express = require("express");
const { regRender, regPost } = require("../controllers/registration.controller");
const loginRouter = express.Router();
const upload = require("../config/multer.config");
const isLogged = require("../middlewares/isLogin");

loginRouter.get("/registration", isLogged, regRender);
loginRouter.post("/registration", upload.none(), regPost);

module.exports = loginRouter;