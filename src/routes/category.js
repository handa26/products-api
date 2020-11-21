const express = require("express");

const router = express.Router();
const categoryController = require("../controllers/category");

// req query
// localhost:3000/category?{query}
router.get("/", categoryController.searchByCategory);

module.exports = router;