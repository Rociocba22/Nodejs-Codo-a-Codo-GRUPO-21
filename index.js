const app = require("./src/app.js");

//let puerto = 3000; //también se puede usar el 8080 y el 3001
const puerto = process.env.puerto || 3000;
app.listen(puerto, () => {
  console.log(`Servidor express ejecutándose en el ${puerto}`);
});



// const app = require("./src/app.js");

// //let puerto = 3000; //también se puede usar el 8080 y el 3001
// const PORT = process.env.PORT || 3000;
// app.listen(PORT, () => {
//   console.log(`Servidor express ejecutándose en el  http://localhost:${PORT}`);
// });


// // const express = require("express"); app
// const app = express();
// const authMiddleware = require("../middleware/authMiddleware");
// const usuariosRouter = require("./users");
// const productosRouter = require("./products");
// const categoriasProductos = require("./category");
// const productosXcategorias = require("./productsByCategory");
// const contactoRouter = require("./contact");
// const loginRouter = require("./auth/login");
// const perfilRouter = require("./profile");
// const logoutRouter = require("./auth/logoutSesion");

// app.use("/categorias", categoriasProductos);
// app.use("/productos", productosRouter);
// app.use("/productosXcategoria", productosXcategorias);
// app.use("/contactos", contactoRouter);

// //authentication
// //usuario con (nombre ,apellido, telefono,docmicilio,email,contrasena)
// app.use("/usuarios", usuariosRouter);
// // utiliza los datos de usuario email y constrasena para inicar sesion
// app.use("/iniciarSesion", loginRouter);

// app.use("/cerrarSesion", logoutRouter);
// //perfil
// app.use("/perfil", authMiddleware.authMiddleware, perfilRouter);

// // ==============Rutas protegidas solo para administradores========================0

// /**
//  * 
//  * router.get("/admin", authMiddleware.adminMiddleware, (req, res) => {
//   res.json({ message: "Bienvenido al dashboard de administrador" });
// });
//  * 
//  */
// module.exports = app;