-- Inicio de Base de Datos 
UNLOCK TABLES;
drop database if exists `usuarios`;
create database usuarios;
use usuarios;
-- Tabla Rol
DROP TABLE IF EXISTS `rol`;
CREATE TABLE `rol` (
  `idrol` int(11) NOT NULL,
  `rol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idrol`)
);
-- Insert de Rol
LOCK TABLES `rol` WRITE;
INSERT INTO `rol` (`idrol`, `rol`) VALUES (1,'ROL_ADMINISTRADOR'),(2,'ROL_PROFESOR'),(3,'ROL_ESTUDIANTE'),(4,'ROL_TUTOR'),(5,'ROL_INVITADO');
UNLOCK TABLES;
-- Tabla de Usuarios
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) DEFAULT NULL,
  `contraseña` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido_paterno` varchar(45) DEFAULT NULL,
  `apellido_materno` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `idrol` int(11) DEFAULT NULL,
  PRIMARY KEY (`idusuario`),
  KEY `fk_rol_idx` (`idrol`),
  CONSTRAINT `fk_rol` FOREIGN KEY (`idrol`) REFERENCES `rol` (`idrol`)
);
-- Inset de Usuarios
LOCK TABLES `usuario` WRITE;
INSERT INTO `usuario` (`idusuario`, `usuario`, `contraseña`, `correo`, `nombre`, `apellido_paterno`, `apellido_materno`, `telefono`, `idrol`) VALUES (1,'emmanuel','cecyt9','eoropezag@ipn.mx','emmanuel','oropeza','gonzalez','57296300',1),(2,'emmanuel1','cecyt9','eoropezag@ipn.mx','emmanuel','oropeza','gonzalez','57296300',2),(3,'emmanuel2','cecyt9','eoropezag@ipn.mx','emmanuel','oropeza','gonzalez','57296300',3),(4,'emmanuel3','cecyt9','eoropezag@ipn.mx','emmanuel','oropeza','gonzalez','57296300',4),(5,'emmanuel4','cecyt9','eoropezag@ipn.mx','emmanuel','oropeza','gonzalez','57296300',5);
UNLOCK TABLES;