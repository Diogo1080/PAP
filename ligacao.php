<?php 
	session_start(); 
	$con = mysqli_connect("localhost", "root", "" , "estrela_azul");
	if (!isset($_SESSION['permissao'])) {
		header('Location: index.php');
	}
?>