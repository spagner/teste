<?php
require_once("../../conexao.php");
$pagina = 'departamentos';
$id = @$_POST['id-excluir'];


$query = $pdo->query("SELECT * FROM membros where departamento = '$id'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
if(@count($res) > 0) {
	echo 'Esse Departamento possui funcionários cadastrados, primeiro exclua todos os funcionários para depois fazer a exclusão do Departamento!';
	exit();
}


//excluir a imagem
$query = $pdo->query("SELECT * FROM $pagina where id = '$id'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$foto = $res[0]['imagem'];
$nome = $res[0]['nome'];
if($foto != "sem-foto.jpg"){
	@unlink('../../img/departamentos/'.$foto);	
}


$query = $pdo->query("DELETE FROM $pagina where id = '$id'");


//EXECUTAR NO LOG
	$tabela = $pagina;
	$acao = 'Exclusão';
	$id_reg = $id;
	$descricao = $nome;
	$painel = 'Painel Administrativo';
	$departamento = 0;	
	require_once("../../logs.php");

echo 'Excluído com Sucesso';
?>