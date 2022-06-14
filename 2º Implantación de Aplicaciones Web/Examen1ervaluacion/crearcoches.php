<?php

//Declaramos las variables
$servername ="localhost";
$username ="alumno1";
$password="alumno1";
$db="alumno1";
$tabla="coches";


//Creamos la conexion con el servidor

$conn =  mysqli_connect($servername, $username, $password,$db);

//Comprobamos que tengamos acceso a la base de datos
if (!$conn) {
	die("Connection failed: " . mysqli_connect_error());
}

//Creamos la tabla
$sql = "CREATE TABLE $tabla (
id INT(8) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(128),
modelo VARCHAR(64),
precio INT(8),
genero VARCHAR(64)
)";

if ($conn->query($sql) === TRUE) {
    print "<h1>la tabla coches ha sido creado</h1>";
} else {
	print  "<h1>No se ha podido crear la tabla coches</h1> ";
}
// Cerramos la conexión
$conn->close();


?>
