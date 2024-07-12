const express = require("express");
const router = express.Router();
const perfilController = require("../controller/perfilController");

router.get("/", perfilController.obtenerPerfil);

module.exports = router;
