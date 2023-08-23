<?php 
@session_start();
$nivel = @$_SESSION['nivel_usuario'];

if($limitar_tesoureiro == 'Sim'){
	if($nivel == 'visitador'){
		echo 'Você não tem permissão para executar essa Tarefa! Verifique com o Administrador!';
		exit();
	}
}
 ?>
