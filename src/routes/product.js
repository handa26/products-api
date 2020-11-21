const express = require("express");

const router = express.Router();
const productController = require("../controllers/product");


// @desc    Show single product
// @route   GET /product/:id
router.get("/:id", productController.product);

module.exports = router;