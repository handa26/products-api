const productsModel = require("../models/products");
const form = require("../helpers/form");

module.exports = {
  // products: (req, res) => {
  //   const {sort} = req.query;
  //   let keyword = ["%" + sort + "%"];
  //   if (req.query.sort == 'desc') {
  //     keyword = "DESC";
  //   } else if (req.query.sort == "asc") {
  //     keyword = "ASC";
  //   } else {
  //     keyword = "ASC";
  //   }
  //   productsModel
  //     .products(keyword)
  //     .then((data) => form.success(res, data))
  //     .catch((err) => form.error(res, err));
  // },
  products: (req, res) => {
    const { query } = req;
    const limit = Number(query.limit) || 2;
    const page = Number(query.page) || 1;
    // limit  = 5
    // page   = 1 2 3  4
    // offset = 0 5 10 15
    // offset = (page-1)*limit
    const offset = (page - 1) * limit || 0;
    productsModel
      .products(limit, offset)
      .then((data) => {
        const newResult = {
          products: data,
          pageInfo: {
            currentPage: page,
            previousPage:
              page === 1 ? null : `/products?page=${page - 1}&limit=${limit}`,
            nextPage: `/products?page=${page + 1}&limit=${limit}`,
          },
        };
        res.json(newResult);
      })
      .catch((err) => form.error(res, err));
  },
  popularProducts: (_, res) => {
    productsModel
      .popularProducts()
      .then((data) => form.success(res, data))
      .catch((err) => form.error(res, err));
  },
};