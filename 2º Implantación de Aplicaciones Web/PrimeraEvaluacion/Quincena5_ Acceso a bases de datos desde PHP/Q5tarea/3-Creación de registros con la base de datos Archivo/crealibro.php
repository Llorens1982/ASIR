<?php
include 'cabecera.php';


				
$id= $_POST['id'];
$nombre = $_POST['nombre'];
$autor = $_POST['autor'];
$isbn = $_POST['isbn'];
$puntuacion = $_POST['puntuacion'];
$genero = $_POST['genero'];



@$conexion = new mysqli($servidor,$userbd,$passbd);
$conexion->select_db($nombd);


$orden="select * from libros where isbn='$isbn'";

$res=$conexion->query($orden);


if ($res->num_rows==0)	
	{

	
	$cadena="INSERT INTO libros (id, nombre, autor, isbn, puntuacion, genero) VALUES ('%s','%s','%s','%s','%s','%s')"  ;
	$orden=sprintf($cadena,$id,$nombre,$autor,$isbn,$puntuacion,$genero);
	
	
	$res=$conexion->query($orden);

	if ($res) 
		{echo "GRABADO Libro";}
	else
		{echo "ERROR al GUARDAR";}

	
	}
else
	{echo "<br>"."El ISBN introducido ya exite"."<br>";
	}

?>
