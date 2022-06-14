 
<?php
$conexion = new mysqli("localhost","root");
if (! $conexion)
{
	exit ('error'. $conexion->error);
}

$bbdd = 'biblioteca';

$orden='CREATE DATABASE '.$bbdd;
$conexion->query($orden);


$conexion->select_db($bbdd);


$orden = 'CREATE TABLE usuarios(
		id int(8),
		nombre varchar(32),
		clave varchar(64),
		tipo int(2)
	)';

$conexion->query($orden);


$orden = 'CREATE TABLE libros(
		id int(8),
		nombre varchar(128),
		autor varchar(64),
		isbn varchar(64),
		puntuacion int(8),
		genero varchar(64)
	)';
$conexion->query($orden);
?>
