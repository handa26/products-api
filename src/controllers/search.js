const searchModel = require("../models/search");
const form = require("../helpers/form");


module.exports = {
  searchProduct: (req, res) => {
    const { name, category, sort } = req.query;
    const keyword = ["%" + name + "%", "%" + sort + "%", "%" + category + "%"];
    let {sortby} = req.query;
    const searchName = `%${name}%`;
    const searchCategory = `%${category}%`;
    if (sortby === "name") {
      sortby = "product_name";
    } else if (sortby === "latest") {
      sortby = "created_at";
    }

    
    if (name !== undefined && category !== undefined) {
      res.status(500).json({
        status: "error",
        message: "u cant find more column at a same time",
      });
    } else {
      if (name) {
        searchModel
          .searchProduct(searchName, sortby, sort)
          .then((data) => {
            form.success(res, data);
          })
          .catch((err) => {
            form.error(res, err);
          });
      }

      if (category) {
        searchModel
          .searchByCategory(searchCategory, sortby, sort)
          .then((data) => {
            form.success(res, data);
            console.log(searchCategory);
          })
          .catch((err) => {
            form.error(res, err);
          });
      }
    }
  },
  // searchByCategory: (req, res) => {
  //   const { c } = req.query;
  //   const keyword = `%${c}%`;
  //   searchModel
  //     .searchByCategory(keyword)
  //     .then((data) => form.success(res, data))
  //     .catch((err) => form.error(res, err));
  // },
};