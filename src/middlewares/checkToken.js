const jwt = require("jsonwebtoken");
const db = require("../configs/db");

const form = require("../helpers/form");

module.exports = {
  isLogin: (req, res, next) => {
    const bearerToken = req.header("x-access-token");
    if (!bearerToken) {
      form.error(res, {
        msg: "Please Login First",
        status: 401,
      });
    } else {
      // Bearer Token
      const token = bearerToken.split(" ")[1];
      return new Promise((resolve, reject) => {
        const qs = "SELECT token from blacklist_tokens WHERE token = ?";
        db.query(qs, token, (err, data) => {
          if (!err) {
            if (!data[0]) {
              resolve(token);
            } else {
              reject({
                msg: `Invalid Token`,
              });
            }
          } else {
            reject({
              msg: `Error SQL`,
            });
          }
        });
      })
      .then((token) => {
        try {
          const decodeToken = jwt.verify(token, process.env.SECRET_KEY);
          req.decodeToken = decodeToken;

          next();
        } catch (error) {
          form.error(res, {
            msg: "Invalid token",
            error,
            status: 401,
          });
        }
      })
      .catch((error) => {
        form.error(res, {
          error,
          msg: "Invalid Token"
        })
      })
    }
  },
};
