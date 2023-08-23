<?php
require_once("../../conexao.php");
$pagina = 'requerentes';

$nome = $_POST['nome'];
$sexo = $_POST['sexo'];
$racacor = $_POST['racacor'];
$etnia = $_POST['etnia'];
$cpf = $_POST['cpf'];
$nacionalidade = $_POST['nacionalidade'];
$localtrabalho = $_POST['localtrabalho'];
$profissao = $_POST['profissao'];
$renda = $_POST['renda'];
$departamento = $_POST['departamento'];
$municipio = $_POST['municipio'];
$bairro = $_POST['bairro'];
$endereco = $_POST['endereco'];
$numero = $_POST['numero'];
$complemento = $_POST['complemento'];
$cep = $_POST['cep'];
$telefone = $_POST['telefone'];
$qtdpessoafamilia = $_POST['qtdpessoafamilia'];
$tiporesidencia = $_POST['tiporesidencia'];
$qtdcomodoresidencia = $_POST['qtdcomodoresidencia'];
$energia = $_POST['energia'];
$aguatratada = $_POST['aguatratada'];
$esgoto = $_POST['esgoto'];
$grauresponsabilidadecombeneficiario = $_POST['grauresponsabilidadecombeneficiario'];
$grauparentescodotutor = $_POST['grauparentescodotutor'];
$rg = $_POST['rg'];
$emissao = $_POST['emissao'];
$emissor = $_POST['emissor'];
$uf = $_POST['uf'];
$email = $_POST['email'];

$id = @$_POST['id'];





if($id == "" || $id == 0){
	$query = $pdo->prepare("INSERT INTO $pagina SET nome =:nome, sexo ='$sexo', racacor ='$racacor', etnia='$etnia', cpf=:cpf, nacionalidade='$nacionalidade', localtrabalho=:localtrabalho, profissao=:profissao, renda=:renda, departamento='$departamento', municipio='$municipio', bairro=:bairro, endereco=:endereco, numero=:numero, complemento=:complemento, cep=:cep, telefone=:telefone, qtdpessoafamilia=:qtdpessoafamilia, tiporesidencia='$tiporesidencia', qtdcomodoresidencia=:qtdcomodoresidencia, energia='$energia', aguatratada='$aguatratada', esgoto='$esgoto', grauresponsabilidadecombeneficiario='$grauresponsabilidadecombeneficiario', grauparentescodotutor=:grauparentescodotutor, rg=:rg, emissao='$emissao', emissor=:emissor, uf='$uf', email=:email");

}else{
	$query = $pdo->prepare("UPDATE $pagina SET nome =:nome, sexo ='$sexo', racacor ='$racacor', etnia ='$etnia', cpf =:cpf, nacionalidade ='$nacionalidade', localtrabalho =:localtrabalho, profissao =:profissao, renda =:renda, departamento ='$departamento', municipio='$municipio', bairro=:bairro, endereco=:endereco, numero=:numero, complemento=:complemento, cep=:cep, telefone=:telefone, qtdpessoafamilia=:qtdpessoafamilia, tiporesidencia='$tiporesidencia', qtdcomodoresidencia=:qtdcomodoresidencia, energia='$energia', aguatratada='$aguatratada', esgoto='$esgoto', grauresponsabilidadecombeneficiario='$grauresponsabilidadecombeneficiario', grauparentescodotutor=:grauparentescodotutor, rg=:rg, emissao='$emissao', emissor=:emissor, uf='$uf', email=:email where id = '$id'");
}

$query->bindValue(":nome", "$nome");
$query->bindValue(":cpf", "$cpf");
$query->bindValue(":localtrabalho", "$localtrabalho");
$query->bindValue(":profissao", "$profissao");
$query->bindValue(":renda", "$renda");
$query->bindValue(":bairro", "$bairro");
$query->bindValue(":endereco", "$endereco");
$query->bindValue(":numero", "$numero");
$query->bindValue(":complemento", "$complemento");
$query->bindValue(":cep", "$cep");
$query->bindValue(":telefone", "$telefone");
$query->bindValue(":qtdpessoafamilia", "$qtdpessoafamilia");
$query->bindValue(":qtdcomodoresidencia", "$qtdcomodoresidencia");
$query->bindValue(":grauparentescodotutor", "$grauparentescodotutor");
$query->bindValue(":rg", "$rg");
$query->bindValue(":emissor", "$emissor");
$query->bindValue(":email", "$email");
$query->execute();
echo 'Salvo com Sucesso';


?>