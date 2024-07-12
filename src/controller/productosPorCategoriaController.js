const db = require("../db/db");

// Obtener productos por categoría usando promesas
const obtenerProductosPorCategoria = (req, res) => {
  const { idCategoria } = req.params;

  const sql = "SELECT * FROM productos WHERE id_categoria = ?";


  db.query(sql, [idCategoria], (err, result) => {
    if (err) {
      //  console.error(`Error al obtener el producto con ID ${id}:`, err);
      return res.status(500).json({
        message: `Error al obtener el producto con ID ${idCategoria}.`,
        // message: `Error al obtener todos los productos.`,

        error: err.message,
      });
    }

    if (result.length === 0) {
      return res.status(404).json({
        message: `No se encontró ningún producto con ID_CATEGORIA ${idCategoria}.`,
      });
    }

    res.json(result);
  });
};

module.exports = {
  obtenerProductosPorCategoria,
};


