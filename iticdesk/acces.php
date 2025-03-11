<?php 
session_start(); 
if(! isset($_SESSION['log'])){
    header("Location: index.html");
}

echo "Dades: ";
echo $_SESSION['Rol'];
echo " ";
echo $_SESSION['Nom'];
$rol = $_SESSION['Rol'];
$email = $_SESSION['Email'];

?>

<!DOCTYPE html>
<html>
<body style="background-color: #A9F5F2;">
    
<a href=registre_incidencies.php><button>Registrar incidencies</button></a>
<a href=incidencies.php><button>Consultar incidencies</button></a>
<form action="logout.php" method="post">
<input type="submit"  name="logout" value="Logout">
</form>	

</body>
</html>

