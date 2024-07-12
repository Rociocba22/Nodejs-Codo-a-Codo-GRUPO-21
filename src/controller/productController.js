const db = require('../db/db');

const obtenerTodosLosProductos = (req, res) => {
    try {
        const sql = 'SELECT * FROM productos';

        db.query(sql, (err, result) => {
            if (err) {
              console.error("Error al obtener todos los productos:", err);
              return res.status(500).json({
                message: "Error al obtener todos los productos.",
                error: err.message,
              });
            }
        
            res.json(result);
          });

    } catch (error) {

        console.error(error);
        //return res.status(500).json(error.message);
        return res.status(500).json({
            message: error.message,
        });
    }
}

const obtenerProductoPorId = (req, res) => {
    const { id } = req.params;
    const sql = "SELECT * FROM productos WHERE id = ?";
  
    db.query(sql, [id], (err, result) => {
      if (err) {
        console.error(`Error al obtener el producto con ID ${id}:`, err);
        return res.status(500).json({
          message: `Error al obtener el producto con ID ${id}.`,
          error: err.message,
        });
      }
  
      if (result.length === 0) {
        return res.status(404).json({
          message: `No se encontró ningún producto con ID ${id}.`,
        });
      }
  
      res.json(result[0]);
    });
  };

  const crearProducto = (req, res) => {
    const { id_categoria, nombre, descripcion, categoria, precio, talla, imagen_url } = req.body;
    const sql =
      "INSERT INTO productos (id_categoria, nombre, descripcion, categoria, precio, talla, imagen_url) VALUES (?, ?, ?, ?, ?, ?, ?)";
  
    db.query(
      sql,
      [id_categoria, nombre, descripcion, categoria, precio, talla, imagen_url],
      (err, result) => {
        if (err) {
          console.error("Error al crear un nuevo producto:", err);
          return res.status(500).json({
            message: "Error al crear un nuevo producto.",
            error: err.message,
          });
        }
  
        res.json({
          message: "Producto creado exitosamente.",
          nuevo_producto: {
            id: result.insertId,
            id_categoria, 
            nombre, 
            descripcion,
            categoria, 
            precio, 
            talla, 
            imagen_url
          },
        });
      }
    );
  };

  const actualizarProducto = (req, res) => {
    const { id } = req.params;
    const { id_categoria, nombre, descripcion, categoria, precio, talla, imagen_url } = req.body;
    const sql =
      "UPDATE productos SET id_categoria = ?, nombre = ?, descripcion = ?, categoria = ?, precio = ?, talla = ?, imagen_url = ? WHERE id = ?";
  
    db.query(
      sql,
      [id_categoria, nombre, descripcion, categoria, precio, talla, imagen_url],
      (err, result) => {
        if (err) {
          console.error(`Error al actualizar el producto con ID ${id}:`, err);
          return res.status(500).json({
            message: `Error al actualizar el producto con ID ${id}.`,
            error: err.message,
          });
        }
  
        if (result.affectedRows === 0) {
          return res.status(404).json({
            message: `No se encontró ningún producto con ID ${id}.`,
          });
        }
  
        res.json({
          message: `Producto con ID ${id} actualizado exitosamente.`,
          producto_actualizado: {
            id,
            id_categoria,
            nombre,
            descripcion,
            categoria,
            precio,
            talla,
            imagen_url
          },
        });
      }
    );
  };

  const eliminarProducto = (req, res) => {
    const { id } = req.params;
    const sql = "DELETE FROM productos WHERE id = ?";
  
    db.query(sql, [id], (err, result) => {
      if (err) {
        console.error(`Error al eliminar el producto con ID ${id}:`, err);
        return res.status(500).json({
          message: `Error al eliminar el producto con ID ${id}.`,
          error: err.message,
        });
      }
  
      if (result.affectedRows === 0) {
        return res.status(404).json({
          message: `No se encontró ningún producto con ID ${id}.`,
        });
      }
  
      res.json({
        message: `Producto con ID ${id} eliminado exitosamente.`,
        affectedRows: result.affectedRows,
      });
    });
  };


  module.exports = {
    obtenerTodosLosProductos,
    obtenerProductoPorId,
    crearProducto,
    actualizarProducto,
    eliminarProducto,
  };