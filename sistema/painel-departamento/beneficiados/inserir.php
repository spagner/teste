<?php
require_once("../../conexao.php");
$pagina = 'beneficiados';

$nome = $_POST['nome'];
$cpf = $_POST['cpf'];
$sexo = $_POST['sexo'];
$racacor = $_POST['racacor'];
$etnia = $_POST['etnia'];
$tiposangue = $_POST['tiposangue'];
$numerodoc = $_POST['numerodoc'];
$dtemissao = $_POST['dtemissao'];
$orgaoemissor = $_POST['orgaoemissor'];
$uf = $_POST['uf'];
$data_nasc = $_POST['data_nasc'];
$escolaridade = $_POST['escolaridade'];
$nacionalidade = $_POST['nacionalidade'];
$naturalidade = $_POST['naturalidade'];
$residecomresp = $_POST['residecomresp'];
@$programasocial = $_POST['programasocial'];
$programanome = $_POST['programanome'];
$programavalor = $_POST['programavalor'];
$nrtitulodeclaratorionacionalidadebrasileira = $_POST['nrtitulodeclaratorionacionalidadebrasileira'];
$cedulaestrangeira = $_POST['cedulaestrangeira'];
$carteiramigratorio = $_POST['carteiramigratorio'];
$registronacionalmigratorio = $_POST['registronacionalmigratorio'];
$grauautismo = $_POST['grauautismo'];
$cid = $_POST['cid'];
$nrcertidaonasc = $_POST['nrcertidaonasc'];
$nrpassaporte = $_POST['nrpassaporte'];
$endereco = $_POST['endereco'];
$numero = $_POST['numero'];
$bairro = $_POST['bairro'];
@$municipio = $_POST['municipio'];
$idreq = @$_POST['idreqe'];
$telefone = $_POST['telefone'];
$pai = $_POST['pai'];
$mae = $_POST['mae'];
$cep = $_POST['cep'];
$id_usr = $_POST['id_usr'];



$departamento = $_POST['departamento'];


//$obs = $_POST['obs']; // vai ser alimentado de outra maneira
//$ativo = $_POST['ativo'];

$id = @$_POST['id'];



$programavalor = str_replace(',', '.', $programavalor);


$query = $pdo->query("SELECT * FROM $pagina where cpf = '$cpf'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$id_reg = @$res[0]['id'];
if(@count($res) > 0 and $id_reg != $id){
	echo 'O CPF já está cadastrado!';
	exit();
}

$nome_req = 'nao pegou';
$endereco_req = 'nao pegou';
	$numero_req = '';
	$bairro_req = '';
	$municipio_req = '';
	$cep_req = '';
	$telefone_req = 'nao pegou';

//recuperar o endereço do requerente
$query_con = $pdo->query("SELECT * FROM requerentes where id = '$idreq'");
$res_con = $query_con->fetchAll(PDO::FETCH_ASSOC);
if(count($res_con) > 0){
	$nome_req = $res_con[0]['nome'];
	$endereco_req = $res_con[0]['endereco'];//
	$numero_req = $res_con[0]['numero'];//
	$bairro_req = $res_con[0]['bairro'];//
	$municipio_req = $res_con[0]['municipio'];//
	$cep_req = $res_con[0]['cep'];
	$telefone_req = $res_con[0]['telefone'];
}

if ($endereco == '') {
	$endereco = $endereco_req;
}

if ($numero == '') {
	$numero = $numero_req;
}

if ($bairro == '') {
	$bairro = $bairro_req;
}

if ($telefone == '' ) {
	$telefone = $telefone_req;
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



if($id == "" || $id == 0){
	$query = $pdo->prepare("INSERT INTO $pagina SET nome = :nome, cpf = :cpf, sexo = '$sexo', racacor = '$racacor', etnia = '$etnia', numerodoc = :numerodoc, dtemissao = '$dtemissao', orgaoemissor = :orgaoemissor, uf = '$uf', nacionalidade = '$nacionalidade', naturalidade = :naturalidade, nrcertidaonasc = :nrcertidaonasc, nrtitulodeclaratorionacionalidadebrasileira = :nrtitulodeclaratorionacionalidadebrasileira, nrpassaporte = :nrpassaporte, cedulaestrangeira = :cedulaestrangeira, carteiramigratorio = :carteiramigratorio, registronacionalmigratorio = :registronacionalmigratorio, telefone = :telefone, escolaridade = '$escolaridade', pai = :pai, mae = :mae, programasocial = '$programasocial', programanome = :programanome, programavalor = :programavalor, grauautismo = '$grauautismo', cid = :cid, id_usr = '$id_usr', endereco = :endereco, numero = :numero, bairro = :bairro, municipio = '$municipio', cep = :cep, data_nasc = '$data_nasc', departamento = '$departamento', foto = '$imagem', tiposangue = '$tiposangue', data_cad = curDate(), residecomresp = '$residecomresp', ativo = 'Sim'");//obs e situacaocarteira e datarequerimento e datalimiterequerimento

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

//situacaocarteira  = Expedido   /   Vencido     /    Reimpresso


}else{
	if($imagem == "sem-foto.jpg"){
		$query = $pdo->prepare("UPDATE $pagina SET nome = :nome, cpf = :cpf, sexo = '$sexo', racacor = '$racacor', etnia = '$etnia', numerodoc = :numerodoc, dtemissao = '$dtemissao', orgaoemissor = :orgaoemissor, uf = '$uf', nacionalidade = '$nacionalidade', naturalidade = :naturalidade, nrcertidaonasc = :nrcertidaonasc, nrtitulodeclaratorionacionalidadebrasileira = :nrtitulodeclaratorionacionalidadebrasileira, nrpassaporte = :nrpassaporte, cedulaestrangeira = :cedulaestrangeira, carteiramigratorio = :carteiramigratorio, registronacionalmigratorio = :registronacionalmigratorio, telefone = :telefone, escolaridade = '$escolaridade', pai = :pai, mae = :mae, programasocial = '$programasocial', programanome = :programanome, programavalor = :programavalor, grauautismo = '$grauautismo', cid = :cid, id_usr = '$id_usr', endereco = :endereco, numero = :numero, bairro = :bairro, municipio = '$municipio', cep = :cep, data_nasc = '$data_nasc', departamento = '$departamento', tiposangue = '$tiposangue', data_cad = curDate(), residecomresp = '$residecomresp', id_req = '$idreq' where id = '$id'");
	}else{

		$query = $pdo->query("SELECT * FROM $pagina where id = '$id'");
		$res = $query->fetchAll(PDO::FETCH_ASSOC);
		$foto = $res[0]['foto'];
		if($foto != "sem-foto.jpg"){
			@unlink('../../img/beneficiados/'.$foto);	
		}

		$query = $pdo->prepare("UPDATE $pagina SET nome = :nome, cpf = :cpf, sexo = '$sexo', racacor = '$racacor', etnia = '$etnia', numerodoc = :numerodoc, dtemissao = '$dtemissao', orgaoemissor = :orgaoemissor, uf = '$uf', nacionalidade = '$nacionalidade', naturalidade = :naturalidade, nrcertidaonasc = :nrcertidaonasc, nrtitulodeclaratorionacionalidadebrasileira = :nrtitulodeclaratorionacionalidadebrasileira, nrpassaporte = :nrpassaporte, cedulaestrangeira = :cedulaestrangeira, carteiramigratorio = :carteiramigratorio, registronacionalmigratorio = :registronacionalmigratorio, telefone = :telefone, escolaridade = '$escolaridade', pai = :pai, mae = :mae, programasocial = '$programasocial', programanome = :programanome, programavalor = :programavalor, grauautismo = '$grauautismo', cid = :cid, id_usr = '$id_usr', endereco = :endereco, numero = :numero, bairro = :bairro, municipio = '$municipio', cep = :cep, data_nasc = '$data_nasc', departamento = '$departamento', foto = '$imagem', tiposangue = '$tiposangue', data_cad = curDate(), residecomresp = '$residecomresp', id_req = '$idreq' where id = '$id'");
	}
	


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

	
}

echo 'Salvo com Sucesso';


?>