<?php
include 'conexion.php';
$sql = "SELECT * FROM discos WHERE precio<".$_GET['precio']." ORDER BY precio ASC";


$result = $conn->query($sql);

if ($result->num_rows > 0) {
 
    while($row = $result->fetch_assoc()) {
        echo "id: " . $row["id"] . " | nombre: " . $row["Nombre"] . " | Modelo: " . $row["Modelo"]. " | precio: " . $row["Precio"]. " | genero: " . $row["Genero"]."<br>";
} else {
    echo "0 results";
}
$conn->close();
?>