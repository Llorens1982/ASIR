<?php

//Declaramos las variables
$servername ="localhost";
$username ="alumno1";
$password="alumno1";
$db="alumno1";
$tabla="coches";
$preciodeseado=$_POST['precio'];

//Creamos la conexion con el servidor

$conn =  mysqli_connect($servername, $username, $password,$db);

//Comprobamos que tengamos acceso a la base de datos
if (!$conn) {
	die("Connection failed: " . mysqli_connect_error());
}

// Creamos la consulta
$sql="SELECT * FROM $db.$tabla WHERE precio<$preciodeseado;";
$consulta = mysqli_query ($conn, $sql);

///Creamos el html
//
print "<!DOCTYPE html>
	<html lang='es'>
	<head>
   		<meta charset='UTF-8'>
		<title>Akira Alonso Domenech </title>
	</head>
<body>
	<div class='listado'>
		<h1>Listado de coches</h1>" ;


//Creamos la tabla
//
print "<table>";
print "<tr>";
print "<th><label>ID</label></th>";
print "<th><label>Nombre </label></th>";
print "<th><label>Modelo </label></th>";
print "<th><label>Precio </label></th>";
print "<th><label>Genero </label></th>";
print "</tr><tr>";

//Creamos un bucle que imprima el contenido de los resultados de la consulta
while($row = mysqli_fetch_array($consulta)) {

	print "<tr>";
	print "<td>".$row['id']."</td>";
	print "<td>".$row['nombre']."</td>";
	print "<td>".$row['modelo']."</td>";
	print "<td>".$row['precio']."</td>";
	print "<td>".$row['genero']."</td>";
	print "</tr>";

}

print "</table>";
print "
<br>
<a href='oferta.html' class='btn btn-primary btn-block btn-large'>Buscar de nuevo</a>";
print "</div>";

$conn->close();
?>
