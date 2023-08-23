<?php
require_once("../../conexao.php");
$pagina = 'requerentes';
$id = @$_POST['id-excluir'];

$query = $pdo->query("SELECT * FROM beneficiados where id_req = '$id'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
if(@count($res) > 0){
	echo 'Este Requerente não pode ser excluído, primeiro exclua os beneficiários relacionados a ele para depois excluir este Requerente!!';
	exit();
}

$query = $pdo->query("DELETE FROM $pagina where id = '$id'");


echo 'Excluído com Sucesso';
?>