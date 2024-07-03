require('dotenv').config();


const mySql = require('mysql2');

const connection = mySql.createConnection(
    {   /*
        host : 'localhost',
        user: 'root',
        password : 'root',
        database: 'grupo21'
        */

        /* host : process.env.DB_Host ,
        user: process.env.DB_Usuario,
        password : process.env.DB_Password,
        database: process.env.DB_Name */

    });


    connection.connect((err) => 
    {
        if(err)
        {
            console.error("ERROR conectando a la base de datos", err);
            return;
        }

        console.log("Conectado EXITOSAMENTE a la base de datos");

    });


module.exports = connection;

