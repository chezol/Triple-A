<?php 

	include 'conn.php';

	$idno = $_POST['id_number'];
	$fname = $_POST['first_name'];
	$lname = $_POST['last_name'];
	$pass = $_POST['password'];
	$level = $_POST['level'];
	$alert = $_POST['alert_activated'];

	$connect->query("UPDATE accounts SET alert_activated = false WHERE alert_activated = true");
	
?>