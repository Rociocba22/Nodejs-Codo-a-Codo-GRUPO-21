/*--------SERVIDOR ESTATICO CON EXPRESS-------*/
const express = require('express');
const app = express(); 

let puerto = 3000; //también se puede usar el 8080

app.use(express.static('public')); 

app.listen(puerto, ()=>{
    console.log(`Servidor express ejecutándose en el ${puerto}`);
});

app.get("/index.html",(req,res)=>{
    res.sendFile(__dirname+'/public/index.html#section4')//para acceder directamente a la sección formulario
});


//COMANDOS PARA INSTALAR NODE y EXPRESS
// npm init -y
//npm install express --save

// COMANDO para instalar NODEMON: npm install -D nodemon
//COMANDO PARA ACTIVARLO: node --watch index.js                 

