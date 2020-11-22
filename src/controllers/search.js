const searchModel = require("../models/search");

module.exports = {
  searchProduct: (req, res) => {
    const { q } = req.query;
    const keyword = `%${q}%`;
    searchModel
      .searchProduct(keyword)
      .then((data) => {
        res.json(data);
      })
      .catch((err) => {
        res.status(500).json(err);
      });
  },
  searchByCategory: (req, res) => {
    const { c } = req.query;
    const keyword = `%${c}%`;
    searchModel
      .searchByCategory(keyword)
      .then((data) => {
        res.json(data);
      })
      .catch((err) => {
        res.status(500).json(err);
      });
  },
};