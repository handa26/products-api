const router = require("express").Router();
const {multipleUpload} = require("../middlewares/upload");

router.post("/", multipleUpload, (req, res) => {
  req.files.forEach(e => {
    let images = "/images/" + e.filename;
    res.status(200).json({
      filePath: [images]
    });
  });
});

module.exports = router;