const authModel = require("../models/auth");
const jwt = require("jsonwebtoken");
const bcrypt = require("bcrypt");
const db = require("../configs/db");
const form = require("../helpers/form");

const maxAge = 3 * 24 * 60 * 60; // 3 days in seconds
module.exports = {
  register: (req, res) => {
    return new Promise((resolve, reject) => {
      const { email, password, user_type } = req.body;
      const saltRounds = 10;
      bcrypt.genSalt(saltRounds, (err, salt) => {
        if (err) {
          reject(err);
        }
        bcrypt.hash(password, salt, (err, hash) => {
          if (err) {
            reject(err);
          }
          const token = jwt.sign(email, process.env.SECRET_KEY);
          res.cookie("jwtCookies", token, {
            httpOnly: true,
            maxAge: maxAge * 1000,
          });
          const newBody = {
            email: email,
            password: hash,
            user_type: user_type,
          };
          const qs = "INSERT INTO users SET ?";

          db.query(qs, newBody, (err, data) => {
            console.log(newBody);
            if (!err) {
              resolve(
                form.success(res, {
                  msg: "Successfully register",
                  data: {
                    email: data,
                  },
                })
              );
            } else {
              reject(form.error(res, err));
            }
          });
        });
      });
    });
  },
  login: (req, res) => {
    const { body } = req;
    const token = jwt.sign(body.email, process.env.SECRET_KEY);
    res.cookie("jwtCookies", token, { httpOnly: true, maxAge: maxAge * 1000 });
    authModel
      .postLogin(body)
      .then((data) => form.success(res, data))
      .catch((err) => form.error(res, err));
  },
  logout: (_, res) => {
    // Delete cookie & user need login again
    // to get cookie
    res.cookie("jwtCookies", "", { maxAge: 1 });
    res.status(200).json({
      status: 200,
      msg: "Successfully logout",
    });
  },
  logoutToken: (req, res) => {
    const bearerToken = req.header("x-access-token");
    if (!bearerToken) {
      res.json({
        msg: `token null!`,
      });
    } else {
      blacklistToken = {
        token: bearerToken.split(" ")[1],
      };

      authModel
        .postLogout(blacklistToken)
        .then((result) => {
          form.success(res, result);
        })
        .catch((error) => {
          form.error(res, error);
        });
    }
  },
};
