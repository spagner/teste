<?php 
@session_start();
if(@$_SESSION['nivel_usuario'] != 'administrador' and @$_SESSION['nivel_usuario'] != 'secretario'  and @$_SESSION['nivel_usuario'] != 'diretor' and @$_SESSION['nivel_usuario'] != 'operador' and @$_SESSION['nivel_usuario'] != 'visitador'){
	echo "<script>window.location='../index.php'</script>";
	exit();
}

 ?>