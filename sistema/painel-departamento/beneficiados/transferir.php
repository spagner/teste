<?php
@session_start();
$id_usuario = @$_SESSION['id_usuario'];
require_once("../../conexao.php");

//usarei esse código para transferir funcionario de um setor para o outro
$pagina = 'beneficiados';

$id = @$_POST['id'];
$departamento = @$_POST['departamento'];
$obs = @$_POST['obs'];
$departamento_saida = $_POST['departamento_saida'];

//mudar o funcionario de departamento
$query = $pdo->query("UPDATE $pagina SET departamento = '$departamento' where id = '$id'");

$query = $pdo->prepare("INSERT INTO transferencias SET membro = '$id', departamento_saida = '$departamento_saida',  departamento_entrada = '$departamento', usuario = '$id_usuario', data = curDate(), obs = :obs");
$query->bindValue(":obs", "$obs");
$query->execute();

echo 'Salvo com Sucesso';
?>