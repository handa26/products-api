const productsModel = require("../models/products");
const form = require("../helpers/form");

module.exports = {
  products: (req, res) => {
    const {sort} = req.query;
    let keyword = ["%" + sort + "%"];
    if (req.query.sort == 'desc') {
      keyword = "DESC";
    } else if (req.query.sort == "asc") {
      keyword = "ASC";
    } else {
      keyword = "ASC";
    }
    productsModel
      .products(keyword)
      .then((data) => form.success(res, data))
      .catch((err) => form.error(res, err));
  },
  newProducts: (_, res) => {
    productsModel
      .newProducts()
      .then(data => form.success(res, data))
      .catch(err => form.error(res, err))
  },
  popularProducts: (_, res) => {
    productsModel
      .popularProducts()
      .then(data => form.success(res, data))
      .catch(err => form.error(res, err));
  }
}