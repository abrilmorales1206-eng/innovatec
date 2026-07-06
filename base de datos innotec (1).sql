-- =============================================
-- SCRIPT COMPLETO - BASE DE DATOS TecnoOffice
-- =============================================

-- 1. CREAR BASE DE DATOS
CREATE DATABASE innovatec;
USE innovatec;

-- 2. CREAR TABLA DEPARTAMENTOS
CREATE TABLE Departamentos (
    id_departamento INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    ubicacion VARCHAR(50)
);

-- 3. CREAR TABLA PUESTOS
CREATE TABLE Puestos (
    id_puesto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    salario_base DECIMAL(10,2)
);

-- 4. CREAR TABLA EMPLEADOS
CREATE TABLE Empleados (
    id_empleado INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    correo VARCHAR(100) UNIQUE,
    telefono VARCHAR(15),
    id_departamento INT NULL,
    id_puesto INT NOT NULL,
    fecha_ingreso DATE NOT NULL,
    salario DECIMAL(10,2),
    FOREIGN KEY (id_departamento) REFERENCES Departamentos(id_departamento),
    FOREIGN KEY (id_puesto) REFERENCES Puestos(id_puesto)
);

-- =============================================
-- 5. INSERTAR DATOS EN DEPARTAMENTOS
-- =============================================
INSERT INTO Departamentos (nombre, ubicacion) VALUES
('Recursos Humanos', 'Piso 1'),
('Ventas', 'Piso 2'),
('Sistemas', 'Piso 3'),
('Contabilidad', 'Piso 2'),
('Compras', 'Piso 1'),
('Marketing', 'Piso 4'),
('Dirección', 'Piso 5');

-- =============================================
-- 6. INSERTAR DATOS EN PUESTOS
-- =============================================
INSERT INTO Puestos (nombre, salario_base) VALUES
('Gerente', 30000),
('Supervisor', 22000),
('Analista', 18000),
('Programador', 25000),
('Auxiliar', 12000),
('Vendedor', 15000),
('Contador', 24000);

-- =============================================
-- 7. INSERTAR 250 EMPLEADOS
-- =============================================

-- EMPLEADOS 1-50 (Nombres reales)
INSERT INTO Empleados 
(nombre, apellido, correo, telefono, fecha_ingreso, salario, id_departamento, id_puesto)
VALUES
('Juan', 'Pérez', 'juan.perez@tecno.com', '5551000001', '2022-01-10', 25000, 3, 4),
('María', 'López', 'maria.lopez@tecno.com', '5551000002', '2021-03-15', 30000, 7, 1),
('Luis', 'Gómez', 'luis.gomez@tecno.com', '5551000003', '2020-05-20', 18000, 3, 3),
('Ana', 'Martínez', 'ana.martinez@tecno.com', '5551000004', '2019-06-11', 22000, 2, 2),
('Carlos', 'Ruiz', 'carlos.ruiz@tecno.com', '5551000005', '2023-02-01', 12000, 1, 5),
('Sofía', 'Hernández', 'sofia.hernandez@tecno.com', '5551000006', '2022-04-12', 15000, 2, 6),
('Pedro', 'Torres', 'pedro.torres@tecno.com', '5551000007', '2021-08-30', 24000, 4, 7),
('Laura', 'Díaz', 'laura.diaz@tecno.com', '5551000008', '2023-01-18', 18000, 3, 3),
('José', 'Ramírez', 'jose.ramirez@tecno.com', '5551000009', '2020-09-21', 12000, 5, 5),
('Elena', 'Castro', 'elena.castro@tecno.com', '5551000010', '2022-12-02', 25000, 3, 4),
('Miguel', 'Ortega', 'miguel.ortega@tecno.com', '5551000011', '2018-10-14', 30000, 7, 1),
('Patricia', 'Morales', 'patricia.morales@tecno.com', '5551000012', '2021-11-25', 15000, 6, 6),
('Fernando', 'Santos', 'fernando.santos@tecno.com', '5551000013', '2022-07-17', 22000, 2, 2),
('Gabriela', 'Flores', 'gabriela.flores@tecno.com', '5551000014', '2023-03-19', 18000, 3, 3),
('Ricardo', 'Vega', 'ricardo.vega@tecno.com', '5551000015', '2020-02-08', 24000, 4, 7),
('Daniela', 'Mendoza', 'daniela.mendoza@tecno.com', '5551000016', '2022-06-29', 12000, 1, 5),
('Diego', 'Navarro', 'diego.navarro@tecno.com', '5551000017', '2023-05-15', 15000, 2, 6),
('Valeria', 'Silva', 'valeria.silva@tecno.com', '5551000018', '2021-09-10', 25000, 3, 4),
('Hugo', 'Rojas', 'hugo.rojas@tecno.com', '5551000019', '2020-01-03', 18000, 5, 3),
('Andrea', 'Campos', 'andrea.campos@tecno.com', '5551000020', '2022-10-07', 30000, 7, 1),
('Beatriz', 'Jiménez', 'beatriz.jimenez@tecno.com', '5551000021', '2022-06-20', 22000, 2, 2),
('César', 'Moreno', 'cesar.moreno@tecno.com', '5551000022', '2020-09-18', 15000, 6, 6),
('Diana', 'Ponce', 'diana.ponce@tecno.com', '5551000023', '2023-01-25', 25000, 3, 4),
('Eduardo', 'Salinas', 'eduardo.salinas@tecno.com', '5551000024', '2022-05-30', 30000, 7, 1),
('Fernanda', 'Cruz', 'fernanda.cruz@tecno.com', '5551000025', '2021-11-14', 12000, 1, 5),
('Gerardo', 'Mora', 'gerardo.mora@tecno.com', '5551000026', '2020-07-03', 24000, 4, 7),
('Alejandro', 'Reyes', 'alejandro.reyes@tecno.com', '5551000027', '2023-04-12', 18000, 3, 3),
('Mónica', 'García', 'monica.garcia@tecno.com', '5551000028', '2022-08-19', 22000, 2, 2),
('Jorge', 'Fernández', 'jorge.fernandez@tecno.com', '5551000029', '2021-12-01', 25000, 3, 4),
('Carmen', 'Sánchez', 'carmen.sanchez@tecno.com', '5551000030', '2020-03-22', 15000, 6, 6),
('Antonio', 'Romero', 'antonio.romero@tecno.com', '5551000031', '2022-11-05', 12000, 1, 5),
('Isabel', 'Álvarez', 'isabel.alvarez@tecno.com', '5551000032', '2019-07-15', 30000, 7, 1),
('Francisco', 'Núñez', 'francisco.nunez@tecno.com', '5551000033', '2023-06-20', 18000, 3, 3),
('Rosa', 'Delgado', 'rosa.delgado@tecno.com', '5551000034', '2022-02-28', 24000, 4, 7),
('Javier', 'Iglesias', 'javier.iglesias@tecno.com', '5551000035', '2021-10-10', 22000, 2, 2),
('Mercedes', 'Cabrera', 'mercedes.cabrera@tecno.com', '5551000036', '2020-08-14', 15000, 6, 6),
('Manuel', 'Luna', 'manuel.luna@tecno.com', '5551000037', '2023-02-03', 25000, 3, 4),
('Teresa', 'Peña', 'teresa.pena@tecno.com', '5551000038', '2022-09-09', 12000, 1, 5),
('David', 'Márquez', 'david.marquez@tecno.com', '5551000039', '2018-12-18', 30000, 7, 1),
('Alicia', 'Barrios', 'alicia.barrios@tecno.com', '5551000040', '2021-05-27', 18000, 3, 3),
('Raúl', 'Cortés', 'raul.cortes@tecno.com', '5551000041', '2022-03-11', 24000, 4, 7),
('Julia', 'Herrera', 'julia.herrera@tecno.com', '5551000042', '2020-11-15', 22000, 2, 2),
('Roberto', 'Gil', 'roberto.gil@tecno.com', '5551000043', '2023-07-01', 15000, 6, 6),
('Sara', 'Lorenzo', 'sara.lorenzo@tecno.com', '5551000044', '2022-04-18', 25000, 3, 4),
('Óscar', 'Vázquez', 'oscar.vazquez@tecno.com', '5551000045', '2019-09-30', 12000, 1, 5),
('Raquel', 'Pastor', 'raquel.pastor@tecno.com', '5551000046', '2021-01-12', 30000, 7, 1),
('Adrián', 'Serrano', 'adrian.serrano@tecno.com', '5551000047', '2022-10-25', 18000, 3, 3),
('Eva', 'Bermúdez', 'eva.bermudez@tecno.com', '5551000048', '2020-06-03', 22000, 2, 2),
('Alberto', 'Calvo', 'alberto.calvo@tecno.com', '5551000049', '2023-03-14', 24000, 4, 7),
('Elena', 'Parra', 'elena.parra@tecno.com', '5551000050', '2022-07-22', 15000, 6, 6);

-- EMPLEADOS 51-100
INSERT INTO Empleados 
(nombre, apellido, correo, telefono, fecha_ingreso, salario, id_departamento, id_puesto)
VALUES
('Roberto', 'Ramos', 'roberto.ramos@tecno.com', '5551000051', '2021-02-14', 28000, 3, 4),
('Marina', 'Díaz', 'marina.diaz@tecno.com', '5551000052', '2020-07-19', 32000, 7, 1),
('Pablo', 'Serrano', 'pablo.serrano@tecno.com', '5551000053', '2022-09-01', 19000, 3, 3),
('Claudia', 'Molina', 'claudia.molina@tecno.com', '5551000054', '2019-12-15', 23000, 2, 2),
('Andrés', 'Blanco', 'andres.blanco@tecno.com', '5551000055', '2023-03-22', 13000, 1, 5),
('Paula', 'Rey', 'paula.rey@tecno.com', '5551000056', '2022-05-16', 16000, 2, 6),
('Iván', 'Lozano', 'ivan.lozano@tecno.com', '5551000057', '2021-09-09', 25000, 4, 7),
('Natalia', 'Guerrero', 'natalia.guerrero@tecno.com', '5551000058', '2023-01-08', 19000, 3, 3),
('Marcos', 'Cano', 'marcos.cano@tecno.com', '5551000059', '2020-08-25', 13000, 5, 5),
('Lorena', 'Marín', 'lorena.marin@tecno.com', '5551000060', '2022-11-18', 26000, 3, 4),
('Sebastián', 'Soto', 'sebastian.soto@tecno.com', '5551000061', '2018-11-20', 31000, 7, 1),
('Rocío', 'Santana', 'rocio.santana@tecno.com', '5551000062', '2021-10-05', 16000, 6, 6),
('Tomás', 'Cordero', 'tomas.cordero@tecno.com', '5551000063', '2022-06-27', 23000, 2, 2),
('Lidia', 'Hidalgo', 'lidia.hidalgo@tecno.com', '5551000064', '2023-04-29', 19000, 3, 3),
('Gabriel', 'León', 'gabriel.leon@tecno.com', '5551000065', '2020-01-12', 25000, 4, 7),
('Alba', 'Vidal', 'alba.vidal@tecno.com', '5551000066', '2022-05-19', 13000, 1, 5),
('Rubén', 'Font', 'ruben.font@tecno.com', '5551000067', '2023-06-02', 16000, 2, 6),
('Violeta', 'Roca', 'violeta.roca@tecno.com', '5551000068', '2021-08-17', 26000, 3, 4),
('Adolfo', 'Duran', 'adolfo.duran@tecno.com', '5551000069', '2020-03-09', 19000, 5, 3),
('Encarna', 'Valero', 'encarna.valero@tecno.com', '5551000070', '2022-09-28', 32000, 7, 1),
('Emilio', 'Aguilar', 'emilio.aguilar@tecno.com', '5551000071', '2022-05-02', 23000, 2, 2),
('Luisa', 'Ortega', 'luisa.ortega@tecno.com', '5551000072', '2020-10-11', 16000, 6, 6),
('Nicolás', 'Escobar', 'nicolas.escobar@tecno.com', '5551000073', '2023-02-17', 26000, 3, 4),
('Esperanza', 'Toro', 'esperanza.toro@tecno.com', '5551000074', '2022-04-22', 32000, 7, 1),
('Felipe', 'Domínguez', 'felipe.dominguez@tecno.com', '5551000075', '2021-12-02', 13000, 1, 5),
('Olga', 'Pizarro', 'olga.pizarro@tecno.com', '5551000076', '2020-06-15', 25000, 4, 7),
('Rafael', 'Nieto', 'rafael.nieto@tecno.com', '5551000077', '2023-05-08', 19000, 3, 3),
('Marta', 'Valverde', 'marta.valverde@tecno.com', '5551000078', '2022-08-11', 23000, 2, 2),
('Enrique', 'Prieto', 'enrique.prieto@tecno.com', '5551000079', '2021-03-28', 26000, 3, 4),
('Sonia', 'Robles', 'sonia.robles@tecno.com', '5551000080', '2020-12-14', 16000, 6, 6),
('Rubén', 'Gallardo', 'ruben.gallardo@tecno.com', '5551000081', '2022-07-05', 13000, 1, 5),
('Esther', 'Otero', 'esther.otero@tecno.com', '5551000082', '2019-10-19', 32000, 7, 1),
('José', 'Rey', 'jose.rey@tecno.com', '5551000083', '2023-01-30', 19000, 3, 3),
('Montserrat', 'Gil', 'montserrat.gil@tecno.com', '5551000084', '2022-03-14', 25000, 4, 7),
('Alberto', 'Lara', 'alberto.lara@tecno.com', '5551000085', '2021-07-22', 23000, 2, 2),
('Ismael', 'Campos', 'ismael.campos@tecno.com', '5551000086', '2020-11-09', 16000, 6, 6),
('Inés', 'Álvaro', 'ines.alvaro@tecno.com', '5551000087', '2023-03-15', 26000, 3, 4),
('Héctor', 'Gallego', 'hector.gallego@tecno.com', '5551000088', '2022-09-03', 13000, 1, 5),
('Elisa', 'Méndez', 'elisa.mendez@tecno.com', '5551000089', '2018-12-28', 32000, 7, 1),
('Jesús', 'Carrasco', 'jesus.carrasco@tecno.com', '5551000090', '2021-05-11', 19000, 3, 3),
('Miriam', 'Sáez', 'miriam.saez@tecno.com', '5551000091', '2022-10-15', 25000, 4, 7),
('Joaquín', 'Pardo', 'joaquin.pardo@tecno.com', '5551000092', '2020-08-03', 23000, 2, 2),
('Nuria', 'Peña', 'nuria.pena@tecno.com', '5551000093', '2023-07-12', 16000, 6, 6),
('Alejandro', 'Cruz', 'alejandro.cruz@tecno.com', '5551000094', '2022-01-25', 26000, 3, 4),
('Cristina', 'Medina', 'cristina.medina@tecno.com', '5551000095', '2019-09-17', 13000, 1, 5),
('Vicente', 'Lorenzo', 'vicente.lorenzo@tecno.com', '5551000096', '2021-04-03', 32000, 7, 1),
('Tania', 'Quintero', 'tania.quintero@tecno.com', '5551000097', '2022-11-29', 19000, 3, 3),
('Ángel', 'Caballero', 'angel.caballero@tecno.com', '5551000098', '2020-06-08', 23000, 2, 2),
('Lucía', 'Ferrer', 'lucia.ferrer@tecno.com', '5551000099', '2023-04-02', 25000, 4, 7),
('José', 'Molina', 'jose.molina@tecno.com', '5551000100', '2022-07-29', 16000, 6, 6);

-- EMPLEADOS 101-150
INSERT INTO Empleados 
(nombre, apellido, correo, telefono, fecha_ingreso, salario, id_departamento, id_puesto)
VALUES
('Santiago', 'Benitez', 'santiago.benitez@tecno.com', '5551000101', '2021-01-25', 21000, 3, 3),
('Florencia', 'Naranjo', 'florencia.naranjo@tecno.com', '5551000102', '2020-08-12', 28000, 3, 4),
('Maximiliano', 'Vera', 'maximiliano.vera@tecno.com', '5551000103', '2022-12-18', 15000, 6, 6),
('Ariadna', 'Benítez', 'ariadna.benitez@tecno.com', '5551000104', '2019-05-22', 22000, 2, 2),
('Mateo', 'Castillo', 'mateo.castillo@tecno.com', '5551000105', '2023-02-10', 31000, 7, 1),
('Regina', 'Soler', 'regina.soler@tecno.com', '5551000106', '2022-06-03', 12000, 1, 5),
('Teodoro', 'Sanz', 'teodoro.sanz@tecno.com', '5551000107', '2021-11-11', 24000, 4, 7),
('Tamara', 'Soria', 'tamara.soria@tecno.com', '5551000108', '2023-03-28', 18000, 3, 3),
('Gonzalo', 'Vázquez', 'gonzalo.vazquez@tecno.com', '5551000109', '2020-04-15', 22000, 2, 2),
('Jimena', 'Arroyo', 'jimena.arroyo@tecno.com', '5551000110', '2022-09-08', 28000, 3, 4),
('Bruno', 'Cobo', 'bruno.cobo@tecno.com', '5551000111', '2018-08-29', 15000, 6, 6),
('Camila', 'Fernández', 'camila.fernandez@tecno.com', '5551000112', '2021-06-14', 12000, 1, 5),
('Salvador', 'Hidalgo', 'salvador.hidalgo@tecno.com', '5551000113', '2022-04-09', 31000, 7, 1),
('Bianca', 'Rosales', 'bianca.rosales@tecno.com', '5551000114', '2020-10-30', 22000, 2, 2),
('Emmanuel', 'Delgado', 'emmanuel.delgado@tecno.com', '5551000115', '2023-01-17', 18000, 3, 3),
('Carolina', 'Salazar', 'carolina.salazar@tecno.com', '5551000116', '2022-07-23', 24000, 4, 7),
('Renato', 'Ibarra', 'renato.ibarra@tecno.com', '5551000117', '2019-12-09', 28000, 3, 4),
('Débora', 'Martín', 'debora.martin@tecno.com', '5551000118', '2021-09-02', 15000, 6, 6),
('Fabián', 'Giménez', 'fabian.gimenez@tecno.com', '5551000119', '2022-11-21', 22000, 2, 2),
('Aurora', 'Pascual', 'aurora.pascual@tecno.com', '5551000120', '2020-03-18', 31000, 7, 1),
('Damián', 'Ferrández', 'damian.ferrandez@tecno.com', '5551000121', '2023-05-25', 12000, 1, 5),
('Eugenia', 'Lobato', 'eugenia.lobato@tecno.com', '5551000122', '2022-08-05', 18000, 3, 3),
('Leandro', 'Alonso', 'leandro.alonso@tecno.com', '5551000123', '2021-12-13', 24000, 4, 7),
('Candela', 'García', 'candela.garcia@tecno.com', '5551000124', '2020-07-07', 28000, 3, 4),
('Iker', 'Muñoz', 'iker.munoz@tecno.com', '5551000125', '2022-10-02', 22000, 2, 2),
('Luz', 'Pérez', 'luz.perez@tecno.com', '5551000126', '2019-04-25', 15000, 6, 6),
('Marco', 'Santos', 'marco.santos@tecno.com', '5551000127', '2023-02-14', 31000, 7, 1),
('Miriam', 'Gómez', 'miriam.gomez@tecno.com', '5551000128', '2022-05-17', 12000, 1, 5),
('Saúl', 'López', 'saul.lopez@tecno.com', '5551000129', '2021-08-08', 18000, 3, 3),
('Noelia', 'Martínez', 'noelia.martinez@tecno.com', '5551000130', '2020-11-20', 24000, 4, 7),
('Kevin', 'Rodríguez', 'kevin.rodriguez@tecno.com', '5551000131', '2022-12-11', 28000, 3, 4),
('Silvia', 'Sánchez', 'silvia.sanchez@tecno.com', '5551000132', '2018-09-14', 15000, 6, 6),
('Esteban', 'Ruiz', 'esteban.ruiz@tecno.com', '5551000133', '2021-04-01', 22000, 2, 2),
('Beatriz', 'Jiménez', 'beatriz.jimenez@tecno.com', '5551000134', '2023-06-07', 31000, 7, 1),
('Julio', 'Hernández', 'julio.hernandez@tecno.com', '5551000135', '2020-02-28', 12000, 1, 5),
('Mariana', 'Díaz', 'mariana.diaz@tecno.com', '5551000136', '2022-09-14', 18000, 3, 3),
('Rodrigo', 'Álvarez', 'rodrigo.alvarez@tecno.com', '5551000137', '2019-07-02', 24000, 4, 7),
('Aitana', 'Romero', 'aitana.romero@tecno.com', '5551000138', '2021-10-19', 22000, 2, 2),
('Brayan', 'Moreno', 'brayan.moreno@tecno.com', '5551000139', '2022-03-24', 28000, 3, 4),
('Daniela', 'Torres', 'daniela.torres@tecno.com', '5551000140', '2020-12-05', 15000, 6, 6),
('Katherine', 'Castro', 'katherine.castro@tecno.com', '5551000141', '2023-04-18', 31000, 7, 1),
('Mauro', 'Morales', 'mauro.morales@tecno.com', '5551000142', '2022-02-05', 12000, 1, 5),
('Valentina', 'Flores', 'valentina.flores@tecno.com', '5551000143', '2021-07-28', 18000, 3, 3),
('Ramiro', 'Ortega', 'ramiro.ortega@tecno.com', '5551000144', '2020-09-16', 24000, 4, 7),
('Nahuel', 'Vega', 'nahuel.vega@tecno.com', '5551000145', '2022-06-10', 28000, 3, 4),
('Fabiola', 'Mendoza', 'fabiola.mendoza@tecno.com', '5551000146', '2018-11-08', 22000, 2, 2),
('Celeste', 'Navarro', 'celeste.navarro@tecno.com', '5551000147', '2021-03-29', 15000, 6, 6),
('Adán', 'Silva', 'adan.silva@tecno.com', '5551000148', '2023-01-22', 31000, 7, 1),
('Juana', 'Rojas', 'juana.rojas@tecno.com', '5551000149', '2022-10-12', 12000, 1, 5),
('Carlos', 'Campos', 'carlos.campos@tecno.com', '5551000150', '2020-05-25', 18000, 3, 3);

-- EMPLEADOS 151-200
INSERT INTO Empleados 
(nombre, apellido, correo, telefono, fecha_ingreso, salario, id_departamento, id_puesto)
VALUES
('Gustavo', 'Pareja', 'gustavo.pareja@tecno.com', '5551000151', '2022-01-14', 25000, 3, 4),
('Yolanda', 'Quintana', 'yolanda.quintana@tecno.com', '5551000152', '2021-04-20', 30000, 7, 1),
('Julián', 'Toledo', 'julian.toledo@tecno.com', '5551000153', '2020-06-25', 18000, 3, 3),
('Azucena', 'Villalba', 'azucena.villalba@tecno.com', '5551000154', '2019-07-16', 22000, 2, 2),
('Elías', 'Cáceres', 'elias.caceres@tecno.com', '5551000155', '2023-03-06', 12000, 1, 5),
('Bárbara', 'Gallego', 'barbara.gallego@tecno.com', '5551000156', '2022-04-17', 15000, 2, 6),
('Félix', 'Ramos', 'felix.ramos@tecno.com', '5551000157', '2021-09-05', 24000, 4, 7),
('Gloria', 'Cortés', 'gloria.cortes@tecno.com', '5551000158', '2023-02-22', 18000, 3, 3),
('Lucas', 'Barrios', 'lucas.barrios@tecno.com', '5551000159', '2020-10-26', 12000, 5, 5),
('Adela', 'Serrano', 'adela.serrano@tecno.com', '5551000160', '2022-12-07', 25000, 3, 4),
('Celso', 'Gil', 'celso.gil@tecno.com', '5551000161', '2018-11-16', 30000, 7, 1),
('Clara', 'Pérez', 'clara.perez@tecno.com', '5551000162', '2021-12-01', 15000, 6, 6),
('Dario', 'Domínguez', 'dario.dominguez@tecno.com', '5551000163', '2022-08-18', 22000, 2, 2),
('Abril', 'Mora', 'abril.mora@tecno.com', '5551000164', '2023-04-03', 18000, 3, 3),
('René', 'García', 'rene.garcia@tecno.com', '5551000165', '2020-03-12', 24000, 4, 7),
('Susana', 'Ríos', 'susana.rios@tecno.com', '5551000166', '2022-07-30', 12000, 1, 5),
('Esteban', 'Crespo', 'esteban.crespo@tecno.com', '5551000167', '2023-06-04', 15000, 2, 6),
('Blanca', 'Peralta', 'blanca.peralta@tecno.com', '5551000168', '2021-10-12', 25000, 3, 4),
('Humberto', 'Medina', 'humberto.medina@tecno.com', '5551000169', '2020-02-15', 30000, 7, 1),
('Tatiana', 'Ferrer', 'tatiana.ferrer@tecno.com', '5551000170', '2022-05-03', 18000, 3, 3),
('Ricardo', 'Muñoz', 'ricardo.munoz@tecno.com', '5551000171', '2022-07-08', 22000, 2, 2),
('Amparo', 'Blanco', 'amparo.blanco@tecno.com', '5551000172', '2020-09-22', 15000, 6, 6),
('Eugenio', 'Cabrera', 'eugenio.cabrera@tecno.com', '5551000173', '2023-03-09', 25000, 3, 4),
('Lourdes', 'Cano', 'lourdes.cano@tecno.com', '5551000174', '2022-05-24', 30000, 7, 1),
('Néstor', 'Santos', 'nestor.santos@tecno.com', '5551000175', '2021-11-18', 12000, 1, 5),
('Paloma', 'Guerra', 'paloma.guerra@tecno.com', '5551000176', '2020-08-01', 24000, 4, 7),
('Bernardo', 'Vega', 'bernardo.vega@tecno.com', '5551000177', '2023-05-12', 18000, 3, 3),
('Dulce', 'Roldán', 'dulce.roldan@tecno.com', '5551000178', '2022-09-25', 22000, 2, 2),
('Fausto', 'Olivares', 'fausto.olivares@tecno.com', '5551000179', '2021-02-02', 25000, 3, 4),
('Graciela', 'Valle', 'graciela.valle@tecno.com', '5551000180', '2020-12-19', 15000, 6, 6),
('Horacio', 'Molina', 'horacio.molina@tecno.com', '5551000181', '2022-10-08', 12000, 1, 5),
('Julieta', 'Sosa', 'julieta.sosa@tecno.com', '5551000182', '2019-11-11', 30000, 7, 1),
('Clemente', 'Luna', 'clemente.luna@tecno.com', '5551000183', '2023-01-09', 18000, 3, 3),
('Marisol', 'Peña', 'marisol.pena@tecno.com', '5551000184', '2022-03-29', 24000, 4, 7),
('Abelardo', 'Lorenzo', 'abelardo.lorenzo@tecno.com', '5551000185', '2021-08-21', 22000, 2, 2),
('Rita', 'Gallego', 'rita.gallego@tecno.com', '5551000186', '2020-04-07', 15000, 6, 6),
('Emilio', 'Zamora', 'emilio.zamora@tecno.com', '5551000187', '2023-06-19', 25000, 3, 4),
('Victoria', 'Reyes', 'victoria.reyes@tecno.com', '5551000188', '2022-02-13', 30000, 7, 1),
('Guillermo', 'Pacheco', 'guillermo.pacheco@tecno.com', '5551000189', '2021-06-03', 12000, 1, 5),
('Araceli', 'Salgado', 'araceli.salgado@tecno.com', '5551000190', '2020-11-09', 18000, 3, 3),
('Jairo', 'Guzmán', 'jairo.guzman@tecno.com', '5551000191', '2022-04-27', 24000, 4, 7),
('Mireia', 'Fuentes', 'mireia.fuentes@tecno.com', '5551000192', '2018-10-02', 22000, 2, 2),
('Alexis', 'Méndez', 'alexis.mendez@tecno.com', '5551000193', '2021-12-12', 15000, 6, 6),
('Begoña', 'Ortiz', 'begona.ortiz@tecno.com', '5551000194', '2022-07-14', 25000, 3, 4),
('Dionisio', 'Sánchez', 'dionisio.sanchez@tecno.com', '5551000195', '2019-08-20', 30000, 7, 1),
('Eliodora', 'González', 'eliodora.gonzalez@tecno.com', '5551000196', '2023-02-28', 12000, 1, 5),
('Federico', 'López', 'federico.lopez@tecno.com', '5551000197', '2022-11-15', 18000, 3, 3),
('Genoveva', 'Martínez', 'genoveva.martinez@tecno.com', '5551000198', '2021-05-04', 24000, 4, 7),
('Heriberto', 'Rodríguez', 'heriberto.rodriguez@tecno.com', '5551000199', '2020-06-30', 22000, 2, 2),
('Josefina', 'Fernández', 'josefina.fernandez@tecno.com', '5551000200', '2022-08-22', 15000, 6, 6);

-- EMPLEADOS 201-250
INSERT INTO Empleados 
(nombre, apellido, correo, telefono, fecha_ingreso, salario, id_departamento, id_puesto)
VALUES
('Alfredo', 'Iglesias', 'alfredo.iglesias@tecno.com', '5551000201', '2021-03-14', 27000, 3, 4),
('Cecilia', 'Vidal', 'cecilia.vidal@tecno.com', '5551000202', '2020-07-21', 31000, 7, 1),
('Agustín', 'Santana', 'agustin.santana@tecno.com', '5551000203', '2022-10-09', 18500, 3, 3),
('Raquel', 'Márquez', 'raquel.marquez@tecno.com', '5551000204', '2019-12-19', 22500, 2, 2),
('Igor', 'Reyes', 'igor.reyes@tecno.com', '5551000205', '2023-04-07', 12500, 1, 5),
('Nayara', 'Ortega', 'nayara.ortega@tecno.com', '5551000206', '2022-05-13', 15500, 2, 6),
('Mario', 'Castro', 'mario.castro@tecno.com', '5551000207', '2021-09-27', 24500, 4, 7),
('Teresa', 'Núñez', 'teresa.nunez@tecno.com', '5551000208', '2023-02-02', 18500, 3, 3),
('Isidro', 'Soto', 'isidro.soto@tecno.com', '5551000209', '2020-08-29', 12500, 5, 5),
('Alicia', 'Díaz', 'alicia.diaz@tecno.com', '5551000210', '2022-11-11', 25500, 3, 4),
('Roque', 'Flores', 'roque.flores@tecno.com', '5551000211', '2018-10-18', 30500, 7, 1),
('Amelia', 'Ramos', 'amelia.ramos@tecno.com', '5551000212', '2021-11-09', 15500, 6, 6),
('Jacobo', 'Mendoza', 'jacobo.mendoza@tecno.com', '5551000213', '2022-06-21', 22500, 2, 2),
('Lina', 'Torres', 'lina.torres@tecno.com', '5551000214', '2023-03-23', 18500, 3, 3),
('Hilario', 'Pérez', 'hilario.perez@tecno.com', '5551000215', '2020-01-14', 24500, 4, 7),
('Nora', 'López', 'nora.lopez@tecno.com', '5551000216', '2022-06-01', 12500, 1, 5),
('Joel', 'Gómez', 'joel.gomez@tecno.com', '5551000217', '2023-05-19', 15500, 2, 6),
('Maricarmen', 'Sánchez', 'maricarmen.sanchez@tecno.com', '5551000218', '2021-07-31', 25500, 3, 4),
('Rogelio', 'Martínez', 'rogelio.martinez@tecno.com', '5551000219', '2020-03-05', 30500, 7, 1),
('Aurea', 'Ruiz', 'aurea.ruiz@tecno.com', '5551000220', '2022-08-15', 18500, 3, 3),
('Cipriano', 'Hernández', 'cipriano.hernandez@tecno.com', '5551000221', '2022-04-04', 22500, 2, 2),
('Dolores', 'Jiménez', 'dolores.jimenez@tecno.com', '5551000222', '2020-10-16', 15500, 6, 6),
('Eleuterio', 'García', 'eleuterio.garcia@tecno.com', '5551000223', '2023-01-31', 25500, 3, 4),
('Fátima', 'Rodríguez', 'fatima.rodriguez@tecno.com', '5551000224', '2022-05-26', 30500, 7, 1),
('Gregorio', 'Fernández', 'gregorio.fernandez@tecno.com', '5551000225', '2021-12-05', 12500, 1, 5),
('Herminia', 'González', 'herminia.gonzalez@tecno.com', '5551000226', '2020-07-02', 24500, 4, 7),
('Inocencio', 'Morales', 'inocencio.morales@tecno.com', '5551000227', '2023-06-11', 18500, 3, 3),
('Jovita', 'Ortega', 'jovita.ortega@tecno.com', '5551000228', '2022-09-29', 22500, 2, 2),
('Leonardo', 'Vega', 'leonardo.vega@tecno.com', '5551000229', '2021-02-18', 25500, 3, 4),
('Manuela', 'Silva', 'manuela.silva@tecno.com', '5551000230', '2020-12-28', 15500, 6, 6),
('Octavio', 'Rojas', 'octavio.rojas@tecno.com', '5551000231', '2022-10-27', 12500, 1, 5),
('Priscila', 'Navarro', 'priscila.navarro@tecno.com', '5551000232', '2019-10-04', 30500, 7, 1),
('Quirino', 'Mendoza', 'quirino.mendoza@tecno.com', '5551000233', '2023-02-15', 18500, 3, 3),
('Rosalía', 'Castro', 'rosalia.castro@tecno.com', '5551000234', '2022-03-12', 24500, 4, 7),
('Sixto', 'Flores', 'sixto.flores@tecno.com', '5551000235', '2021-07-25', 22500, 2, 2),
('Teodora', 'Ramos', 'teodora.ramos@tecno.com', '5551000236', '2020-04-20', 15500, 6, 6),
('Urbano', 'Torres', 'urbano.torres@tecno.com', '5551000237', '2023-05-30', 25500, 3, 4),
('Virginia', 'Pérez', 'virginia.perez@tecno.com', '5551000238', '2022-12-12', 30500, 7, 1),
('Wenceslao', 'Gómez', 'wenceslao.gomez@tecno.com', '5551000239', '2021-08-09', 12500, 1, 5),
('Ximena', 'López', 'ximena.lopez@tecno.com', '5551000240', '2020-11-23', 18500, 3, 3),
('Yago', 'Sánchez', 'yago.sanchez@tecno.com', '5551000241', '2022-02-26', 24500, 4, 7),
('Zahara', 'Martínez', 'zahara.martinez@tecno.com', '5551000242', '2018-08-11', 22500, 2, 2),
('Anselmo', 'Ruiz', 'anselmo.ruiz@tecno.com', '5551000243', '2021-05-21', 15500, 6, 6),
('Bertha', 'Hernández', 'bertha.hernandez@tecno.com', '5551000244', '2022-09-09', 25500, 3, 4),
('Cornelio', 'Jiménez', 'cornelio.jimenez@tecno.com', '5551000245', '2020-06-16', 30500, 7, 1),
('Digna', 'García', 'digna.garcia@tecno.com', '5551000246', '2023-04-25', 12500, 1, 5),
('Evaristo', 'Rodríguez', 'evaristo.rodriguez@tecno.com', '5551000247', '2022-11-30', 18500, 3, 3),
('Felicidad', 'Fernández', 'felicidad.fernandez@tecno.com', '5551000248', '2021-06-14', 24500, 4, 7),
('Gumersindo', 'González', 'gumersindo.gonzalez@tecno.com', '5551000249', '2020-09-07', 22500, 2, 2),
('Hortensia', 'Morales', 'hortensia.morales@tecno.com', '5551000250', '2022-07-19', 15500, 6, 6);

-- =============================================
-- 8. VERIFICACIONES FINALES
-- =============================================

-- Contar empleados
SELECT COUNT(*) AS total_empleados FROM Empleados;

-- Ver distribución por departamento
SELECT d.nombre AS departamento, COUNT(*) AS cantidad
FROM Empleados e
JOIN Departamentos d ON e.id_departamento = d.id_departamento
GROUP BY d.nombre
ORDER BY cantidad DESC;

-- Ver distribución por puesto
SELECT p.nombre AS puesto, COUNT(*) AS cantidad
FROM Empleados e
JOIN Puestos p ON e.id_puesto = p.id_puesto
GROUP BY p.nombre
ORDER BY cantidad DESC;

-- Mostrar primeros 10 empleados
SELECT * FROM Empleados LIMIT 10;