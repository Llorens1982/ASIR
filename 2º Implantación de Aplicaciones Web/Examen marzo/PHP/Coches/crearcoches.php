<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname="cochesbd";
$table="discos";

// CREAR LA CONEXION CON EL SERVIDOR DE DATOS MYSQL
$conn = new mysqli($servername, $username, $password);
// Check connection
if ($conn->connect_error) {
    die("Fallo en la conexión: " . $conn->connect_error);
} 

//CREAR LA BASE DE DATOS
$sql = "CREATE DATABASE $dbname";
if ($conn->query($sql) === TRUE) {
    echo "La base de datos se creo correctamente<br>";
} else {
    echo "Error creando la base de datos: " . $conn->error;
}
$conn->close();

// CREAR CONEXION PARA CONECTAR CON LA BASE DE DATOS ANTES CREADA
$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Fallo en la conexión: " . $conn->connect_error);
} 

// sql to create table
$sql = "CREATE TABLE discos (
id INT(8) UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
Nombre VARCHAR(128),
Modelo VARCHAR(64),
Precio INT(8),
Genero VARCHAR(64)
)";
//EJECUTAR CONSULTA DE CREAR TABLA Y CAMPOS
if ($conn->query($sql) === TRUE) {
    echo "La tabla se creo correctamente";
} else {
    echo "Error creating table: " . $conn->error;
}

//CERRAR LA CONEXION
$conn->close();