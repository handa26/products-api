const db = require("../configs/db");

module.exports = {
  searchProduct: (keyword, sortBy, sort) => {
    return new Promise((resolve, reject) => {
      let qs = '';
      if (sortBy) {
        qs = `SELECT p.id, p.product_name, p.product_brand, p.product_description, p.product_price, c.category_name, p.product_color, p.size,p.product_rating, p.product_qty FROM items AS p JOIN categories AS c ON c.id = p.category_id WHERE p.product_name LIKE ? ORDER BY ${sortBy} ${sort}`
      } else {
        qs = 'SELECT p.id, p.product_name, p.product_brand, p.product_description, p.product_price, c.category_name, p.product_color, p.size,p.product_rating, p.product_qty FROM items AS p JOIN categories AS c ON c.id = p.category_id WHERE p.product_name LIKE ?'
      }

      db.query(qs, keyword, (err, data) => {
        if (!err) {
          resolve(data);
        } else {
          reject(err);
        }
      });
    });
  },
  searchByCategory: (keyword, sortBy, sort) => {
    return new Promise((resolve, reject) => {
      let qs = '';
      if (sortBy) {
        qs = `SELECT p.id, p.product_name, p.product_brand, p.product_description, p.product_price, c.category_name, p.product_color, p.size,p.product_rating, p.product_qty FROM items AS p JOIN categories AS c ON c.id = p.category_id WHERE c.category_name LIKE ? ORDER BY ${sortBy} ${sort}`;
      } else {
        qs =
          "SELECT p.id, p.product_name, p.product_brand, p.product_description, p.product_price, c.category_name, p.product_color, p.size,p.product_rating, p.product_qty FROM items AS p JOIN categories AS c ON c.id = p.category_id WHERE c.category_name LIKE ?";
      }

      db.query(qs, keyword, (err, data) => {
        if (!err) {
          resolve(data);
        } else {
          reject(err);
        }
      })
    });
  },
};
