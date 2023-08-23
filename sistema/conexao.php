<?php 
date_default_timezone_set('America/Sao_Paulo');


$url_sistema = "http://$_SERVER[HTTP_HOST]/";
$url = explode("//", $url_sistema);
if($url[1] == 'localhost/'){
	$url_sistema = "http://$_SERVER[HTTP_HOST]/autismo/sistema/";
}

$usuario = 'root';
$senha = '';
$servidor = 'localhost';
$banco = "autismo";

/*
$banco = "geneso40_igreja";
$servidor = "localhost";
$usuario = "geneso40_igreja";
$senha = "igreja@discipulando";
*/

try {
	$pdo = new PDO("mysql:dbname=$banco;host=$servidor", "$usuario", "$senha");
} catch (Exception $e) {
	echo 'Erro ao conectar com o Banco de Dados! <br><br>';
}


$email_super_adm = "sistemasparaciapd@gmail.com"; //email principal do Departamento
$nome_departamento_sistema = "CIAPD";
$telefone_departamento_sistema = '(00) 00000-0000';
$endereco_departamento_sistema = 'Av. São Sebastião, Número 1195, Bairro Santa Tereza - Boa Vista - RR';



//VARIAVEIS GLOBAIS
$quantidade_tarefas = 20; //exibir as proximas 20 tarefas no painel do Departamento
$limitar_operador = 'Sim'; //Se tiver sim, o tesoureiro nao poderá excluir e nem editar as ofertas e dizimos.
$relatorio_pdf = 'Sim'; //SE ESSA OPÇÃO ESTIVER NÃÕ, O RELATÓRIO SERÁ GERADO EM HTML
$cabecalho_rel_img = 'Sim'; //SE ESSA OPÇÃO ESTIVER SIM, O RELATÓRIO TERÁ UMA IMAGEM NO CABEÇALHO, CADA DEPARTMTO DEVERÁ SUBIR A SUA IMAGEM JPG NO CADASTRO DE DEPARTMTO
$itens_por_pagina = 9;
$logs = 'Sim';
$dias_excluir_logs = 40;


//INSERIR REGISTROS INICIAIS

//Criar um administrador (padrão)
$query = $pdo->query("SELECT * FROM administradores");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$total_reg = count($res);

if($total_reg == 0)
$pdo->query("INSERT INTO administradores SET nome = 'Super Administrador', email = '$email_super_adm', cpf = '000.000.000-00', telefone = '(00)00000-0000', foto = 'sem-foto.jpg' ");


//Criar o cadastro do Administrador na tabela de diretores
$query = $pdo->query("SELECT * FROM diretores");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$total_reg = count($res);

if($total_reg == 0)
$pdo->query("INSERT INTO diretores SET nome = 'Super Administrador', email = '$email_super_adm', cpf = '000.000.000-00', telefone = '(00)00000-0000', foto = 'sem-foto.jpg', data_cad = curDate(), data_nasc = curDate(), departamento = 1 ");



//Criar um Usuário Super com nivel de Administrador padrão
$query = $pdo->query("SELECT * FROM usuarios");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$total_reg = count($res);

if($total_reg == 0)
$pdo->query("INSERT INTO usuarios SET nome = 'Super Administrador', email = '$email_super_adm', cpf = '000.000.000-00', senha = '123', nivel = 'administrador', id_pessoa = '1', foto = 'sem-foto.jpg' ");


//Criar um departamento matriz
$query = $pdo->query("SELECT * FROM departamentos");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$total_reg = count($res);

if($total_reg == 0)
$pdo->query("INSERT INTO departamentos SET nome = '$nome_departamento', telefone = '$telefone_departamento', endereco = '$endereco_departamento', matriz = 'Sim', imagem = 'sem-foto.jpg', data_cad = curDate(), diretor = '1', logo_rel = 'sem-foto.jpg', cab_rel = 'sem-foto.jpg', carteirinha_rel = 'sem-foto.jpg', email = '$email_super_adm' ");



//Criar o cargo de Membro
$query = $pdo->query("SELECT * FROM cargos");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$total_reg = count($res);

if($total_reg == 0)
$pdo->query("INSERT INTO cargos SET nome = 'operador'");


//Criar a frequencia de uma vez (unica)
$query = $pdo->query("SELECT * FROM frequencias");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$total_reg = count($res);

if($total_reg == 0)
$pdo->query("INSERT INTO frequencias SET frequencia = 'Uma Vez', dias = 0");


//Criar variaveis padrões do sistema
$query = $pdo->query("SELECT * FROM config");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$total_reg = count($res);

if($total_reg == 0){
$pdo->query("INSERT INTO config SET nome = '$nome_departamento_sistema', email = '$email_super_adm', endereco = '$endereco_departamento_sistema', telefone = '$telefone_departamento_sistema', qtd_tarefas = '$quantidade_tarefas', limitar_operador = '$limitar_operador', relatorio_pdf = '$relatorio_pdf', cabecalho_rel_img = '$cabecalho_rel_img', itens_por_pagina = '$itens_por_pagina', logs = '$logs', notificacao = curDate(), dias_excluir_logs = '$dias_excluir_logs' ");

}


//BUSCAR INFORMAÇÕES DE CONFIGURAÇÕES NO BANCO
$query = $pdo->query("SELECT * FROM config");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$email_super_adm = $res[0]['email'];
$nome_departamento_sistema = $res[0]['nome'];
$telefone_departamento_sistema = $res[0]['telefone'];
$endereco_departamento_sistema = $res[0]['endereco'];
$quantidade_tarefas = $res[0]['qtd_tarefas'];
$limitar_operador = $res[0]['limitar_operador'];
$relatorio_pdf = $res[0]['relatorio_pdf'];
$cabecalho_rel_img = $res[0]['cabecalho_rel_img'];
$itens_por_pagina = $res[0]['itens_por_pagina'];
$logs = $res[0]['logs'];
$dias_excluir_logs = $res[0]['dias_excluir_logs'];
 ?>