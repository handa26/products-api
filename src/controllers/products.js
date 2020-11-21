const productsModel = require("../models/products");

module.exports = {
  products: (_, res) => {
    productsModel
      .products()
      .then(data => {
        res.json(data);
      })
      .catch(err => {
        res.status(500).json(err);
      })
  },
  postNewProduct: (req, res) => {
    const { body } = req;
    const insertBody = {
      ...body,
      created_at: new Date(Date.now()),
      updated_at: new Date(Date.now()),
    };
    productsModel
      .postNewProduct(insertBody)
      .then(data => {
        const resObj = {
          data: {
            id: data.insertBody,
            ...insertBody
          }
        }
        res.json(resObj);
      })
      .catch(err => {
        res.status(500).json(err);
      })
  }
}