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
?>

<!DOCTYPE html>
<html>
<body style="background-color: #A9F5F2;">
    
<form action="logica_registre_incidencies.php" method="POST">
    <select name="tipus">
        <option value="TIPUS I">TIPUS I</option>
        <option value="TIPUS II">TIPUS II</option>
        <option value="TIPUS III">TIPUS III</option>
        <option value="TIPUS IV">TIPUS IV</option>
    </select>
    <input placeholder="Títol" type="text" name="titol" id="">
    <input placeholder="Text descriptiu" type="text" name="text" id="">
    <input type="submit" value="ENVIAR">
</form>
 

<a href=acces.php><button>Anar al home</button></a>
<form action="logout.php" method="post">
<input type="submit"  name="logout" value="Logout">
</form>	

</body>
</html>