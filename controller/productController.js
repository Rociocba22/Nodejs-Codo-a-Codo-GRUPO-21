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

const ObtenerProductosPorCategoria = (req, res) => {
    try {
        const sql = 'SELECT * FROM productos ORDER BY categoria';

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

const ObtenerVestidos = (req, res) => {
    try {
        const sql = "SELECT * FROM productos WHERE categoria IN ('vestidos')";

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

const ObtenerSudaderas = (req, res) => {
    try {
        const sql = "SELECT * FROM productos WHERE categoria IN ('sudaderas')";

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
const ObtenerPantalonesCortos = (req, res) => {
    try {
        const sql = "SELECT * FROM productos WHERE categoria IN ('pantalones cortos')";

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

const ObtenerPantalones = (req, res) => {
    try {
        const sql = "SELECT * FROM productos WHERE categoria IN ('pantalones')";

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

const ObtenerFaldas = (req, res) => {
    try {
        const sql = "SELECT * FROM productos WHERE categoria IN ('faldas')";

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

const ObtenerCamisetas = (req, res) => {
    try {
        const sql = "SELECT * FROM productos WHERE categoria IN ('camisetas')";

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

const ObtenerBlusas = (req, res) => {
    try {
        const sql = "SELECT * FROM productos WHERE categoria IN ('blusas')";

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

const ObtenerAbrigos = (req, res) => {
    try {
        const sql = "SELECT * FROM productos WHERE categoria IN ('abrigos')";

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
    ObtenerTodosLosProductos,
    ObtenerProductosPorCategoria,
    ObtenerVestidos,
    ObtenerSudaderas,
    ObtenerPantalonesCortos,
    ObtenerPantalones,
    ObtenerFaldas,
    ObtenerCamisetas,
    ObtenerBlusas,
    ObtenerAbrigos
}