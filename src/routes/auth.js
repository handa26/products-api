const express = require("express");

const router = express.Router();
const authController = require("../controllers/auth");
const verifyToken = require("../middlewares/checkToken");

router.post("/register", verifyToken.isRegistered, authController.register)
router.post("/login", authController.login);
router.post("/logout", authController.logout);

module.exports = router;