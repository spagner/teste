<?php
require_once("../../conexao.php");
$pagina = 'beneficiados';
$id = @$_POST['id-excluir'];
$idreq = @$_POST['idreq-excluido'];


$query = $pdo->query("SELECT * FROM requerentes where id = '$idreq'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
if(@count($res) > 0){
	echo 'Este Beneficiário não pode ser excluído, primeiro exclua o requerente relacionado a ele para depois excluir este Beneficiário!';
	exit();
}

//excluir a imagem
$query = $pdo->query("SELECT * FROM $pagina where id = '$id'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$foto = $res[0]['foto'];
if($foto != "sem-foto.jpg"){
	@unlink('../../img/beneficiados/'.$foto);	
}


$query = $pdo->query("DELETE FROM $pagina where id = '$id'");

echo 'Excluído com Sucesso';
?>