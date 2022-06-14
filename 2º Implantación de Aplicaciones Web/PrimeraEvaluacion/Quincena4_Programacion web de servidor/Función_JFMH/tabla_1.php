<html>
<head>
<title>	Tabla</title>
<body>
<?php
//aquí comienza la tabla
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
	{$res="*";}
	else
	{$res="-";}
	echo "<td bgcolor='$color'> $res </td> ";
}
	echo "</tr>";
}
echo "</table>";
?>
</body>
</head>
</html>

