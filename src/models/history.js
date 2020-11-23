const db = require("../configs/db");

module.exports = {
  histories: () => {
    return new Promise((resolve, reject) => {
      const queryString =
        "SELECT p.id, p.product_name, p.product_brand, p.product_price, c.category_name, p.product_color, p.size, p.product_qty, p.transaction_date FROM histories AS p JOIN categories AS c ON c.id = p.category_id";
      db.query(queryString, (err, data) => {
        if (!err) {
          resolve(data);
        } else {
          reject(err);
        }
      });
    });
  },
  postNewHistory: (insertBody) => {
    return new Promise((resolve, reject) => {
      const queryString = "INSERT INTO histories SET ?";
      db.query(queryString, insertBody, (err, data) => {
        if (!err) {
          resolve(data);
        } else {
          reject(err);
        }
      });
    })
  }
}