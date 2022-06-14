<?php

//Declaramos las variables
$servername ="localhost";
$username ="alumno1";
$password="alumno1";
$db="alumno1";
$tabla="coches";

$conn =  mysqli_connect($servername, $username, $password, $db);
//mysqli_select_db($conn,$bd);

// Comprobamos si se ha podido hacer la conexion
if (!$conn) {
	die("Connection failed: " . mysqli_connect_error());
}

//Introducimos 3 modelos de coche
$sql="INSERT INTO $db.$tabla (nombre,modelo,precio,genero) VALUES ('Mercedes','220D',50000,'Berlina');";
$consulta = mysqli_query ($conn, $sql);
$sql="INSERT INTO $db.$tabla (nombre,modelo,precio,genero) VALUES ('SEAT','Ibiza',10300,'Utilitario');";
$consulta = mysqli_query ($conn, $sql);
$sql="INSERT INTO $db.$tabla (nombre,modelo,precio,genero) VALUES ('Hyundai','IX35',18090,'SUV');";
$consulta = mysqli_query ($conn, $sql);

print "<h1>Coches introducidos</h1>";

$conn->close();
?>

