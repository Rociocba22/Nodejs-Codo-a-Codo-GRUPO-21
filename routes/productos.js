const express = require('express');
const router = express.Router();
const productController = require('../controller/productController');


//RUTAS PARAMETRIZADAS: Obtengo el parametro id y lo uso en la función que está en userController.js
router.get('/', productController.ObtenerTodosLosProductos);




// router.get('/', productController.ObtenerProductosPorCategoria);
// router.get('/', productController.ObtenerVestidos);
// router.get('/', productController.ObtenerSudaderas);
// router.get('/', productController.ObtenerPantalonesCortos);
// router.get('/', productController.ObtenerPantalones);
// router.get('/', productController.ObtenerFaldas);
// router.get('/', productController.ObtenerCamisetas);
// router.get('/', productController.ObtenerBlusas);
// router.get('/', productController.ObtenerAbrigos);












module.exports = router;