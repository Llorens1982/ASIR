<?php
include 'cabecera.php';

$nom=$_POST['nom'];
$pass=$_POST['pass'];
$passcifrado=md5($pass);


@$conexion = new mysqli($servidor,$userbd,$passbd);
$conexion->select_db($nombd);

$orden='select * from usuarios where nombre="'.$nom.'" AND clave="'.$passcifrado.'"';
$res=$conexion->query($orden);

if ($res->num_rows>0)	
	{echo "Contraseña correcta";}
else
	{echo "Usuario o Contraseña INCORRECTOS";}

?>
