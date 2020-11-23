const express = require("express");

const router = express.Router();
const productController = require("../controllers/product");


// @desc    Show single product
// @route   GET /product/:id
router.get("/:id", productController.product);

// @desc    Update a product
// @route   PATCH /product/:id
router.patch("/:id", productController.updateProduct);

// @desc    Update a product
// @route   PATCH /product/:id
router.delete("/:id", productController.deleteProduct);

module.exports = router;