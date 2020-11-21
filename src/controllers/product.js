const express = require("express")
const productModel = require("../models/product");

module.exports = {
  product: (req, res) => {
    const { id } = req.params;
    productModel
      .product(id)
      .then(data => {
        if (data.length) {
          res.json(data);
        } else {
          res.status(404).json({
            msg: "Data not found",
          });
        }
      })
      .catch(err => {
        res.json(err.msg);
      })
  }
}