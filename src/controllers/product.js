const productModel = require("../models/product");

module.exports = {
  product: (req, res) => {
    const { id } = req.params;
    productModel
      .product(id)
      .then((data) => {
        if (data.length) {
          res.json(data);
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
      .catch((err) => {
        res.status(500).json(err);
      });
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
      .catch(err => {
        res.json(err)
      })
  }
};
