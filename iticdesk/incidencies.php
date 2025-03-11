<?php session_start();
    if(! isset($_SESSION['log'])){
        header("Location: index.html");
    }
    echo "Dades: ";
    echo $_SESSION['Rol'];
    echo " ";
    echo $_SESSION['Nom'];
    $rol = $_SESSION['Rol'];
    $email = $_SESSION['Email'];
    
    $conn = mysqli_connect("localhost", "anna", "anna", "anna_lea_iticdesk");

    if(!$conn){
        echo "Error al connectar amb la BBDD";
    }

    switch ($rol) {
        case 'Professor':
            $sql="SELECT * FROM Incidencies WHERE Usuari=\"$email\" ORDER BY Tipus,Data ASC";
            break;

        case 'Administrador':
            $sql = "SELECT * FROM Incidencies ORDER BY Tipus,Data ASC";
            break;
    }

    $query = mysqli_query($conn, $sql);

    while( $row = mysqli_fetch_array($query)){
        echo $row['Id_referencia'];
        echo " ";
        echo $row['Tipus'];
        echo " ";
        echo $row['Titol'];
        echo " ";
        echo $row['Text_descriptiu'];
        echo " ";
        echo $row['Usuari'];
        echo " ";
        echo $row['Data'];
        echo " ";
        echo $row['Estat'];
        echo "<hr>";
    }

?>



<!DOCTYPE html>
<html>
<body style="background-color: #A9F5F2;">
    

<a href=acces.php><button>Anar al home</button></a>
<form action="logout.php" method="post">
<input type="submit"  name="logout" value="Logout">
</form>	

</body>
</html>