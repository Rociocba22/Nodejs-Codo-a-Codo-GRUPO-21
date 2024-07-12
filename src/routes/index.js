const express = require("express");
const app = express();
const authMiddleware = require("../middleware/authMiddleware");
const usuariosRouter = require("./usuarios");
const productosRouter = require("./productos");
const categoriasProductos = require("./categorias");
const productosXcategorias = require("./productosPorCategoria");
const contactoRouter = require("./contacto");
const loginRouter = require("./auth/login");
const perfilRouter = require("./perfil");
const logoutRouter = require("./auth/logoutSession");

app.use("/categorias", categoriasProductos);
app.use("/productos", productosRouter);
app.use("/productosXcategoria", productosXcategorias);
app.use("/contactos", contactoRouter);

//authentication
//usuario con (nombre ,apellido, telefono,docmicilio,email,contrasena)
app.use("/usuarios", usuariosRouter);
// utiliza los datos de usuario email y constrasena para inicar sesion
app.use("/iniciarSesion", loginRouter);

app.use("/cerrarSesion", logoutRouter);
//perfil
app.use("/perfil", authMiddleware.authMiddleware, perfilRouter);

// ==============Rutas protegidas solo para administradores========================0

/**
 * 
 * router.get("/admin", authMiddleware.adminMiddleware, (req, res) => {
  res.json({ message: "Bienvenido al dashboard de administrador" });
});
 * 
 */
module.exports = app;
