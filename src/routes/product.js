const express = require("express");

const router = express.Router();
const productController = require("../controllers/product");
const checkToken = require("../middlewares/checkToken");
const { requireAuth } = require("../middlewares/authMiddleware");
const { multipleUpload } = require("../middlewares/upload");


// @desc    Show single product
// @route   GET /product/:id
router.get("/:id", checkToken.isLogin, productController.product);

// @desc    Post a product
// @route   POST /product/:id
router.post("/", requireAuth, multipleUpload, productController.postNewProduct);

// @desc    Update a product
// @route   PATCH /product/:id
router.patch("/:id", requireAuth, productController.updateProduct);

// @desc    Update a product
// @route   DELETE /product/:id
router.delete("/:id", requireAuth, productController.deleteProduct);

module.exports = router;