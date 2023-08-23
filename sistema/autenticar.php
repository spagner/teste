<?php 
@session_start();
require_once("conexao.php");

$usuario = $_POST['usuario'];
$senha = $_POST['senha'];

$query = $pdo->query("SELECT * FROM usuarios where (email = '$usuario' or cpf = '$usuario') and senha = '$senha'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$total_reg = count($res);

if($total_reg > 0){
	$_SESSION['nome_usuario'] = $res[0]['nome'];
	$_SESSION['id_usuario'] = $res[0]['id'];
	$_SESSION['nivel_usuario'] = $res[0]['nivel'];
	$_SESSION['cpf_usuario'] = $res[0]['cpf'];	
	$_SESSION['id_departamento'] = $res[0]['departamento'];	


	//EXECUTAR NO LOG
	$tabela = 'usuarios';
	$acao = 'Login';
	$id_reg = 0;
	$descricao = 'Login';
	if($res[0]['nivel'] == 'administrador'){
		$painel = 'Painel Administrativo';
		$departamento = 0;
	}else{
		$painel = 'Painel Departamento';
		$departamento = $res[0]['departamento'];
	}
	require_once("logs.php");



	if($res[0]['nivel'] == 'administrador'){
		echo "<script>window.location='painel-admin'</script>";
	}

	if($res[0]['nivel'] == 'secretario'){
		echo "<script>window.location='painel-departamento'</script>";
	}

	if($res[0]['nivel'] == 'diretor'){
		echo "<script>window.location='painel-departamento'</script>";
	}

	if($res[0]['nivel'] == 'operador'){
		echo "<script>window.location='painel-departamento'</script>";
	}

	if($res[0]['nivel'] == 'visitador'){
		echo "<script>window.location='painel-departamento'</script>";
	}
	

}else{
	echo "<script>window.alert('Dados Incorretos')</script>";
	echo "<script>window.location='index.php'</script>";
	
}

?>

<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script type="text/javascript" src="js/alerta-tempo.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>