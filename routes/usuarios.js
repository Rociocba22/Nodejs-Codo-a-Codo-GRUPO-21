//ENRUTADOR: Característica de Express que permite crear manejadores de rutas modulares y montables.
//Podemos reutilizar esas rutas y queda un código mas limpio. 

const express = require('express');
const router = express.Router();
const userController = require('../controller/userController');

router.get('/',userController.ObtenerTodosLosUsuarios);
router.get('/:id',userController.ObtenerUsuarioPorID);
router.post('/',userController.crearUsuario);
router.put('/:id',userController.ActualizarUsuario);
router.get('/:id',userController.BorrarUsuario);


module.exports = router;