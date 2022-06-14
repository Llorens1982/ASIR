<html>
<title>Función</title>
<body>
<?php    

$dividendo1=$_POST["dividendo1"];
$dividendo2=$_POST["dividendo2"];

    if ($dividendo1 <1 || $dividendo1 >10){
      echo "<p>Número incorrecto</p>";
        }
    elseif ($dividendo2 <10 || $dividendo2 > 20) {
        echo "<p>Número incorrecto</p>";
        }
    else {
    echo "<table border='3'>";

//construcción de las filas del 50 al 60 en el eje X

echo "<tr>";
echo "<th bgcolor='blue'> </th>";
for ($x=50; $x<=60; $x=$x+1)
	{
	 echo "<th bgcolor='purple'> $x </th>";
	}
echo "</tr>";

//construcción de la tabla del 1 al 10 en el eje Y

for ($x=1; $x<=10; $x=$x+1)

for ($x=$dividendo1; $x<=$dividendo2; $x=$x+1)
{
	if ($x%2==0)
{
	$color='brown';
}
	else
{
	$color='yellow';
}	
//construcción de las columnas

echo "<tr>";
echo "<td bgcolor='purple'> $x </td>"; //nombre de la fila
for ($y=50; $y<=60; $y=$y+1 ) 

//comprueba la divisibilidad

{
	if ($y%$x==0)
	{$respuesta="*";}
	else
	{$respuesta="-";}
	echo "<td bgcolor='$color'> $respuesta </td> ";
}
	echo "</tr>";
}
echo "</table>";
}   
?>
</body>
</html>
