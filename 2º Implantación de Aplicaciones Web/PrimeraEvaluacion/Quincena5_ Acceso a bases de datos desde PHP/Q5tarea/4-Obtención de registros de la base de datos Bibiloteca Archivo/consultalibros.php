<!DOCTYPE html>
<html lang="es">
<head>
<title>Ejercicio 4</title>
<meta charset="UTF-8">
</head>
<body> 
	<h1>Mostrar libros</h1>
	<h3>Se realizara una busqueda atendiendo a todos los campos introducidos</h3>
	<h3>Deja el campo en blanco para ignorar ese campo</h3>

	<form action="consultalibros.php" method = "POST">	
	
		<table>
	
			<tr>
				<td></td>
				<td>nombre: </td>
				<td><input type="text" name="nombre"></td> 
				<td>autor: </td>
				<td><input type="text" name="autor"> </td>
				<td>isbn:  </td>
				<td><input type="text" name="isbn"> </td>
				<td>puntuacion:  </td>
				<td><select name="puntuacion">
								<option value="">-</option> 	
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>					
							</select> </td>
				<td>genero: </td>
				<td><input type="text" name="genero"> </td>
				<td><input type="submit" value="Listar"></td>
			</tr>
			
			
	
			<?php	
				include 'cabecera.php';
				

				if (isset($_POST['nombre'])){$nombre=$_POST['nombre'];}else{$nombre='';}
				if (isset($_POST['autor'])){$autor=$_POST['autor'];}else{$autor='';}
				if (isset($_POST['isbn'])){$isbn=$_POST['isbn'];}else{$isbn='';}
				if (isset($_POST['puntuacion'])){$puntuacion=$_POST['puntuacion'];}else{$puntuacion='999';} 
            
				if (isset($_POST['genero'])){$genero=$_POST['genero'];}else{$genero='';}
									
				
				@$conexion = mysql_connect ($servidor,$userbd,$passbd);
				mysql_select_db($nombbdd,$conexion);
				
			
				if ($puntuacion=='')
					{$orden="select * from libros where puntuacion>=0";} 
				else
					{$orden="select * from libros where puntuacion='$puntuacion'";} 
 		
				if ($nombre<>'') {$orden=$orden." AND nombre='".$nombre."'";}
				if ($autor<>'') {$orden=$orden." AND autor='".$autor."'";}
				if ($isbn<>'') {$orden=$orden." AND isbn='".$isbn."'";}
				if ($genero<>'') {$orden=$orden." AND genero='".$genero."'";}			
		
				

				$res=mysql_query($orden, $conexion);
				
			
				while($fila=mysql_fetch_array($res))
				{
						echo "<tr>";
						echo "<td>".$fila['id']."</td>";
						echo "<td></td>";
						echo "<td>".$fila['nombre']."</td>";
						echo "<td></td>";
						echo "<td>".$fila['autor']."</td>";
						echo "<td></td>";
						echo "<td>".$fila['isbn']."</td>";
						echo "<td></td>";
						echo "<td>".$fila['puntuacion']."</td>";
						echo "<td></td>";
						echo "<td>".$fila['genero']."</td>";
					echo "</tr>";
				}
			?>
		</table>
	</form>
</body>
</html>
