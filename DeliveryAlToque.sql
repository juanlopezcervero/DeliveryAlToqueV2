--
-- TOC entry 1974 (class 0 OID 0)
-- Dependencies: 161
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: datoque
--

SELECT pg_catalog.setval('hibernate_sequence', 326, true);


--
-- Usuarios
--

INSERT INTO authority (id, version, authority) VALUES (42, 0, 'ROLE_ADMIN');
INSERT INTO person (id, version, account_expired, account_locked, enabled, password, password_expired, username) VALUES (43, 0, false, false, true, '72ab994fa2eb426c051ef59cad617750bfe06d7cf6311285ff79c19c32afd236', false, 'admin');
INSERT INTO person_authority (authority_id, person_id) VALUES (42, 43);




--
-- Negocios
--

INSERT INTO negocio (id, version, color_texto, color_titulo, email, identificacion, layout, nombre, pais, tipo_identificacion, tag_virtual_habilitado) VALUES (258, 4, NULL, NULL, 'winespecials@deliveryaltoque.com', '', 'custom', 'Wine Specials', '', '',true);
INSERT INTO negocio (id, version, color_texto, color_titulo, email, identificacion, layout, nombre, pais, tipo_identificacion, tag_virtual_habilitado) VALUES (45, 18, '#CCBBAA', '#AABBCC', 'hector.d.franco@gmail.com', '23-2343244-3', 'custom', 'Pizza Party', 'Argentina', 'CUIL',true);
INSERT INTO negocio (id, version, color_texto, color_titulo, email, identificacion, layout, nombre, pais, tipo_identificacion, tag_virtual_habilitado) VALUES (260, 4, NULL, NULL, 'sushistation@deliveryaltoque.com', '', 'custom', 'Sushi Station', '', '',true);
INSERT INTO negocio (id, version, color_texto, color_titulo, email, identificacion, layout, nombre, pais, tipo_identificacion, tag_virtual_habilitado) VALUES (247, 6, 'Black', 'Black', 'allnaturalfood@deliveryaltoque.com', '23-18321933-9', 'custom', 'All Natural Food', 'Argentina', 'CUIT',true);
INSERT INTO negocio (id, version, color_texto, color_titulo, email, identificacion, layout, nombre, pais, tipo_identificacion, tag_virtual_habilitado) VALUES (262, 4, NULL, NULL, 'gelateriavenezia@deliveryaltoque.com', '', 'custom', 'Gelateria Venezia', '', '',true);
INSERT INTO negocio (id, version, color_texto, color_titulo, email, identificacion, layout, nombre, pais, tipo_identificacion, tag_virtual_habilitado) VALUES (264, 4, NULL, NULL, 'mex@deliveryaltoque.com', '', 'custom', 'Mex', '', '',true);
INSERT INTO negocio (id, version, color_texto, color_titulo, email, identificacion, layout, nombre, pais, tipo_identificacion, tag_virtual_habilitado) VALUES (266, 4, NULL, NULL, 'pizzaservice@deliveryaltoque.com', '', 'custom', 'Pizza Service', '', '',true);
INSERT INTO negocio (id, version, color_texto, color_titulo, email, identificacion, layout, nombre, pais, tipo_identificacion, tag_virtual_habilitado) VALUES (61, 69, '#CCBBAA', '#AABBCC', 'rntokuda@hotmail.com', '23-23002244-3', 'custom', 'Bella Gelateria', 'Argentina', 'CUIL',true);
INSERT INTO negocio (id, version, color_texto, color_titulo, email, identificacion, layout, nombre, pais, tipo_identificacion, tag_virtual_habilitado) VALUES (254, 4, NULL, NULL, 'mychina@deliveryaltoque.com', '', 'custom', 'MyChina', '', '',true);
INSERT INTO negocio (id, version, color_texto, color_titulo, email, identificacion, layout, nombre, pais, tipo_identificacion, tag_virtual_habilitado) VALUES (256, 4, NULL, NULL, 'takeawaymovies@deliveryaltoque.com', '', 'custom', 'Takeaway Movies', '', '',true);
INSERT INTO negocio (id, version, color_texto, color_titulo, email, identificacion, layout, nombre, pais, tipo_identificacion, tag_virtual_habilitado) VALUES (250, 5, NULL, NULL, 'pills2@deliveryaltoque.com', '', 'custom', 'Pills', '', '',true);

--
-- Cartas
-- 

INSERT INTO carta (id, version, aprobado, lenguaje, moneda, negocio_id, pais, cartas_idx) VALUES (312, 1, 1, 'ES', 'USD', 258, 'Argentina',0);
INSERT INTO carta (id, version, aprobado, lenguaje, moneda, negocio_id, pais, cartas_idx) VALUES (313, 1, 1, 'ES', 'USD', 45, 'Argentina',0);
INSERT INTO carta (id, version, aprobado, lenguaje, moneda, negocio_id, pais, cartas_idx) VALUES (314, 1, 1, 'ES', 'USD', 260, 'Argentina',0);
INSERT INTO carta (id, version, aprobado, lenguaje, moneda, negocio_id, pais, cartas_idx) VALUES (315, 1, 1, 'ES', 'USD', 247, 'Argentina',0);
INSERT INTO carta (id, version, aprobado, lenguaje, moneda, negocio_id, pais, cartas_idx) VALUES (316, 1, 1, 'ES', 'USD', 262, 'Argentina',0);
INSERT INTO carta (id, version, aprobado, lenguaje, moneda, negocio_id, pais, cartas_idx) VALUES (317, 1, 1, 'ES', 'USD', 264, 'Argentina',0);
INSERT INTO carta (id, version, aprobado, lenguaje, moneda, negocio_id, pais, cartas_idx) VALUES (318, 1, 1, 'ES', 'USD', 266, 'Argentina',0);
INSERT INTO carta (id, version, aprobado, lenguaje, moneda, negocio_id, pais, cartas_idx) VALUES (319, 1, 1, 'ES', 'USD', 61, 'Argentina',0);
INSERT INTO carta (id, version, aprobado, lenguaje, moneda, negocio_id, pais, cartas_idx) VALUES (320, 1, 1, 'ES', 'USD', 254, 'Argentina',0);
INSERT INTO carta (id, version, aprobado, lenguaje, moneda, negocio_id, pais, cartas_idx) VALUES (321, 1, 1, 'ES', 'USD', 256, 'Argentina',0);
INSERT INTO carta (id, version, aprobado, lenguaje, moneda, negocio_id, pais, cartas_idx) VALUES (322, 1, 1, 'ES', 'USD', 250, 'Argentina',0);
--
-- TOC entry 1954 (class 0 OID 17086)
-- Dependencies: 163
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: datoque
--

INSERT INTO categoria (id, version, color, carta_id, nombre, visible, categorias_idx) VALUES (63, 25, '#CCBBAA', 319, 'Cremas', false, 1);
INSERT INTO categoria (id, version, color, carta_id, nombre, visible, categorias_idx) VALUES (50, 35, '#AD84A1', 313, 'Topping', false, 2);
INSERT INTO categoria (id, version, color, carta_id, nombre, visible, categorias_idx) VALUES (77, 5, '', 319, 'Frutas', false, 2);
INSERT INTO categoria (id, version, color, carta_id, nombre, visible, categorias_idx) VALUES (48, 22, '#F29E60', 313, 'Pizzas', true, 0);
INSERT INTO categoria (id, version, color, carta_id, nombre, visible, categorias_idx) VALUES (62, 8, '#AABBCC', 319, 'Helado', true, 0);
INSERT INTO categoria (id, version, color, carta_id, nombre, visible, categorias_idx) VALUES (49, 21, '#F29E60', 313, 'Chef''s', false, 1);




--
-- TOC entry 1955 (class 0 OID 17094)
-- Dependencies: 164
-- Data for Name: item; Type: TABLE DATA; Schema: public; Owner: datoque
--

INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (118, 0, 49, '10', 'Mozzarella, Anchovies, Black Olives and Parmesan Cheese', '', '', true, NULL, 'Special Anchovies', '', true, NULL, false, false, false, 8);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (91, 0, 63, '14', '', '', '', true, NULL, 'Vanilla', '', true, NULL, false, false, false, 13);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (119, 0, 49, '11', 'Mozzarella & Bacon Filaments', '', '', true, NULL, 'Bacon', '', true, NULL, false, false, false, 9);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (92, 0, 63, '15', '', '', '', true, NULL, 'Swiss Cream', '', true, NULL, false, false, false, 14);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (120, 0, 49, '12', 'Mozzarella, Bacon and Basil leaves', '', '', true, NULL, 'Bacon & Basil', '', true, NULL, false, false, false, 10);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (64, 2, 48, '100', '8 slices + Chef''s Topping', '', '', true, NULL, 'Chef''s Giant', '', false, '15.0', false, false, false, 3);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (66, 2, 48, '102', '4 slices + Chef''s Topping', '', '', true, NULL, 'Chef''s Regular', '', false, '7.50', false, false, false, 5);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (65, 2, 48, '101', '6 slices + Chef''s Topping', '', '', true, NULL, 'Chef''s Big', '', false, '10.0', false, false, false, 4);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (68, 3, 48, '201', '6 slices + 2 Topping', '', '', true, NULL, 'Double Big', '', false, '8.0', false, false, false, 7);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (70, 4, 48, '300', '8 slices + 3 Topping', '', '', true, NULL, 'Triple Giant', '', false, '18.0', false, false, false, 9);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (67, 3, 48, '200', '8 slices + 2 Topping', '', '', true, NULL, 'Double Giant', '', false, '12.0', false, false, false, 6);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (74, 4, 62, '200', '', '', '', true, NULL, '1/2 Kilo', '', false, '3.0', true, false, false, 1);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (72, 4, 48, '302', '4 slices + 3 Topping', '', '', true, NULL, 'Triple Regular', '', false, '10.0', false, false, false, 11);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (71, 4, 48, '301', '6 slices + 3 Topping', '', '', true, NULL, 'Triple Big', '', false, '12.0', false, false, false, 10);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (93, 0, 63, '17', '', '', '', true, NULL, 'Caramel', '', true, NULL, false, false, false, 15);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (83, 1, 63, '22', 'with natural caramel chocolate chips ', '', '', true, NULL, 'Banana Split', '', true, NULL, false, false, false, 5);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (121, 0, 49, '13', 'Mozzarella, Blue Cheese, Provolone Cheese, Parmesan Cheese', '', '', true, NULL, 'Four Cheeses', '', true, NULL, false, false, false, 11);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (122, 0, 49, '14', 'with Mozzarella and Prosciutto', '', '', true, NULL, 'Filled Fugazzeta', '', true, NULL, false, false, false, 12);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (78, 0, 63, '1', 'Passion fruit cream and cream cheese', '', '', true, NULL, 'Passion Fruit Cheescake', '', true, NULL, false, false, false, 0);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (79, 0, 63, '2', '', '', '', true, NULL, 'Coco with Caramel', '', true, NULL, false, false, false, 1);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (80, 0, 63, '3', '', '', '', true, NULL, 'Irish Cream', '', true, NULL, false, false, false, 2);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (81, 0, 63, '4', '', '', '', true, NULL, 'American Cream', '', true, NULL, false, false, false, 3);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (82, 0, 63, '5', '', '', '', true, NULL, 'Banana', '', true, NULL, false, false, false, 4);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (84, 0, 63, '6', '', '', '', true, NULL, 'Strawberrie Cream', '', true, NULL, false, false, false, 6);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (85, 1, 63, '7', 'Cream, Raspberries, Currant, Cassis, Strawberries & Blackberries', '', '', true, NULL, 'Berries', '', true, NULL, false, false, false, 7);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (86, 0, 63, '9', '', '', '', true, NULL, 'Mousse of Berries', '', true, NULL, false, false, false, 8);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (87, 0, 63, '10', '', '', '', true, NULL, 'Blueberry Cream with Macerated Blueberries', '', true, NULL, false, false, false, 9);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (88, 0, 63, '11', '', '', '', true, NULL, 'Lemon Mousse', '', true, NULL, false, false, false, 10);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (89, 0, 63, '12', '', '', '', true, NULL, 'Passion Fruit Mousse', '', true, NULL, false, false, false, 11);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (90, 0, 63, '13', '', '', '', true, NULL, 'Sambayon', '', true, NULL, false, false, false, 12);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (96, 0, 63, '8', '', '', '', true, NULL, 'Chocolate Snow', '', true, NULL, false, false, false, 16);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (123, 0, 50, '1', '', '', '', true, NULL, 'Mozzarella', '', true, NULL, false, false, false, 0);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (124, 0, 50, '2', '', '', '', true, NULL, 'Oregano', '', true, NULL, false, false, false, 1);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (76, 2, 62, '100', '', '', '', true, NULL, 'Small Cone', '', false, '1.50', true, false, false, 3);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (125, 0, 50, '3', '', '', '', true, NULL, 'Ham', '', true, NULL, false, false, false, 2);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (73, 6, 62, '300', '', '', '', true, NULL, '1 Kilo', '', false, '6.0', true, false, false, 0);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (106, 0, 77, '1', '', '', '', true, NULL, 'Pineapple', '', true, NULL, false, false, false, 0);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (107, 0, 77, '2', '', '', '', true, NULL, 'Raspberry', '', true, NULL, false, false, false, 1);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (108, 0, 77, '3', '', '', '', true, NULL, 'Strawberry', '', true, NULL, false, false, false, 2);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (109, 0, 77, '4', '', '', '', true, NULL, 'Lemon', '', true, NULL, false, false, false, 3);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (110, 0, 49, '1', 'Mozzarella & Oregano', '', '', true, NULL, 'Mozzarella', '', true, NULL, false, false, false, 0);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (111, 0, 49, '2', 'Mozzarella and Ham', '', '', true, NULL, 'Ham', '', true, NULL, false, false, false, 1);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (112, 0, 49, '3', 'Mozzarella, Arugula Leaves & Dried Tomatoes', '', '', true, NULL, 'Special Arugula', '', true, NULL, false, false, false, 2);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (113, 0, 49, '4', 'Mozzarella & Fresh Tomato Slices', '', '', true, NULL, 'Neapolitan', '', true, NULL, false, false, false, 3);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (114, 0, 49, '6', 'Mozzarella & Blue Cheese', '', '', true, NULL, 'Roquefort', '', true, NULL, false, false, false, 4);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (115, 0, 49, '7', 'Mozzarella & Provolone Cheese', '', '', true, NULL, 'Provolone', '', true, NULL, false, false, false, 5);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (116, 0, 49, '8', 'Mozzarella & Sausage Slices', '', '', true, NULL, 'Calabrese', '', true, NULL, false, false, false, 6);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (117, 0, 49, '9', 'Mozzarella covered with crushed Onion', '', '', true, NULL, 'Fugazzetta', '', true, NULL, false, false, false, 7);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (126, 0, 50, '4', '', '', '', true, NULL, 'Argula Leaves', '', true, NULL, false, false, false, 3);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (127, 0, 50, '5', '', '', '', true, NULL, 'Dried Tomatoes', '', true, NULL, false, false, false, 4);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (128, 0, 50, '6', '', '', '', true, NULL, 'Fresh Tomato Slices', '', true, NULL, false, false, false, 5);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (129, 0, 50, '7', '', '', '', true, NULL, 'Blue Cheese', '', true, NULL, false, false, false, 6);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (130, 0, 50, '8', '', '', '', true, NULL, 'Provolone Cheese', '', true, NULL, false, false, false, 7);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (131, 0, 50, '9', '', '', '', true, NULL, 'Sausage Slices', '', true, NULL, false, false, false, 8);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (132, 0, 50, '10', '', '', '', true, NULL, 'Hearts of Palms', '', true, NULL, false, false, false, 9);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (133, 0, 50, '11', '', '', '', true, NULL, 'Onion', '', true, NULL, false, false, false, 10);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (134, 0, 50, '12', '', '', '', true, NULL, 'Black Olives', '', true, NULL, false, false, false, 11);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (135, 0, 50, '13', '', '', '', true, NULL, 'Parmesan Cheese', '', true, NULL, false, false, false, 12);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (136, 0, 50, '14', '', '', '', true, NULL, 'Bacon Filaments', '', true, NULL, false, false, false, 13);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (137, 0, 50, '15', '', '', '', true, NULL, 'Basil Leaves', '', true, NULL, false, false, false, 14);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (138, 0, 50, '16', '', '', '', true, NULL, 'Iberian Ham', '', true, NULL, false, false, false, 15);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (139, 0, 50, '17', '', '', '', true, NULL, 'Sliced Pineapple', '', true, NULL, false, false, false, 16);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (140, 0, 50, '18', '', '', '', true, NULL, 'Garlics', '', true, NULL, false, false, false, 17);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (75, 3, 62, '201', '', '', '', true, NULL, 'Big Cone', '', false, '2.50', true, false, false, 2);
INSERT INTO item (id, version, categoria_id, codigo, descripcion, descripcion_alternativa, descripcion_auxiliar, imagen, medida, nombre, nombre_alternativo, not_incremental, precio, show_image_on_category, show_image_on_order, show_price, items_idx) VALUES (69, 3, 48, '202', '4 slices + 2 Topping', '', '', true, NULL, 'Double Regular', '', false, '5.0', false, false, false, 8);



-- TOC entry 1960 (class 0 OID 17141)
-- Dependencies: 169
-- Data for Name: seleccion; Type: TABLE DATA; Schema: public; Owner: datoque
--

INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (154, 0, 50, 69, 1, 'Select taste', 1, 10, 0);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (155, 0, 50, 69, 1, 'Select taste', 1, 11, 1);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (156, 0, 50, 72, 1, 'Select taste', 1, 12, 0);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (97, 0, 63, 73, 1, 'Select flavor', 1, 0, 0);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (98, 0, 63, 73, 1, 'Select flavor', 1, 1, 1);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (157, 0, 50, 72, 1, 'Select taste', 1, 13, 1);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (158, 0, 50, 72, 1, 'Select taste', 1, 14, 2);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (100, 0, 63, 74, 1, 'Select flavor', 1, 3, 0);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (101, 0, 63, 74, 1, 'Select flavor', 1, 4, 1);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (102, 0, 63, 75, 1, 'Select flavor', 1, 5, 0);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (159, 0, 48, 70, 99, '', 1, 0, 3);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (103, 0, 63, 75, 1, 'Select flavor', 1, 6, 1);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (104, 0, 63, 76, 1, 'Select flavor', 1, 7, 0);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (105, 0, 77, 73, 1, 'Select fruit', 1, 0, 2);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (160, 0, 48, 67, 99, '', 1, 1, 2);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (141, 0, 49, 64, 1, 'Select type', 1, 0, 0);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (142, 0, 49, 66, 1, 'Select type', 1, 1, 0);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (143, 0, 49, 65, 1, 'Select type', 1, 2, 0);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (161, 0, 48, 72, 99, '', 1, 2, 3);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (144, 0, 50, 70, 1, 'Select taste', 1, 0, 0);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (145, 0, 50, 70, 1, 'Select taste', 1, 1, 1);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (146, 0, 50, 70, 1, 'Select taste', 1, 2, 2);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (162, 0, 48, 71, 99, '', 1, 3, 3);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (147, 0, 50, 67, 1, 'Select taste', 1, 3, 0);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (148, 0, 50, 67, 1, 'Select taste', 1, 4, 1);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (149, 0, 50, 68, 1, 'Select taste', 1, 5, 0);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (163, 0, 48, 69, 99, '', 1, 4, 2);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (150, 0, 50, 68, 1, 'Select taste', 1, 6, 1);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (151, 0, 50, 71, 1, 'Select taste', 1, 7, 0);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (152, 0, 50, 71, 1, 'Select taste', 1, 8, 1);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (164, 0, 48, 64, 99, '', 1, 5, 1);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (153, 0, 50, 71, 1, 'Select taste', 1, 9, 2);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (165, 0, 48, 66, 99, '', 1, 6, 1);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (166, 0, 48, 65, 99, '', 1, 7, 1);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (167, 0, 48, 68, 99, '', 1, 8, 2);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (168, 0, 62, 74, 99, '', 1, 0, 2);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (169, 0, 62, 75, 99, '', 1, 1, 2);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (170, 0, 62, 76, 99, '', 1, 2, 1);
INSERT INTO seleccion (id, version, categoria_id, item_seleccionador_id, maximo, message_on_empty, minimo, selecciones_idx, seleccionables_idx) VALUES (171, 0, 62, 73, 99, '', 1, 3, 3);



--
-- TOC entry 1961 (class 0 OID 17146)
-- Dependencies: 170
-- Data for Name: sucursal; Type: TABLE DATA; Schema: public; Owner: datoque
--

INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (303, 0, 'España 1621, Olivos', -34.5270798401801997, -58.4933725752350995, 264, 'Sucursal Guadalajara', '4764-5311', true, 1, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (287, 0, 'España 1633, Olivos', -34.5270798401801997, -58.4933725752350995, 260, 'Nigiri 2', '47645324', true, 1, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (286, 1, 'J.B.Alberdi 954', -34.5082278675283973, -58.4851079596847967, 260, 'Nigiri 1', '47642142', false, 0, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (288, 0, 'Esmeralda 1743, Vicente Lopez', -34.5208031459904987, -58.4894004334806965, 260, 'Nigiri 3', '4764-1439', true, 2, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (289, 0, 'Rastreador Fournier 2340', -34.5208965562854999, -58.4966791148576988, 260, 'Nigiri 4', '4764-8874', true, 3, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (290, 0, 'Ramon M. Castro 1948', -34.5082278675283973, -58.497301774916501, 247, 'Sucursal 1', '47649232', true, 0, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (291, 0, 'Maipú 1132, Olivos', -34.5270798401801997, -58.4818104395364031, 247, 'Sucursal 2', '4764-9090', true, 1, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (292, 0, 'J.M.Paz 2163, Olivos', -34.5208031459904987, -58.4964388627180014, 247, 'Sucursal 3', '4764-2419', true, 2, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (293, 1, 'Vergara y Libertador, Olivos', -34.5208965562854999, -58.4742177521857016, 247, 'La Semolina', '4764-8040', false, 3, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (268, 0, 'Jose Manuel Estrada 3145', -34.5047170816378994, -58.4908786451323977, 254, 'Sucursal 1 Estrada', '47942215', true, 0, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (269, 0, 'Pelliza 529, Olivos, Vicente Lopez', -34.5047170816378994, -58.482528515720702, 254, 'Sucursal 2 Pelliza', '47943121', false, 1, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (270, 0, 'Rioja 2814, Local 6. Olivos', -34.5058569242817015, -58.4849958099473, 254, 'Sucursal 3 Galeria Puentes', '47941103', true, 2, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (271, 0, 'Rioja 2643, Olivos, Vicente Lopez', -34.5077822987481966, -58.4836406672849023, 254, 'Sucursal 4, Rioja', '47941103', false, 3, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (272, 0, 'Roma 653', -34.5026761082315971, -58.4851079596847967, 256, 'Apocalipsis now', '47640932', true, 0, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (273, 0, 'Quintana y Entre Rios, Olivos', -34.514260995174098, -58.4933725752350995, 256, 'Duro de matar', '47941854', true, 1, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (274, 0, 'Cordoba 2635, Olivos', -34.5108464047301027, -58.4894004334806965, 256, 'Robocop', '47648123', true, 2, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (275, 0, 'Nicolas Avellanda 2973, Local 11, Olivos', -34.5118017964651997, -58.4966791148576988, 256, 'La Naranja Mecanica', '47946134', false, 3, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (276, 0, 'Ramon M Castro 1914', -34.5082278675283973, -58.497301774916501, 250, 'Sucursal 1', '47945521', false, 0, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (277, 0, 'Maipu 1124, Olivos', -34.5270798401801997, -58.4818104395364031, 250, 'Sucursal 2', '47946421', true, 1, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (278, 0, 'Gral Jose Maria Paz 2154, Olivos', -34.5208031459904987, -58.4964388627180014, 250, 'Sucursal 3', '47943214', false, 2, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (279, 0, 'Gdor Valentin Vegara 643, Vicente Lopez', -34.5208965562854999, -58.4742177521857016, 250, 'Sucursal 4', '47949021', false, 3, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (280, 0, 'Jose M Estrada 3174, Vicente Lopez', -34.5047170816378994, -58.4908786451323977, 258, 'Jorge Paredes', '4794-0319', true, 0, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (281, 0, 'Pelliza 563, Vicente Lopez', -34.5047170816378994, -58.482528515720702, 258, 'Pedro Galves', '47943219', true, 1, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (282, 0, 'Rioja 2873, Galeria Burghese, Olivos', -34.5058569242817015, -58.4849958099473, 258, 'Ho Yo Choe', '47945543', true, 2, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (283, 1, 'Rioja 2674', -34.5077822987481966, -58.4836406672849023, 258, 'Carlos Amarilla', '47943219', true, 3, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (284, 0, 'Carlos Gardel 1644, Vicente Lopez', -34.5026761082315971, -58.497301774916501, 45, 'Sucursal Gardel', '47645223', true, 2, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (285, 0, 'Villate y Wineberg, Olivos', -34.514260995174098, -58.4818104395364031, 45, 'Sucursal Villate', '47647432', true, 3, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (46, 11, 'Hilarion de la Quintana 3078, Local 14', -34.5108464047301027, -58.4964388627180014, 45, 'Sucursal Quintana', '47640982', true, 0, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (47, 7, 'Malaver y Juan Diaz de Solis, Vicente Lopez', -34.5118017964651997, -58.4742177521857016, 45, 'Sucursal Malaver', '47641353', true, 1, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (295, 0, 'Malaver 902, Olivos', -34.5163609951750985, -58.4818205395369972, 61, 'Sucursal 2', '4764-5532', true, 1, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (296, 0, 'Hilarión de la Quintana 3055, Olivos', -34.5108464047331012, -58.4964388627180014, 61, 'Sucursal 3', '4764-8877', true, 2, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (297, 0, 'Libertador 2154, Olivos', -34.5118017964662016, -58.4742177521857016, 61, 'Sucursal 4', '4764-2210', true, 3, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (298, 0, 'J.M.Estrada 2154, Olivos', -34.5047170816378994, -58.4908786451323977, 262, 'Sucursal Estrada', '4764-3215', true, 0, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (299, 0, 'Pelliza 652, Olivos', -34.5047170816378994, -58.4835285157206997, 262, 'Sucursal Pelliza 1', '4764-8892', true, 1, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (304, 0, 'Esmeralda 1748, Olivos', -34.5208031459904987, -58.4894004334806965, 264, 'Sucursal Acapulco', '4764-2910', true, 2, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (301, 1, 'Rioja 2633, Olivos', -34.5077822987481966, -58.4836406672849023, 262, 'Sucursal Rioja 2', '4764-1109', false, 3, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (300, 1, 'Rioja 2873, Olivos', -34.5058569242817015, -58.4849958099473, 262, 'Sucursal Rioja 1', '4764-0913', false, 2, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (302, 0, 'Alberdi 902', -34.5082278675283973, -58.4851079596847967, 264, 'Sucursal Chihuaha', '4764-9175', true, 0, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (305, 0, 'Fournier 2343, Olivos', -34.5208965562854999, -58.4966791148576988, 264, 'Sucursal Yukatán', '4764-0990', true, 3, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (306, 0, 'J.M.Estrada 3144, Olivos', -34.5047170816378994, -58.4908786451323977, 266, 'Sucursal No. 1', '4764-7002', true, 0, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (307, 0, 'Malaver 1133, Olivos', -34.5169170816378994, -58.4832851572069998, 266, 'Sucursal No.2', '4764-5556', true, 1, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (308, 0, 'Rioja 2828, Olivos', -34.5058569242817015, -58.4849958099473, 266, 'Sucursal No.3', '4764-3332', true, 2, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (309, 0, 'Rioja 2683, Olivos', -34.5077822987481966, -58.4836406672849023, 266, 'Sucursal No. 4', '4764-3454', true, 3, 'juanlopezcervero@gmail.com', 'Argentina', 2000);
INSERT INTO sucursal (id, version, direccion, latitud, longitud, negocio_id, nombre, telefono, tiene_tag, sucursales_idx, email, pais, radio_de_cobertura) VALUES (294, 2, 'Carlos Gardel 1670, Olivos', -34.502676108232599, -58.497301774916501, 61, 'Sucursal 1', '4764-2235', true, 0, 'juanlopezcervero@gmail.com', 'Argentina', 2000);


--
-- TOC entry 1964 (class 0 OID 17221)
-- Dependencies: 173
-- Data for Name: ultima_modificacion; Type: TABLE DATA; Schema: public; Owner: datoque
--

INSERT INTO ultima_modificacion (id, version, date_created, last_updated, negocio_id, version_number) VALUES (183, 0, '2013-07-10 11:45:26.44', '2013-07-10 11:45:26.44', 45, 1);
INSERT INTO ultima_modificacion (id, version, date_created, last_updated, negocio_id, version_number) VALUES (184, 0, '2013-07-10 11:45:26.613', '2013-07-10 11:45:26.613', 61, 1);
INSERT INTO ultima_modificacion (id, version, date_created, last_updated, negocio_id, version_number) VALUES (248, 0, '2013-07-18 01:38:50.87', '2013-07-18 01:38:50.87', 247, 1);
INSERT INTO ultima_modificacion (id, version, date_created, last_updated, negocio_id, version_number) VALUES (251, 0, '2013-07-19 22:13:09.602', '2013-07-19 22:13:09.602', 250, 1);
INSERT INTO ultima_modificacion (id, version, date_created, last_updated, negocio_id, version_number) VALUES (255, 0, '2013-07-31 15:23:10.098', '2013-07-31 15:23:10.098', 254, 1);
INSERT INTO ultima_modificacion (id, version, date_created, last_updated, negocio_id, version_number) VALUES (257, 0, '2013-07-31 15:23:56.256', '2013-07-31 15:23:56.256', 256, 1);
INSERT INTO ultima_modificacion (id, version, date_created, last_updated, negocio_id, version_number) VALUES (259, 0, '2013-07-31 15:24:32.2', '2013-07-31 15:24:32.2', 258, 1);
INSERT INTO ultima_modificacion (id, version, date_created, last_updated, negocio_id, version_number) VALUES (261, 0, '2013-07-31 15:25:11.642', '2013-07-31 15:25:11.642', 260, 1);
INSERT INTO ultima_modificacion (id, version, date_created, last_updated, negocio_id, version_number) VALUES (263, 0, '2013-07-31 15:26:34.513', '2013-07-31 15:26:34.513', 262, 1);
INSERT INTO ultima_modificacion (id, version, date_created, last_updated, negocio_id, version_number) VALUES (265, 0, '2013-07-31 15:27:24.977', '2013-07-31 15:27:24.977', 264, 1);
INSERT INTO ultima_modificacion (id, version, date_created, last_updated, negocio_id, version_number) VALUES (267, 0, '2013-07-31 15:28:00.871', '2013-07-31 15:28:00.871', 266, 1);





--
-- TOC entry 1965 (class 0 OID 17269)
-- Dependencies: 174
-- Data for Name: pedido; Type: TABLE DATA; Schema: public; Owner: datoque
--


INSERT INTO pedido (id, version, altura, calle, cliente_paga_con, comentarios, date_created, descripcion, dpto_oficina, email, estado, fecha_prevista_entrega, id_usuario, idioma, last_updated, leyenda_adicional, sucursal_id, nombre_usuario, nombre_vivienda, pais_codigo_tel, piso, precio_total, provincia, tag_id, telefono, tipo_domicilio, vuelto, pedidos_sucursal_idx, pedidos_del_tag_idx, cerrado) VALUES (226, 0, '1453', 'Belgrano', 6, '', '2013-07-16 19:13:27.981', '<ul><li><span style=''background-color: #000; color: #fff; font-size: 10px;''>300</span> 1 x 1 Kilo</li>
<ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>2</span> Raspberry</li>
<ul></ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>22</span> Banana Split</li>
<ul></ul></ul></ul>
', 'D', 'rntokuda@hotmail.com', 'P', 'N/A', 'E0B97039AC950957D3B78BF5C64E378553CA48D8', 'ES-AR', '2013-07-16 19:13:27.981', 'N/A', 294, 'Juan Perez', 'N/A', '54', '5', 6, 'Buenos Aires', NULL, '31158910', 'Depto', 0, 0, NULL, false);
INSERT INTO pedido (id, version, altura, calle, cliente_paga_con, comentarios, date_created, descripcion, dpto_oficina, email, estado, fecha_prevista_entrega, id_usuario, idioma, last_updated, leyenda_adicional, sucursal_id, nombre_usuario, nombre_vivienda, pais_codigo_tel, piso, precio_total, provincia, tag_id, telefono, tipo_domicilio, vuelto, pedidos_sucursal_idx, pedidos_del_tag_idx, cerrado) VALUES (234, 0, 'N/A', 'san martin 343', 9, '', '2013-07-16 23:27:25.176', '<ul><li><span style=''background-color: #000; color: #fff; font-size: 10px;''>200</span> 3 x 1/2 Kilo</li>
<ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>3</span> Strawberry</li>
<ul></ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>22</span> Banana Split</li>
<ul></ul></ul></ul>
', 'N/A', 'jouk@bhfhj', 'P', 'N/A', 'E0B97039AC950957D3B78BF5C64E378553CA48D8', 'ES-AR', '2013-07-16 23:27:25.176', 'N/A', 294, 'jose perez', 'N/A', '54', 'N/A', 9, 'Buenos Aires', NULL, '5605655', 'Depto', 0, 2, NULL, false);
INSERT INTO pedido (id, version, altura, calle, cliente_paga_con, comentarios, date_created, descripcion, dpto_oficina, email, estado, fecha_prevista_entrega, id_usuario, idioma, last_updated, leyenda_adicional, sucursal_id, nombre_usuario, nombre_vivienda, pais_codigo_tel, piso, precio_total, provincia, tag_id, telefono, tipo_domicilio, vuelto, pedidos_sucursal_idx, pedidos_del_tag_idx, cerrado) VALUES (233, 1, 'N/A', 'san martin 343', 46, '', '2013-07-16 23:25:53.694', '<ul><li><span style=''background-color: #000; color: #fff; font-size: 10px;''>101</span> 1 x Chef''s Big</li><ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>4</span> Argula Leaves</li><ul></ul></ul></ul><ul><li><span style=''background-color: #000; color: #fff; font-size: 10px;''>200</span> 3 x Double Giant</li><ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>2</span> Ham</li><ul></ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>8</span> Provolone Cheese</li><ul></ul></ul></ul>', 'N/A', 'jouk@bhfhj', 'R', 'N/A', 'E0B97039AC950957D3B78BF5C64E378553CA48D8', 'ES-AR', '2013-07-17 05:21:41.388', 'N/A', 284, 'jose perez', 'N/A', '54', 'N/A', 46, 'Buenos Aires', NULL, '5605655', 'Depto', 0, 0, NULL, false);
INSERT INTO pedido (id, version, altura, calle, cliente_paga_con, comentarios, date_created, descripcion, dpto_oficina, email, estado, fecha_prevista_entrega, id_usuario, idioma, last_updated, leyenda_adicional, sucursal_id, nombre_usuario, nombre_vivienda, pais_codigo_tel, piso, precio_total, provincia, tag_id, telefono, tipo_domicilio, vuelto, pedidos_sucursal_idx, pedidos_del_tag_idx, cerrado) VALUES (235, 6, 'N/A', 'san martin 536', 3, '', '2013-07-16 23:54:23.811', '<ul><li><span style=''background-color: #000; color: #fff; font-size: 10px;''>200</span> 1 x 1/2 Kilo</li>
<ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>5</span> Banana</li>
<ul></ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>22</span> Banana Split</li>
<ul></ul></ul></ul>
', 'N/A', 'pp@bgjgh.com', 'W', 'N/A', 'E0B97039AC950957D3B78BF5C64E378553CA48D8', 'ES-AR', '2013-07-16 23:56:50.918', 'N/A', 294, 'pedro', 'N/A', '54', 'N/A', 3, 'Buenos Aires', NULL, '58746638', 'Depto', 0, 3, NULL, false);
INSERT INTO pedido (id, version, altura, calle, cliente_paga_con, comentarios, date_created, descripcion, dpto_oficina, email, estado, fecha_prevista_entrega, id_usuario, idioma, last_updated, leyenda_adicional, sucursal_id, nombre_usuario, nombre_vivienda, pais_codigo_tel, piso, precio_total, provincia, tag_id, telefono, tipo_domicilio, vuelto, pedidos_sucursal_idx, pedidos_del_tag_idx, cerrado) VALUES (252, 3, 'N/A', 'Corrientes 542
3ero A
', 32, '', '2013-07-27 15:24:18.328', '<ul><li><span style=''background-color: #000; color: #fff; font-size: 10px;''>101</span> 2 x Chef''s Big</li>
<ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>3</span> Special Arugula</li>
<ul></ul></ul></ul>
<ul><li><span style=''background-color: #000; color: #fff; font-size: 10px;''>200</span> 1 x Double Giant</li>
<ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>5</span> Dried Tomatoes</li>
<ul></ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>7</span> Blue Cheese</li>
<ul></ul></ul></ul>
', 'N/A', 'jp5646@hotmail.com', 'W', 'N/A', 'E0B97039AC950957D3B78BF5C64E378553CA48D8', 'ES-AR', '2013-07-27 22:20:15.654', 'N/A', 284, 'Jose Perez', 'N/A', '54', 'N/A', 32, 'Buenos Aires', NULL, '45729965', 'Depto', 0, 6, NULL, false);
INSERT INTO pedido (id, version, altura, calle, cliente_paga_con, comentarios, date_created, descripcion, dpto_oficina, email, estado, fecha_prevista_entrega, id_usuario, idioma, last_updated, leyenda_adicional, sucursal_id, nombre_usuario, nombre_vivienda, pais_codigo_tel, piso, precio_total, provincia, tag_id, telefono, tipo_domicilio, vuelto, pedidos_sucursal_idx, pedidos_del_tag_idx, cerrado) VALUES (253, 1, 'N/A', 'Corrientes 542
3ero A', 39, '', '2013-07-27 18:35:55.57', '<ul><li><span style=''background-color: #000; color: #fff; font-size: 10px;''>101</span> 1 x Chef''s Big</li>
<ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>3</span> Special Arugula</li>
<ul></ul></ul></ul>
<ul><li><span style=''background-color: #000; color: #fff; font-size: 10px;''>201</span> 3 x Double Big</li>
<ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>2</span> Ham</li>
<ul></ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>1</span> Mozzarella</li>
<ul></ul></ul></ul>
<ul><li><span style=''background-color: #000; color: #fff; font-size: 10px;''>202</span> 1 x Double Regular</li>
<ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>6</span> Fresh Tomato Slices</li>
<ul></ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>7</span> Blue Cheese</li>
<ul></ul></ul></ul>
', 'N/A', 'jp5646@hotmail.com', 'R', 'N/A', 'E0B97039AC950957D3B78BF5C64E378553CA48D8', 'ES-AR', '2013-07-27 20:33:13.473', 'N/A', 284, 'Jose Perez', 'N/A', '54', 'N/A', 39, 'Buenos Aires', NULL, '45729965', 'Depto', 0, 7, NULL, false);
INSERT INTO pedido (id, version, altura, calle, cliente_paga_con, comentarios, date_created, descripcion, dpto_oficina, email, estado, fecha_prevista_entrega, id_usuario, idioma, last_updated, leyenda_adicional, sucursal_id, nombre_usuario, nombre_vivienda, pais_codigo_tel, piso, precio_total, provincia, tag_id, telefono, tipo_domicilio, vuelto, pedidos_sucursal_idx, pedidos_del_tag_idx, cerrado) VALUES (310, 0, 'N/A', 'guatemala 659 4to B
Florida Vicente Lopez', 15, '', '2013-08-05 17:56:16.414', '<ul><li><span style=''background-color: #000; color: #fff; font-size: 10px;''>300</span> 1 x 1 Kilo</li>
<ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>2</span> Raspberry</li>
<ul></ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>22</span> Banana Split</li>
<ul></ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>3</span> Strawberry</li>
<ul></ul></ul></ul>
<ul><li><span style=''background-color: #000; color: #fff; font-size: 10px;''>201</span> 3 x Big Cone</li>
<ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>4</span> Lemon</li>
<ul></ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>8</span> Chocolate Snow</li>
<ul></ul></ul></ul>
<ul><li><span style=''background-color: #000; color: #fff; font-size: 10px;''>100</span> 1 x Small Cone</li>
<ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>12</span> Passion Fruit Mousse</li>
<ul></ul></ul></ul>
', 'N/A', 'pedro7532@hotmail.com', 'P', 'N/A', '06FEC7E7A974858A96AC7CFFAD4F857301988F14', 'ES-AR', '2013-08-05 17:56:16.414', 'N/A', 294, 'pedro sandoval', 'N/A', '54', 'N/A', 15, 'Buenos Aires', NULL, '47856328', 'Depto', 0, 9, NULL, false);
INSERT INTO pedido (id, version, altura, calle, cliente_paga_con, comentarios, date_created, descripcion, dpto_oficina, email, estado, fecha_prevista_entrega, id_usuario, idioma, last_updated, leyenda_adicional, sucursal_id, nombre_usuario, nombre_vivienda, pais_codigo_tel, piso, precio_total, provincia, tag_id, telefono, tipo_domicilio, vuelto, pedidos_sucursal_idx, pedidos_del_tag_idx, cerrado) VALUES (227, 44, '1453', 'Belgrano', 12, '<li>Wed Jul 17 00:33:38 UTC 2013    On the way    En camino</li>
<li>Wed Jul 17 00:33:38 UTC 2013    On the way    En camino</li>
<li>Tue Jul 16 21:33:38 ART 2013    On the way    En camino</li>
<li>Tue Jul 23 18:34:17 UTC 2013    Delayed    Demorado</li>
', '2013-07-16 19:23:33.987', '<ul><li><span style=''background-color: #000; color: #fff; font-size: 10px;''>300</span> 2 x 1 Kilo</li>
<ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>3</span> Strawberry</li>
<ul></ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>22</span> Banana Split</li>
<ul></ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>1</span> Pineapple</li>
<ul></ul></ul></ul>
', 'D', 'rntokuda@hotmail.com', 'Y', 'N/A', 'E0B97039AC950957D3B78BF5C64E378553CA48D8', 'ES-AR', '2013-07-23 18:20:10.253', 'N/A', 294, 'Juan Perez', 'N/A', '54', '5', 12, 'Buenos Aires', NULL, '31158910', 'Depto', 0, 1, NULL, false);
INSERT INTO pedido (id, version, altura, calle, cliente_paga_con, comentarios, date_created, descripcion, dpto_oficina, email, estado, fecha_prevista_entrega, id_usuario, idioma, last_updated, leyenda_adicional, sucursal_id, nombre_usuario, nombre_vivienda, pais_codigo_tel, piso, precio_total, provincia, tag_id, telefono, tipo_domicilio, vuelto, pedidos_sucursal_idx, pedidos_del_tag_idx, cerrado) VALUES (237, 1, 'N/A', 'libertador 54675to C', 500, '', '2013-07-17 01:45:21.362', '<ul><li><span style=''background-color: #000; color: #fff; font-size: 10px;''>101</span> 5 x Chef''s Big</li><ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>1</span> Mozzarella</li><ul></ul></ul></ul>', 'N/A', 'cjfdhj@nhjk.com', 'R', 'N/A', 'D87BE1E024713C65809275C61E848B1499F3791C', 'ES-AR', '2013-07-17 02:14:14.253', 'N/A', 284, 'carlos juarez', 'N/A', '54', 'N/A', 500, 'Buenos Aires', NULL, '58749653', 'Depto', 0, 1, NULL, false);
INSERT INTO pedido (id, version, altura, calle, cliente_paga_con, comentarios, date_created, descripcion, dpto_oficina, email, estado, fecha_prevista_entrega, id_usuario, idioma, last_updated, leyenda_adicional, sucursal_id, nombre_usuario, nombre_vivienda, pais_codigo_tel, piso, precio_total, provincia, tag_id, telefono, tipo_domicilio, vuelto, pedidos_sucursal_idx, pedidos_del_tag_idx, cerrado) VALUES (236, 0, 'N/A', 'libertador 5467
5to C', 10, '', '2013-07-17 01:45:08.033', '<ul><li><span style=''background-color: #000; color: #fff; font-size: 10px;''>201</span> 4 x Big Cone</li>
<ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>22</span> Banana Split</li>
<ul></ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>2</span> Raspberry</li>
<ul></ul></ul></ul>
', 'N/A', 'cjfdhj@nhjk.com', 'P', 'N/A', 'D87BE1E024713C65809275C61E848B1499F3791C', 'ES-AR', '2013-07-17 01:45:08.033', 'N/A', 294, 'carlos juarez', 'N/A', '54', 'N/A', 10, 'Buenos Aires', NULL, '58749653', 'Depto', 0, 4, NULL, false);
INSERT INTO pedido (id, version, altura, calle, cliente_paga_con, comentarios, date_created, descripcion, dpto_oficina, email, estado, fecha_prevista_entrega, id_usuario, idioma, last_updated, leyenda_adicional, sucursal_id, nombre_usuario, nombre_vivienda, pais_codigo_tel, piso, precio_total, provincia, tag_id, telefono, tipo_domicilio, vuelto, pedidos_sucursal_idx, pedidos_del_tag_idx, cerrado) VALUES (242, 0, 'N/A', 'Rosales 2653
1636 Olivos
Buenos Aires', 12, '', '2013-07-17 13:35:52.685', '<ul><li><span style=''background-color: #000; color: #fff; font-size: 10px;''>300</span> 2 x 1 Kilo</li>
<ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>13</span> Sambayon</li>
<ul></ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>5</span> Banana</li>
<ul></ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>2</span> Raspberry</li>
<ul></ul></ul></ul>
', 'N/A', 'hector.d.franco@gmail.com', 'P', 'N/A', 'C7D18958AD2442B80AEB796EDFBC26B496F835C1', 'ES-AR', '2013-07-17 13:35:52.685', 'N/A', 294, 'Héctor Franco', 'N/A', '54', 'N/A', 12, 'Buenos Aires', NULL, '+5491131887868', 'Depto', 0, 6, NULL, false);
INSERT INTO pedido (id, version, altura, calle, cliente_paga_con, comentarios, date_created, descripcion, dpto_oficina, email, estado, fecha_prevista_entrega, id_usuario, idioma, last_updated, leyenda_adicional, sucursal_id, nombre_usuario, nombre_vivienda, pais_codigo_tel, piso, precio_total, provincia, tag_id, telefono, tipo_domicilio, vuelto, pedidos_sucursal_idx, pedidos_del_tag_idx, cerrado) VALUES (239, 0, 'N/A', 'Rosales 2653
1636 Olivos
Buenos Aires', 10, '', '2013-07-17 11:49:15.715', '<ul><li><span style=''background-color: #000; color: #fff; font-size: 10px;''>101</span> 1 x Chef''s Big</li>
<ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>2</span> Ham</li>
<ul></ul></ul></ul>
', 'N/A', 'hector.d.franco@gmail.com', 'P', 'N/A', 'C7D18958AD2442B80AEB796EDFBC26B496F835C1', 'ES-AR', '2013-07-17 11:49:15.715', 'N/A', 284, 'Héctor Franco', 'N/A', '54', 'N/A', 10, 'Buenos Aires', NULL, '+5491131887868', 'Depto', 0, 2, NULL, false);
INSERT INTO pedido (id, version, altura, calle, cliente_paga_con, comentarios, date_created, descripcion, dpto_oficina, email, estado, fecha_prevista_entrega, id_usuario, idioma, last_updated, leyenda_adicional, sucursal_id, nombre_usuario, nombre_vivienda, pais_codigo_tel, piso, precio_total, provincia, tag_id, telefono, tipo_domicilio, vuelto, pedidos_sucursal_idx, pedidos_del_tag_idx, cerrado) VALUES (240, 0, 'N/A', 'Rosales 2653
1636 Olivos
Buenos Aires', 30, '', '2013-07-17 11:52:19.942', '<ul><li><span style=''background-color: #000; color: #fff; font-size: 10px;''>100</span> 2 x Chef''s Giant</li>
<ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>1</span> Mozzarella</li>
<ul></ul></ul></ul>
', 'N/A', 'hector.d.franco@gmail.com', 'P', 'N/A', 'C7D18958AD2442B80AEB796EDFBC26B496F835C1', 'ES-AR', '2013-07-17 11:52:19.942', 'N/A', 284, 'Héctor Franco', 'N/A', '54', 'N/A', 30, 'Buenos Aires', NULL, '+5491131887868', 'Depto', 0, 3, NULL, false);
INSERT INTO pedido (id, version, altura, calle, cliente_paga_con, comentarios, date_created, descripcion, dpto_oficina, email, estado, fecha_prevista_entrega, id_usuario, idioma, last_updated, leyenda_adicional, sucursal_id, nombre_usuario, nombre_vivienda, pais_codigo_tel, piso, precio_total, provincia, tag_id, telefono, tipo_domicilio, vuelto, pedidos_sucursal_idx, pedidos_del_tag_idx, cerrado) VALUES (241, 0, 'N/A', 'Rosales 2653
1636 Olivos
Buenos Aires', 20, '', '2013-07-17 13:33:49.186', '<ul><li><span style=''background-color: #000; color: #fff; font-size: 10px;''>101</span> 2 x Chef''s Big</li>
<ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>2</span> Ham</li>
<ul></ul></ul></ul>
', 'N/A', 'hector.d.franco@gmail.com', 'P', 'N/A', 'C7D18958AD2442B80AEB796EDFBC26B496F835C1', 'ES-AR', '2013-07-17 13:33:49.186', 'N/A', 284, 'Héctor Franco', 'N/A', '54', 'N/A', 20, 'Buenos Aires', NULL, '+5491131887868', 'Depto', 0, 4, NULL, false);
INSERT INTO pedido (id, version, altura, calle, cliente_paga_con, comentarios, date_created, descripcion, dpto_oficina, email, estado, fecha_prevista_entrega, id_usuario, idioma, last_updated, leyenda_adicional, sucursal_id, nombre_usuario, nombre_vivienda, pais_codigo_tel, piso, precio_total, provincia, tag_id, telefono, tipo_domicilio, vuelto, pedidos_sucursal_idx, pedidos_del_tag_idx, cerrado) VALUES (243, 0, 'N/A', 'Rosales 2653
1636 Olivos
Buenos Aires', 18, '', '2013-07-17 17:29:50.45', '<ul><li><span style=''background-color: #000; color: #fff; font-size: 10px;''>300</span> 3 x 1 Kilo</li>
<ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>2</span> Raspberry</li>
<ul></ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>5</span> Banana</li>
<ul></ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>22</span> Banana Split</li>
<ul></ul></ul></ul>
', 'N/A', 'hector.d.franco@gmail.com', 'P', 'N/A', 'C7D18958AD2442B80AEB796EDFBC26B496F835C1', 'ES-AR', '2013-07-17 17:29:50.45', 'N/A', 294, 'Héctor Franco', 'N/A', '54', 'N/A', 18, 'Buenos Aires', NULL, '+5491131887868', 'Depto', 0, 7, NULL, false);
INSERT INTO pedido (id, version, altura, calle, cliente_paga_con, comentarios, date_created, descripcion, dpto_oficina, email, estado, fecha_prevista_entrega, id_usuario, idioma, last_updated, leyenda_adicional, sucursal_id, nombre_usuario, nombre_vivienda, pais_codigo_tel, piso, precio_total, provincia, tag_id, telefono, tipo_domicilio, vuelto, pedidos_sucursal_idx, pedidos_del_tag_idx, cerrado) VALUES (244, 0, 'N/A', 'Rosales 2653
1636 Olivos
Buenos Aires', 22.5, '', '2013-07-17 23:21:53.812', '<ul><li><span style=''background-color: #000; color: #fff; font-size: 10px;''>102</span> 3 x Chef''s Regular</li>
<ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>13</span> Parmesan Cheese</li>
<ul></ul></ul></ul>
', 'N/A', 'hector.d.franco@gmail.com', 'P', 'N/A', 'C7D18958AD2442B80AEB796EDFBC26B496F835C1', 'ES-AR', '2013-07-17 23:21:53.812', 'N/A', 284, 'Héctor Franco', 'N/A', '54', 'N/A', 22.5, 'Buenos Aires', NULL, '+5491131887868', 'Depto', 0, 5, NULL, false);
INSERT INTO pedido (id, version, altura, calle, cliente_paga_con, comentarios, date_created, descripcion, dpto_oficina, email, estado, fecha_prevista_entrega, id_usuario, idioma, last_updated, leyenda_adicional, sucursal_id, nombre_usuario, nombre_vivienda, pais_codigo_tel, piso, precio_total, provincia, tag_id, telefono, tipo_domicilio, vuelto, pedidos_sucursal_idx, pedidos_del_tag_idx, cerrado) VALUES (249, 0, 'N/A', 'Rosales 2653
1636 Olivos
Buenos Aires', 3, '', '2013-07-18 14:05:32.282', '<ul><li><span style=''background-color: #000; color: #fff; font-size: 10px;''>200</span> 1 x 1/2 Kilo</li>
<ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>5</span> Banana</li>
<ul></ul>    <li><span style=''background-color: #000; color: #fff; font-size: 10px;''>22</span> Banana Split</li>
<ul></ul></ul></ul>
', 'N/A', 'hector.d.franco@gmail.com', 'P', 'N/A', 'C7D18958AD2442B80AEB796EDFBC26B496F835C1', 'ES-AR', '2013-07-18 14:05:32.282', 'N/A', 294, 'Héctor Franco', 'N/A', '54', 'N/A', 3, 'Buenos Aires', NULL, '+5491131887868', 'Depto', 0, 8, NULL, false);





