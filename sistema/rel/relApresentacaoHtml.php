<?php 
require_once("../conexao.php"); 

$id = $_GET['id'];
$sexo = $_GET['sexo'];

if($sexo == 'menina'){
$imagem = 'apresentacao2.jpg';
}else{
$imagem = 'apresentacao.jpg';	
}

$nome_sede = $nome_departamento_sistema;

$query = $pdo->query("SELECT * FROM beneficiados where id = '$id'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$nome = $res[0]['nome'];
$sexo = $res[0]['sexo'];

$departamento = $res[0]['departamento'];
$cpf = $res[0]['cpf'];
$foto = $res[0]['foto'];
$data_nasc = $res[0]['data_nasc'];
//$cargo = $res[0]['cargo'];

$query = $pdo->query("SELECT * FROM departamentos where id = '$departamento'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$nome_departamento = $res[0]['nome'];
$tel_departamento = $res[0]['telefone'];
$end_departamento = $res[0]['endereco'];
$imagem_departamento = $res[0]['imagem'];
$diretor_departamento = $res[0]['diretor'];
$logo_rel = $res[0]['logo_rel'];
$cart_rel = $res[0]['carteirinha_rel'];


if($logo_rel != 'sem-foto.jpg'){ 
	$imagem_departamento = $logo_rel;

}else{
	$imagem_departamento = 'logo-rel.jpg';
}


if($cart_rel != 'sem-foto.jpg'){ 
	$imagem_carteirinha = $cart_rel;

}else{
	$imagem_carteirinha = 'carteirinha-cab.jpg';
}

$dados_departamento = $end_departamento . ' '.$tel_departamento;



if($data_nasc == "0000-00-00"){
	$data_nasc = date('Y-m-d');
}
$data_nasc = implode('/', array_reverse(explode('-', $data_nasc)));

?>

<!DOCTYPE html>
<html>
<head>
	<title>Requerimento Carteirinha</title>
	<link rel="shortcut icon" href="../img/favicon.ico" />

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">

	
	<style>

 @page {
            margin: 0px;
            background-color: #e6e6e6;
            
        }


.imagem {
width: 100%;
}


.imagem-departamento {
position: absolute;
margin-top: 5px;
width:60px;
margin-left: 10px;
}	

.nome-beneficiado {
position: absolute;
margin-top: 344px;
color:#913610;
font-size:18px;
width:50%;
}


.imagem-beneficiado {
width:100%;
height:100%;
border-radius:7px;
}	

.area-foto{
position: absolute;
margin-top: 75px;
width:65px;
height:78px;
margin-left: 15px;
border-radius:7px;
}

.nome-sede {
position: absolute;
margin-top: 9px;
margin-left: 95px;
color:#545454;
font-size:20px;
width:100%;

}


.dados-departamento {
position: absolute;
margin-top: 24px;
margin-left: 95px;
color:#545454;
font-size:5px;
width:100%;

}


.data-atual {
position: absolute;
margin-top: 546px;
margin-left: 802px;
color:#2b2b2b;
font-size:21px;
width:100%;
font-weight: bold;
}



.setor {
position: absolute;
margin-top: 546px;
margin-left: 263px;
color:#2b2b2b;
font-size:21px;
width:100%;

}


.nascimento {
position: absolute;
margin-top: 143px;
margin-left: 95px;
color:#545454;
font-size:8px;
width:100%;

}


.cpf {
position: absolute;
margin-top: 143px;
margin-left: 240px;
color:#545454;
font-size:8px;
width:100%;
}





</style>


<body style="background-color: #e6e6e6">


<div class="setor"> <?php echo mb_strtoupper($nome_departamento); ?></div>
<div class="nome-beneficiado" align="center"> <?php echo mb_strtoupper($nome); ?></div>
<div class="data-atual"><?php echo $data_nasc; ?> </div>

<img class="imagem" src="<?php echo $url_sistema ?>img/<?php echo $imagem ?>">



</body>


</html>