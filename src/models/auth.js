const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");
const db = require("../configs/db");

module.exports = {
  postNewUser: (body) => {
    return new Promise((resolve, reject) => {
      // * Generate a salt and hash on separate function calls
      /*
      TODO: Generate a salt, a random string that makes the hash unpredictable. 
      */
      const saltRounds = 10;
      bcrypt.genSalt(saltRounds, (err, salt) => {
        if (err) {
          reject(err);
        }
        bcrypt.hash(body.password, salt, (err, result) => {
          // TODO: Store hash in password DB
          if (err) {
            reject(err);
          }
          const newBody = {
            ...body,
            password: result,
          };
          const qs = "INSERT INTO users SET ?";

          db.query(qs, newBody, (err, data) => {
            console.log(data);
            if (!err) {
              resolve(data);
            } else {
              reject(err);
            }
          });
        });
      });
    })
  },
  postLogin: (body) => {
    return new Promise((resolve, reject) => {
      const { username, password } = body;
      const qs = "SELECT password, user_type FROM users WHERE username = ?";

      db.query(qs, username, (err, data) => {
        // * Handle error SQL
        if (err) {
          reject({
            msg: "Error SQL", 
            status: 500,
            err
          });
        }

        // * Handle user not found
        if (!data[0]) {
          reject({
            msg: "Hash Error",
            status: 500,
            err,
          });
        } else {
          bcrypt.compare(password, data[0].password, (err, result) => {
            if (err) {
              reject({
                msg: "Hash error",
                status: 500,
                err,
              });
            }
            if (!result) {
              reject({
                msg: "Wrong password",
                status: 401
              });
            } else {
              const payload = {
                username,
                type: data[0].user_type,
              };
              const secret = process.env.SECRET_KEY;
              const token = jwt.sign(payload, secret);
              resolve({ token });
            }
          })
        }

      })
    })
  }
}