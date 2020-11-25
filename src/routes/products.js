const express = require("express");

const router = express.Router();
const productsController = require("../controllers/products");

// @desc    Show all products
// @route   GET /products
router.get("/", productsController.products);

// @desc    Show all popular products
// @route   GET /popular
router.get("/popular", productsController.popularProducts);

// @desc    Show all popular products
// @route   GET /new
router.get("/new", productsController.newProducts);

module.exports = router;