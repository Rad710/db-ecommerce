INSERT INTO `user` (Fname,Lname,country,state,city,street,zip_code,phone,email,pssword) VALUES
('Linda','Golden','US','Wisconsin','West Allis','4075 Fairfield Road','53227','414 280 8564','neva_lind1992@yahoo.com','Oy3ugh8w'),
('Marjorie','Hester','US','Nebraska','Omaha','4223 Commerce Boulevard','68114','402 579 4604','angie_col4@gmail.com','Mah1Cai7guc'),
('Joshua','Dillon','US','New York','Moravia','2103 Buckhannan Avenue','13118','315 497 6699','jackeline2008@hotmail.com','dahK8ahsh0ae'),
('Harlan','Thompson','US','New Jersey','Merchantville','2130 Watson Street','08109','908 471 8957','marcelino2015@gmail.com','wee4Quugai'),
('Anna','Hawkins','US','Washington','Seattle','1847 Union Street','98118','206 954 5506','seth1988@yahoo.com','shooV1oph3'),
('Mary','Madden','US','Michigan','Troy','93 Cherry Ridge Drive','48083',' 248 840 3945','amber.gerla@hotmail.com','zaiX1phee'),
('Colleen','Talbot','US','Tennessee','Powell','533 Arlington Avenue','37849','731 206 4228','lincoln1970@yahoo.com','Uofai4meev'),
('Elizabeth','Harrington','US','Pennsylvania','Philadelphia','2882 Pheasant Ridge Road','19146','267 226 1734','melvina1996@hotmail.com','up1oaK0bae'),
('Patricia','Yopp','US','Texas','Amarillo','4214 Hilltop Drive','79109','806 206 7696','napoleon.hirt@hotmail.com','quiWae9sho'),
('Allen','Bachman','US','Florida','Saint Petersburg','1063 Mill Street','33716','727 627 0652','rebeka_kin8@gmail.com','oquahKah2ie');

INSERT INTO product(Pname, Price, Pdesc, weight, dimension, Vid, inventory) VALUE
('Apple iPhone 13', '829.00', "iPhone 13. The most advanced dual-camera system ever on iPhone. Lightning-fast A15 Bionic chip. A big leap in battery life. Durable design. Superfast 5G.1 And a brighter Super Retina XDR display.
Key Features

6.1-inch Super Retina XDR display2

Cinematic mode adds shallow depth of field and shifts focus automatically in your videos

Advanced dual-camera system with 12MP Wide and Ultra Wide cameras; Photographic Styles; Smart HDR 4; Night mode; and 4K Dolby Vision HDR recording

12MP TrueDepth front camera with Night mode and 4K Dolby Vision HDR recording

A15 Bionic chip for lightning-fast performance

Up to 19 hours of video playback3

Durable design with Ceramic Shield

Industry-leading IP68 water resistance4

5G for superfast downloads and high-quality streaming1

iOS 15 packs new features to do more with iPhone than ever before5

Supports MagSafe accessories for easy attachment and faster wireless charging", 174, "146.7mmx1.5mmx7.65mm", 1, 20
);

INSERT INTO has_image(Pid, Pimage) VALUES
(1, LOAD_FILE('C:/images/000001_1641362387.jpg')),
(1, LOAD_FILE('C:/images/61ecgBYOAJL._FMwebp__.jpg')),
(1, LOAD_FILE('C:/images/61paF2JiudL._FMwebp__.jpg')),
(1, LOAD_FILE('C:/images/71uNkgYrWcL._FMwebp__.jpg')),
(1, LOAD_FILE('C:/images/817WqZsxjWL._FMwebp__.jpg')),
(1, LOAD_FILE('C:/images/81146KBQCJL._FMwebp__.jpg'));



INSERT INTO category(Pid, Cname) VALUES
(1, 'phone');


INSERT INTO product(Pname, Price, Pdesc, weight, dimension, Vid, inventory) VALUE
('Samsung Galaxy S22', '1267.00', "Para la generación Z, el video no es solo video. Lo piensan como un estilo de vida, un lenguaje universal para cómo aprenden, crecen, expresan, hablan, compran, conectan, crean y luchan contra el aburrimiento con sus amigos en tiempo real. Es por eso que exigen un teléfono que finalmente rompe todas las reglas del video y hace que su día a día sea más épico que nunca. Presentamos el Samsung Galaxy S22 Ultra, los nuevos y brillantes smartphones diseñados específicamente para romper las reglas de video para satisfacer las necesidades del idioma nativo de la generación Z; video. Con esta nueva máquina de video, estamos estableciendo un nuevo estándar épico. Ahora, puedes comunicarte con tus amigos en línea mientras ves simultáneamente los últimos videos de YouTube. **** Graba tus mejores noches con impresionantes videos con poca luz como nunca antes. Captura los verdaderos colores y contrastes de fiestas nocturnas que no se podían representar correctamente antes. Y por fin puedes devorar videos bajo la luz solar directa con una pantalla tan brillante que nunca más tendrás que preocuparte por los reflejos en la playa. Galaxy S22 Ultra redefine el estándar épico, tanto por lo que un smartphone puede hacer con los videos como por lo que puedes comunicarte, crear y experimentar con él. En otras palabras, si tienes algo que decir, Galaxy S22 Ultra te permite decir lo que quieras con el video, en cualquier momento, incluso en la oscuridad de la noche. *Admite video Full HD con hasta 60 fps. **Basado en la duración media de la batería en condiciones de uso habituales. Rendimiento promedio previsto basado en el uso típico. La duración real de la batería depende de factores como la red, las funciones seleccionadas, la frecuencia de llamadas y la voz, los datos y otros patrones de uso de la aplicación. ***El cargador de pared se vende por separado; utiliza solo cargadores y cables aprobados por Samsung. Para evitar lesiones o daños en tu dispositivo, no utilices baterías, cargadores o cables incompatibles, desgastados o dañados. Soporta carga de 45 W. ****Requiere que todos los participantes tengan dispositivos Galaxy S22 con sistema operativo Android 12.", 174, "146.7mmx1.5mmx7.65mm", 2, 3
);

INSERT INTO has_image(Pid, Pimage) VALUES
(2, LOAD_FILE('C:/images/61ey7V6Mm6L._AC_SX679_.jpg')),
(2, LOAD_FILE('C:/images/71p1SFyK6RL._AC_SX679_.jpg')),
(2, LOAD_FILE('C:/images/614itpWQNsL._AC_SX679_.jpg')),
(2, LOAD_FILE('C:/images/81Die2p0AuL._AC_SX679_.jpg')),
(2, LOAD_FILE('C:/images/61gk9vywWkL._AC_SX679_.jpg'));


INSERT INTO category(Pid, Cname) VALUES
(2, 'phone');


INSERT INTO product(Pname, Price, Pdesc, weight, dimension, Vid, inventory) VALUE
('MSI Creator M16', '1599.99', "MSI Creator M16 16\" 16x10 60Hz QHD+ Creación de contenido Laptop Intel Core i7-12650H RTX3060 32GB 1TB NVMe SSD Win11 Home", "8.68 pounds", "‎20.5 x 13.3 x 4 inches", 4, 22
);

INSERT INTO has_image(Pid, Pimage) VALUES
(3, LOAD_FILE('C:/images/71l6BGKDgvL._AC_SX679_.jpg')),
(3, LOAD_FILE('C:/images/610N6lCS3vL._AC_SX679_.jpg')),
(3, LOAD_FILE('C:/images/51bIV1GvcPL._AC_SX679_.jpg')),
(3, LOAD_FILE('C:/images/61IgT30a0sL._AC_SX679_.jpg')),
(3, LOAD_FILE('C:/images/71ylBTWaQrL._AC_SX679_.jpg')),
(3, LOAD_FILE('C:/images/51TeDzJl57L._AC_SX679_.jpg'));


INSERT INTO category(Pid, Cname) VALUES
(3, 'laptop');



INSERT INTO shopping_cart (Uid, Pid, quantity) 
VALUES (4, 2, 2);

INSERT INTO `order` (Uid, Vid, Pid, quantity)
VALUES (5, 1, 1, 1);


