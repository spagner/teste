<?php 
@session_start();
if(@$_SESSION['nivel_usuario'] == 'visitador'){
	echo "<script>window.location='../index.php'</script>";
}

 ?>