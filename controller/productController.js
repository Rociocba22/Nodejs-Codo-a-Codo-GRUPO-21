const db = require('../db/db');

const ObtenerTodosLosProductos = (req, res) => {
    try {
        const sql = 'SELECT * FROM productos';

        db.query(sql, (err, result) => {
            if (err) throw err;

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

module.exports = {
    ObtenerTodosLosProductos 
}