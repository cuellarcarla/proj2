<?php
session_start();

$_SESSION['user_login']='intento';
$email=$_POST['user_log'];
$password=$_POST['pswd'];

$conn = mysqli_connect("localhost", "anna", "anna", "anna_lea_iticdesk");

if(! $conn){
	echo "Error al connectar amb la BBDD";
	exit();
}

$sql = "SELECT * FROM Usuaris WHERE Email = \"$email\" AND Contrasenya = \"$password\"";

$query= mysqli_query($conn, $sql);
$rows = mysqli_num_rows($query);


if($rows != 1){
	header("Location: index.html");
}else{
	$array_query = mysqli_fetch_array($query);
	$_SESSION['Rol'] = $array_query["Rol"];	
	$_SESSION['Nom'] = $array_query["Nom"];	
	$_SESSION['Email'] = $array_query["Email"];	
	
	$_SESSION['user_login']=$user;
	$_SESSION['log']=true;
	header("Location: acces.php");
}
/*

if ($user != $password) {
#	echo "Login incorrecte!";
	
	session_destroy();
		
	header("Location: ./index.html");
}
else {


	echo "<h1>Bienvenido:  $user</h1> <br>";
	$_SESSION['user_login']=$user;
	$_SESSION['log']=true;


	header("Location: ./login_correct.php");
}
*/



?>
