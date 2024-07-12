

use grupo21;


CREATE TABLE categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);


 
-- Crear las categorías si aún no existen                                                           
INSERT INTO categorias (nombreCategoria) VALUES ('Vestidos'), ('blusas'), ('pantalones'), ('faldas'), ('camisetas'), ('abrigos'), ('sudaderas'), ('pantalones cortos');




select * from categorias;




//ojo con el truncate que borra los datos ,aunque no_ la tabla 

//truncate table categorias;