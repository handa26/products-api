const express = require("express");

const router = express.Router();
const addressController = require("../controllers/addresses");

// @desc    Show all products
// @route   GET /histories
router.get("/:id", addressController.addresses);

// @desc    Process add history
// @route   POST /histories
router.post("/", addressController.postAddress);

module.exports = router;
