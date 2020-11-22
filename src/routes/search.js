const express = require("express");

const router = express.Router();
const searchController = require("../controllers/search");

// req query
// localhost:3000/search?{query}
router.get("/",searchController.searchProduct);
router.get("/category", searchController.searchByCategory);

module.exports = router;