require('dotenv').config();


const mySql = require('mysql2');

const connection = mySql.createConnection(
    {
        // host: 'localhost',
        // user: 'root',
        // password: 'root',
        // database: 'grupo21'
       

        host: process.env.DB_HOST,
        user: process.env.DB_USER,
        password: process.env.DB_PASSORD,
        database: process.env.DB_NAME

    });


connection.connect((err) => {
    if (err) {
        console.error("ERROR conectando a la base de datos", err);
        return;
    }

    console.log("Conectado EXITOSAMENTE a la base de datos");

});


module.exports = connection;

// const mySql = require('mysql2');

// const connection = mySql.createConnection(
//     {
//         host : 'localhost',
//         user: 'root',
//         password : 'root',
//         database: 'grupo21'
//     });


//     connection.connect((err) =>
//     {
//         if(err)
//         {
//             console.error("ERROR conectando a la base de datos", err);
//             return;
//         }

//         console.log("Conectado EXITOSAMENTE a la base de datos");

//     });


// module.exports = connection;

