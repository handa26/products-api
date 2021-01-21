const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");
const db = require("../configs/db");

module.exports = {
  postNewUser: (body) => {
    return new Promise((resolve, reject) => {
      // * Generate a salt and hash on separate function calls
      /*
      * Generate a salt, a random string that makes the hash unpredictable. 
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
    });
  },
  postLogin: (body) => {
    return new Promise((resolve, reject) => {
      const { email, password } = body;
      const qs =
        "SELECT users.id, users.name, users.email, users.password, types.type FROM users JOIN types ON types.id = users.user_type WHERE email = ?";

      db.query(qs, email, (err, data) => {
        // * Handle error SQL
        if (err) {
          reject({
            msg: "Error SQL",
            status: 500,
            err,
          });
        }

        // * Handle email not found
        if (!data[0]) {
          reject({
            msg: "Email not registered yet",
            status: 500,
            err,
          });
        } else {
          // Comparing password
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
                status: 401,
              });
            } else {
              const payload = {
                // id: data[0].id,
                email,
                // type: data[0].type,
              };
              const secret = process.env.SECRET_KEY;
              const token = jwt.sign(payload, secret);
              resolve({ token, id: data[0].id, type: data[0].type, email: data[0].email, name: data[0].name});
            }
          });
        }
      });
    });
  },
  postLogout: (blacklistToken) => {
    return new Promise((resolve, reject) => {
      const qs = "INSERT INTO blacklist_tokens SET ?";
      db.query(qs, blacklistToken, (err, data) => {
       if (!err) {
         resolve({
           data,
           msg: "Successfully Logout.",
         });
       } else {
         reject({
           err,
           msg: "Logout failed",
         });
       }
      });
    });
  },
};
// Backup 
// "SELECT id, email, password, user_type FROM users WHERE email = ?";
