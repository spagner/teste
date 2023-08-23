<?php
require_once("../../conexao.php");
$pagina = 'departamentos';
$obs = $_POST['obs'];
$id = @$_POST['id-obs'];

$query = $pdo->prepare("UPDATE $pagina SET obs = :obs where id = '$id'");
$query->bindValue(":obs", "$obs");
$query->execute();


//EXECUTAR NO LOG
	$tabela = $pagina;
	$acao = 'Edição';
	$id_reg = $id;
	$descricao = 'Lançou Observações';
	$painel = 'Painel Administrativo';
	$departamento = 0;	
	require_once("../../logs.php");

echo 'Salvo com Sucesso';


?>