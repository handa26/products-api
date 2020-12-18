const fs = require("fs");
const productModel = require("../models/product");
const form = require("../helpers/form");

module.exports = {
  product: (req, res) => {
    const { id } = req.params;
    productModel
      .product(id)
      .then((data) => {
        // form.success(res, data);
        if (data.length) {
          res.json(data[0]);
          // form.success(res, data[0]);
          // form.success(res, data);
          // res.json(data);
        } else {
          res.status(404).json({
            msg: "Data not found",
          });
        }
      })
      .catch((err) => {
        res.json(err.msg);
      });
  },
  postNewProduct: (req, res) => {
    const images = req.files.map((e) => process.env.DEVELOPMENT_BASEURL + "/images/" + e.filename)
    const ImgStr = images.toString();

    const { body } = req;
    const insertBody = {
      ...body,
      created_at: new Date(Date.now()),
      updated_at: new Date(Date.now()),
      image: ImgStr
    };
    productModel
      .postNewProduct(insertBody)
      .then((data) => {
        const resObject = {
          msg: "Data berhasil dimasukan",
          data: {id: data.insertId, ...insertBody}
        };
        res.status(200).json(resObject);
      })
      .catch(err => res.status(500).json(err));
  },
  updateProduct: (req, res) => {
    const { id } = req.params;
    const { body } = req;
    const images = req.files.map(
      (e) => process.env.DEVELOPMENT_BASEURL + "/images/" + e.filename
    );
    const ImgStr = images.toString();
    const updateBody = { 
      ...body, 
      updated_at: new Date(Date.now()),
      image: ImgStr,
     };
    const idBody = { id };
    productModel
      .updateProduct(updateBody, idBody)
      .then((data) => {
        const updateProducts = {
          msg: "Data berhasil diupdate",
          data: { id: data.updateId, updateBody },
        };
        res.json(updateProducts);
      })
      .catch((err) => form.error(res, err));
  },
  deleteProduct: (req, res) => {
    const { id } = req.params;
    console.log(req.pathFile);
    productModel
      .deleteProduct(id)
      .then(data => {
        const deleteProduct = {
          msg: "Successfully deleted",
          data: { id: data.updateId }
        }
        res.json(deleteProduct);
      })
      .catch(err => form.error(res, err));
  }
};
