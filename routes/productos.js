const express = require('express');
const router = express.Router();
const productController = require('../controller/productController');


//RUTAS PARAMETRIZADAS: Obtengo el parametro id y lo uso en la función que está en userController.js
router.get('/', productController.ObtenerTodosLosProductos);


module.exports = router;