<?php
require_once("../../conexao.php");
$pagina = 'beneficiados';


$nome = $_POST['nome'];
$cpf = $_POST['cpf'];
$sexo = $_POST['sexo'];
$racacor = $_POST['racacor'];
$etnia = $_POST['etnia'];
$numerodoc = $_POST['numerodoc'];
$dtemissao = $_POST['dtemissao'];
$orgaoemissor = $_POST['orgaoemissor'];
$uf = $_POST['uf'];
$nacionalidade = $_POST['nacionalidade'];
$naturalidade = $_POST['naturalidade'];
$nrcertidaonasc = $_POST['nrcertidaonasc'];
$nrtitulodeclaratorionacionalidadebrasileira = $_POST['nrtitulodeclaratorionacionalidadebrasileira'];
$nrpassaporte = $_POST['nrpassaporte'];
$cedulaestrangeira = $_POST['cedulaestrangeira'];
$carteiramigratorio = $_POST['carteiramigratorio'];
$registronacionalmigratorio = $_POST['registronacionalmigratorio'];
$telefone = $_POST['telefone'];
$escolaridade = $_POST['escolaridade'];
$pai = $_POST['pai'];
$mae = $_POST['mae'];
@$programasocial = $_POST['programasocial'];
$programanome = $_POST['programanome'];
$programavalor = $_POST['programavalor'];
$grauautismo = $_POST['grauautismo'];
$cid = $_POST['cid'];
$id_usr = $_POST['id_usr'];
$endereco = $_POST['endereco'];
$numero = $_POST['numero'];
$bairro = $_POST['bairro'];
@$municipio = $_POST['municipio'];
$cep = $_POST['cep'];
$data_nasc = $_POST['data_nasc'];
$departamento = $_POST['departamento'];
$tiposangue = $_POST['tiposangue'];
$residecomresp = $_POST['residecomresp'];
$idreq = @$_POST['idreq'];//requerente
$id = @$_POST['id'];//beneficiario

//echo "id: ".$id;
//exit();

$query = $pdo->query("SELECT * FROM $pagina where id = '$id' and departamento = '$departamento' and cpf = '$cpf'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$id_reg = @$res[0]['id'];
if(@count($res) > 0 and $id_reg != $id){
	echo 'Autista já está Cadastrado com esse CPF!';
	exit();
}

//SCRIPT PARA SUBIR FOTO NO BANCO
$nome_img = date('d-m-Y H:i:s') .'-'.@$_FILES['imagem']['name'];
$nome_img = preg_replace('/[ :]+/' , '-' , $nome_img);

$caminho = '../../img/beneficiados/' .$nome_img;
if (@$_FILES['imagem']['name'] == ""){
	$imagem = "sem-foto.jpg";
}else{
	$imagem = $nome_img;
}

$imagem_temp = @$_FILES['imagem']['tmp_name']; 
$ext = pathinfo($imagem, PATHINFO_EXTENSION);   
if($ext == 'jpg' or $ext == 'jpeg' or $ext == 'png'){ 
	move_uploaded_file($imagem_temp, $caminho);
}else{
	echo 'Extensão de Imagem não permitida, somente JPG, PNG ou JPEG!';
	exit();
}

$query = $pdo->prepare("INSERT INTO $pagina SET nome = :nome, cpf = :cpf, sexo = '$sexo', racacor = '$racacor', etnia = '$etnia', numerodoc = :numerodoc, dtemissao = '$dtemissao', orgaoemissor = :orgaoemissor, uf = '$uf', nacionalidade = '$nacionalidade', naturalidade = :naturalidade, nrcertidaonasc = :nrcertidaonasc, nrtitulodeclaratorionacionalidadebrasileira = :nrtitulodeclaratorionacionalidadebrasileira, nrpassaporte = :nrpassaporte, cedulaestrangeira = :cedulaestrangeira, carteiramigratorio = :carteiramigratorio, registronacionalmigratorio = :registronacionalmigratorio, telefone = :telefone, escolaridade = '$escolaridade', pai = :pai, mae = :mae, programasocial = '$programasocial', programanome = :programanome, programavalor = :programavalor, grauautismo = '$grauautismo', cid = :cid, id_usr = '$id_usr', endereco = :endereco, numero = :numero, bairro = :bairro, municipio = '$municipio', cep = :cep, data_nasc = '$data_nasc', departamento = '$departamento', foto = '$imagem', tiposangue = '$tiposangue', data_cad = curDate(), residecomresp = '$residecomresp', ativo = 'Sim', id_req = '$idreq'");

	$query->bindValue(":nome", "$nome");
	$query->bindValue(":cpf", "$cpf");	
	$query->bindValue(":numerodoc", "$numerodoc");
	$query->bindValue(":orgaoemissor", "$orgaoemissor");
	$query->bindValue(":naturalidade", "$naturalidade");
	$query->bindValue(":nrcertidaonasc", "$nrcertidaonasc");
	$query->bindValue(":nrtitulodeclaratorionacionalidadebrasileira", "$nrtitulodeclaratorionacionalidadebrasileira");
	$query->bindValue(":nrpassaporte", "$nrpassaporte");
	$query->bindValue(":cedulaestrangeira", "$cedulaestrangeira");
	$query->bindValue(":carteiramigratorio", "$carteiramigratorio");
	$query->bindValue(":registronacionalmigratorio", "$registronacionalmigratorio");
	$query->bindValue(":telefone", "$telefone");
	$query->bindValue(":pai", "$pai");
	$query->bindValue(":mae", "$mae");
	$query->bindValue(":programanome", "$programanome");
	$query->bindValue(":programavalor", "$programavalor");
	$query->bindValue(":cid", "$cid");
	$query->bindValue(":endereco", "$endereco");
	$query->bindValue(":numero", "$numero");
	$query->bindValue(":bairro", "$bairro");
	$query->bindValue(":cep", "$cep");
	$query->execute();

echo 'Adicionado com Sucesso';


?>