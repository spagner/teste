<?php
require_once("../conexao.php");
$nome = $_POST['nome_dept'];
$telefone = $_POST['tel_dept'];
$endereco = $_POST['end_dept'];
$email = $_POST['email_dept'];
$qtd_tar = $_POST['qtd_tar_dept'];
$limitar_operador = $_POST['limitar_operador'];
$relatorio_pdf = $_POST['relatorio_pdf'];
$cabecalho_rel_img = $_POST['cabecalho_rel_img'];
$itens_por_pagina = $_POST['itens_por_pagina'];
$logs = $_POST['logs'];
$dias_excluir_logs = $_POST['dias_excluir_logs'];

$query = $pdo->prepare("UPDATE config SET nome = :nome, endereco = :endereco, telefone = :telefone, email = :email, qtd_tarefas = '$qtd_tar', limitar_operador = '$limitar_operador', relatorio_pdf = '$relatorio_pdf', cabecalho_rel_img = '$cabecalho_rel_img', itens_por_pagina = '$itens_por_pagina', logs = '$logs', dias_excluir_logs = '$dias_excluir_logs'");

$query->bindValue(":nome", "$nome");
$query->bindValue(":endereco", "$endereco");
$query->bindValue(":telefone", "$telefone");
$query->bindValue(":email", "$email");
$query->execute();

echo 'Salvo com Sucesso';


 ?>