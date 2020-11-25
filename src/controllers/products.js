const productsModel = require("../models/products");
const form = require("../helpers/form");

module.exports = {
  products: (_, res) => {
    productsModel
      .products()
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