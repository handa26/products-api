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
    const { body } = req;
    const insertBody = {
      ...body,
      image: req.filePath,
      created_at: new Date(Date.now()),
      updated_at: new Date(Date.now()),
    };
    const res_img = req.filePath.split(",");
    const insertNewBody = {
      ...insertBody,
      image: res_img
    }
    productModel
      .postNewProduct(insertNewBody)
      .then(data => {
        const resObj = {
          status: 200,
          data: {
            id: data.insertBody,
            ...insertBody,
          },
        };
        res.json(resObj);
      })
      .catch(err => form.error(res, err));
  },
  updateProduct: (req, res) => {
    const { id } = req.params;
    const { body } = req;
    const updateBody = { ...body, updated_at: new Date(Date.now()) };
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
