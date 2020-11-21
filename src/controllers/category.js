const categoryModel = require("../models/category");

module.exports = {
  searchByCategory: (req, res) => {
    const { c } = req.query;
    const keyword = `%${c}%`;
    categoryModel
      .searchByCategory(keyword)
      .then((data) => {
        res.json(data);
      })
      .catch((err) => {
        res.status(500).json(err);
      });
  },
};