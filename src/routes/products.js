const express = require("express");

const router = express.Router();
const productsController = require("../controllers/products");

// @desc    Show all products
// @route   GET /products?page={value}&limit={value}
router.get("/", productsController.products);

// @desc    Show all popular products
// @route   GET /popular?page={value}&limit={value}
router.get("/popular", productsController.popularProducts);

module.exports = router;