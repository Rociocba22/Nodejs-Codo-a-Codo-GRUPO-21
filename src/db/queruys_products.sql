use grupo21;




-- Crear la tabla productos con una clave foránea a la tabla categorias
CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10, 2) NOT NULL,
    id_categoria INT,
    imagen_url VARCHAR(255),
    talla VARCHAR(10),
    CONSTRAINT fk_categoria FOREIGN KEY (id_categoria) REFERENCES categorias(id)
);




INSERT INTO productos (nombre, descripcion, precio, id_categoria, imagen_url, talla) VALUES 
('Vestido largo estampado floral', 'Vestido largo con diseño floral y cinturón ajustable.', 59.99, '1', 'https://tequierofashion.com/cdn/shop/files/S335681f982dd4a0f9332b9a527d6bfa3C_540x.jpg?v=1690913846', 'M'),
('Blusa de seda sin mangas', 'Blusa elegante de seda con cuello redondo y detalles plisados.', 39.95, '2', 'https://www.dhresource.com/webp/m/0x0/f2/albu/g21/M00/D7/5D/rBNaOWC1u0WAbog9AACRttTznb4462.jpg', 'S'),
('Jeans skinny fit rasgados', 'Jeans ajustados con efecto desgastado y roturas.', 49.90, '3', 'https://cdn.baguer.co/uploads/2023/05/jean-para-mujer-skinny-con-proceso-rotos-barcelona-dakota-derek-azul-827958AZ.jpg_yjizfoKbMFUYnNfHgYC9x4Q4YJ4b58gePSuJTw8mdy2XiBgVmc.jpg', 'L'),
('Falda plisada de cuero sintético', 'Falda corta plisada con acabado de cuero sintético.', 34.99, '4', 'https://i.pinimg.com/564x/22/f9/e5/22f9e5808c9be28dea5d7cddbdb8cebe.jpg', 'XS'),
('Camiseta básica cuello redondo', 'Camiseta básica de algodón con cuello redondo.', 19.99, '5', 'https://i.pinimg.com/564x/ee/98/97/ee9897b10e2bb63b813c6c45b014852a.jpg', 'M'),
('Abrigo largo de lana', 'Abrigo largo de lana con solapa amplia y cinturón.', 129.95, '6', 'https://http2.mlstatic.com/D_NQ_NP_2X_966044-MLA76931564611_062024-F.webp', 'L'),
('Sudadera con capucha y estampado', 'Sudadera de algodón con capucha y diseño estampado.', 44.50, '7', 'https://i5.walmartimages.com.mx/mg/gm/3pp/asr/1959456b-fc4b-4f06-9252-fa9bb00df23a.173af3ef7388a14852bd9ec26477d585.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF', 'S'),
('Pantalones cortos de mezclilla', 'Shorts de mezclilla con dobladillo deshilachado.', 29.99, '8', 'https://i.pinimg.com/564x/17/2a/54/172a543aff6fbf6adcaa2e08d2c81de5.jpg', 'M'),
('Vestido de cóctel bordado', 'Vestido elegante de cóctel con bordados y ajuste ceñido.', 79.99, '1', 'https://www.2016vestido.com/cdn/shop/products/5ebbd7c5b1d0ca4e21840174806c6c90_1024x1024.png?v=1632797529', 'XS'),
('Blusa de encaje manga larga', 'Blusa de encaje con mangas largas y cuello alto.', 49.95, '2', 'https://i5.walmartimages.com.mx/mg/gm/3pp/asr/c36dd9cd-1d08-46e4-9aec-f7deb0d3116b.3932d984ed0414459b0c122c634e6815.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF', 'L'),
('Vaqueros rectos lavado oscuro', 'Jeans rectos de lavado oscuro y efecto entallado.', 54.90, '3', 'https://acdn.mitiendanube.com/stores/001/123/302/products/dsc_21731-68a14dd5b8982765ca16826032777590-1024-1024.webp', 'S'),
('Minifalda plisada estampada', 'Minifalda corta plisada con diseño estampado floral.', 24.99, '4', 'https://cdn-images.farfetch-contents.com/20/14/90/78/20149078_50419988_1000.jpg', 'M'),
('Top crop con estampado gráfico', 'Top corto con diseño gráfico y tirantes ajustables.', 14.99, '5', 'https://m.media-amazon.com/images/I/61quOtFEMPL._AC_SX679_.jpg', 'XS'),
('Gabardina ligera de primavera', 'Gabardina ligera ideal para la temporada de primavera.', 89.95, '6', 'https://ae01.alicdn.com/kf/S9d5fd6047b2547e3a246f04143e0e51fL/FEIZI-gabardina-blanca-de-longitud-media-para-mujer-chaqueta-ligera-de-lujo-y-temperamento-minimalista-primavera.jpg', 'M'),
('Jersey de punto cuello vuelto', 'Jersey de punto con cuello vuelto y tejido suave al tacto.', 39.50, '7', 'https://i.pinimg.com/564x/1b/23/b9/1b23b9e7c7f2fce232d896a44b547dd8.jpg', 'L'),
('Shorts de tela estampados', 'Shorts de tela ligera con estampado floral y cintura elástica.', 19.99, '8', 'https://pasionaria.com.ar/cdn/shop/products/image_1caceaee-ac94-4b98-b68c-0ace91811ed8.jpg?v=1702397159', 'S'),
('Vestido largo de noche', 'Vestido largo de noche con escote en V y detalle de pedrería.', 129.99, '1', 'https://m.media-amazon.com/images/I/51TSIH9aYqL._AC_UY1000_.jpg', 'M'),
('Blusa con lazo y mangas acampanadas', 'Blusa con lazo en el cuello y mangas acampanadas.', 34.95, '2', 'https://i.pinimg.com/564x/e7/cd/be/e7cdbea66621bfcb7e0f60e941c766e6.jpg', 'XS'),
('Pantalones cargo estilo militar', 'Pantalones cargo con múltiples bolsillos y diseño militar.', 59.90, '3', 'https://m.media-amazon.com/images/I/51IA+rglfvL._AC_SX679_.jpg', 'L'),
('Falda larga plisada de satén', 'Falda larga plisada con tejido de satén y cintura elástica.', 44.99, '4', 'https://m.media-amazon.com/images/I/710hz2ZS5uL._AC_SY879_.jpg', 'M'),
('Camiseta manga larga rayas', 'Camiseta de manga larga con rayas horizontales y cuello redondo.', 24.99, '5', 'https://i.pinimg.com/564x/85/d8/df/85d8dfd275b6ddb3f02caa3eac0a604b.jpg', 'S'),
('Chaqueta acolchada ligera', 'Chaqueta acolchada ligera con capucha desmontable.', 79.95, '6', 'https://media.maxport.es/product/chaqueta-acolchada-y-ligera-con-capucha-mujer-800x800_qGRRQN4.jpg', 'XS'),
('Sudadera cropped con logo', 'Sudadera corta con logo estampado y manga larga.', 29.50, '7', 'https://cdn-images.farfetch-contents.com/20/20/47/62/20204762_50604821_2048.jpg', 'M'),
('Shorts vaqueros desgastados', 'Shorts vaqueros desgastados con detalle de roturas.', 29.99, '8', 'https://fashionparadise.com.mx/wp-content/uploads/2023/06/13-1.jpg', 'L'),
('Vestido ajustado estilo sirena', 'Vestido ajustado con diseño estilo sirena y escote corazón.', 89.99, '1', 'https://www.nicolemilano.com/media/catalog/product/e/l/elowen_b.jpg?quality=80&bg-color=255,255,255&fit=bounds&height=&width=&canvas:', 'S'),
('Blusa de manga corta estampada', 'Blusa ligera de manga corta con estampado floral.', 29.95, '2', 'https://m.media-amazon.com/images/I/61UpxwWl1bL._AC_SX679_.jpg', 'M');