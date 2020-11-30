const searchModel = require("../models/search");
const form = require("../helpers/form");


module.exports = {
  searchProduct: (req, res) => {
    const { q, c } = req.query;
    const keyword = ["%" + q + "%", "%" + c + "%"];
    searchModel
      .searchProduct(keyword)
      .then((data) => {
        data.length
          ? form.success(res, data)
          : res.status(404).json({ msg: "Data not Found" });
        // res.json(data);
      })
      .catch((err) => {
        form.error(res, err);
        // res.status(500).json(err);
      });
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