const searchModel = require("../models/search");
const form = require("../helpers/form");

module.exports = {
  searchProduct: (req, res) => {
    const { q } = req.query;
    const keyword = `%${q}%`;
    searchModel
      .searchProduct(keyword)
      .then((data) => form.success(res, data))
      .catch((err) => form.error(res, err));
  },
  searchByCategory: (req, res) => {
    const { c } = req.query;
    const keyword = `%${c}%`;
    searchModel
      .searchByCategory(keyword)
      .then((data) => form.success(res, data))
      .catch((err) => form.error(res, err));
  },
};