const addressModel = require('../models/addresses');
const form = require("../helpers/form");

module.exports = {
  addresses: (req, res) => {
    const { id } = req.params;
    addressModel
      .addresses(id)
      .then((data) => {
        form.success(res, data);
      })
      .catch((err) => {
        form.error(res, err);
      });
  },
  postAddress: (req, res) => {
    const { body } = req;
    const insertBody = {
      ...body,
    };
    addressModel
      .postAddress(insertBody)
      .then((data) => {
        const resObj = {
          data: {
            ...insertBody,
          },
        };
        res.json(resObj);
      })
      .catch((err) => {
        form.error(res, err);
      });
  }
}