<?php
require_once("../../conexao.php");
$pagina = 'operadores';
$id = @$_POST['id-excluir'];

//excluir a imagem
$query = $pdo->query("SELECT * FROM $pagina where id = '$id'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$foto = $res[0]['foto'];
$nome = $res[0]['nome'];
if($foto != "sem-foto.jpg"){
	@unlink('../../img/funcionarios/'.$foto);	
}


$query = $pdo->query("DELETE FROM $pagina where id = '$id'");
$query = $pdo->query("DELETE FROM usuarios where id_pessoa = '$id' and nivel = 'operadores'");


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