const db = require("../configs/db");

module.exports = {
  histories: () => {
    return new Promise((resolve, reject) => {
      const queryString =
        "SELECT i.id, i.invoice_id AS 'Invoice Number', p.product_name AS 'Product Name', p.product_price AS 'Price', i.qty AS 'Quantity', (p.product_price * i.qty) AS 'Total' FROM invoice AS i, items AS p WHERE i.id = p.id";
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
      const queryString = "INSERT INTO invoice SET ?";
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