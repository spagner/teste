<?php 
@session_start();
if(@$_SESSION['nivel_usuario'] == 'operador'){
	echo "<script>window.location='../index.php'</script>";
}

 ?>