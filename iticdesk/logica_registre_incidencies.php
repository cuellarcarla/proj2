<?php
session_start();

$tipus = $_POST['tipus'];
$titol = $_POST['titol'];
$text = $_POST['text'];
$email = $_SESSION['Email'];
$data = date( "d-m-Y h:m:s a");

//echo "$tipus $titol $text $email $data";
$conn = mysqli_connect("localhost", "anna", "anna", "anna_lea_iticdesk");

if(!$conn){
    echo "Error al connectar amb la BBDD";
}

$sql = "INSERT INTO Incidencies (`Id_referencia`, `Tipus`, `Titol`, `Text_descriptiu`, `Usuari`, `Data`, `Estat`) VALUES ( NULL,\"$tipus\",\"$titol\",\"$text\",\"$email\",\"$data\",\"Oberta\")";

$insert = mysqli_query($conn, $sql);

if(mysqli_affected_rows($conn)>0){
    echo "S'HA REGISTRAR CORRECTAMENT  ";
    echo "<a href=\"registre_incidencies.php\"><button>REGISTRAR UNA NOVA INCIDENCIA</button></a>";
    echo "<a href=\"acces.php\"><button>TORNAR AL HOME</button></a>";

}else{
    echo "NO S'HA REGISTRAT CORRECTAMENT";
    echo "<a href=\"registre_incidencies.php\"><button>REGISTRAR UNA NOVA INCIDENCIA</button></a>";
    echo "<a href=\"acces.php\">TORNAR AL HOME</a>";
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body style="background-color: #A9F5F2;">
    
</body>
</html>