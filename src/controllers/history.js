const historyModel = require("../models/history");
const form = require("../helpers/form");

module.exports = {
  histories: (_, res) => {
    historyModel
      .histories()
      .then(data => {
        form.success(res, data);
      })
      .catch(err => {
        form.error(res, err);
      })
  },
  postNewHistory: (req, res) => {
    const { body } = req;
    const insertBody = {
      ...body,
      transaction_date: new Date(Date.now()),
    };
    historyModel
      .postNewHistory(insertBody)
      .then(data => {
        const resObj = {
          data: {
            id: data.insertBody,
            ...insertBody,
          },
        };
        res.json(resObj);
      })
      .catch(err => {
        form.error(res, err);
      });
  }
}