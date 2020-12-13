const authModel = require("../models/auth");
const form = require("../helpers/form");
const {token} = require("morgan");

module.exports = {
  register: (req, res) => {
    const {body} = req;
    authModel
      .postNewUser(body)
      .then(() => {
        form.success(res, {
          status: 200,
          msg: "Successfully register",
          userData: {
            email: body.email,
          },
        });
      })
      .catch(err => form.error(res, err));
  },
  login: (req, res) => {
    const {body} = req;
    authModel
      .postLogin(body)
      .then(data => {
        console.log(data)
        form.success(res, data)
      })
      .catch(err => form.error(res, err));
  },
  logout: (req, res) => {
    const bearerToken = req.header("x-access-token");
    if (!bearerToken) {
      res.status(400).json({
        msg: "Token null",
      })
    } else {
      blacklistToken = {
        token: bearerToken.split(" ")[1]
      }

      authModel
        .postLogout(blacklistToken)
        .then(data => {
          res.status(200).json({
            msg: "Successfully logout"
          })
        })
        .catch(err => form.error(res, err));
    }
  }
}