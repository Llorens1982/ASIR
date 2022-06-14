<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "cochesbd";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
$sql=[];
$sql[] = "INSERT INTO coches (Nombre, Modelo, Precio, Genero) VALUES ('audi', 'A5', 60000,'deportivo')";
$sql[] = "INSERT INTO coches (Nombre, Modelo, Precio, Genero) VALUES ('BMW', 'Z6', 50000,'deportivo')";
$sql[] = "INSERT INTO coches (Nombre, Modelo, Precio, Genero) VALUES ('Fiat', '500', 10000,'urbano')";

foreach ($sql as $i) {
	if ($conn->query($i) === TRUE) {
    	echo "Nuevo registro creado.<br>";
	} else {
    	echo "Error: " . $i . "<br>" . $conn->error;
	}
}


$conn->close();