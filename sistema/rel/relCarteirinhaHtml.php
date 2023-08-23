<?php 
require_once("../conexao.php"); 

$id = $_GET['id'];

$nome_sede = $nome_departamento_sistema;

$query = $pdo->query("SELECT * FROM beneficiados where id = '$id'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$nome = $res[0]['nome'];
$departamento = $res[0]['departamento'];
$cpf = $res[0]['cpf'];
$rg = $res[0]['numerodoc'];
$cid = $res[0]['cid'];
$tiposangue = $res[0]['tiposangue'];
$data_nasc = $res[0]['data_nasc'];
$naturalidade = $res[0]['naturalidade'];
$pai = $res[0]['pai'];
$mae = $res[0]['mae'];
$endereco = $res[0]['endereco'];
$numero = $res[0]['numero'];
$bairro = $res[0]['bairro'];
$municipio = $res[0]['municipio'];

$foto = $res[0]['foto'];

$data_nasc = $res[0]['data_nasc'];
$id_req = $res[0]['id_req'];

$query = $pdo->query("SELECT * FROM departamentos where id = '$departamento'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$nome_departamento = $res[0]['nome'];
$tel_departamento = $res[0]['telefone'];
$end_departamento = $res[0]['endereco'];
$imagem_departamento = $res[0]['imagem'];
$diretor_departamento = $res[0]['diretor'];
$logo_rel = $res[0]['logo_rel'];
$cart_rel = $res[0]['carteirinha_rel'];

$filiacao = mb_strtoupper($pai). ' e ' .mb_strtoupper($mae);

$enderecoF = $endereco. ', '.$numero. ' bairro '.$bairro. ' - '.mb_strtoupper($municipio);

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

//trata nr cia e vencimento
$hj = date('Y/m/d');
$date = date_create($hj);
$interval = date_interval_create_from_date_string('1826 days');
$res = date_add($date, $interval);
$dt_vencimento = date_format( $res, "Y-m-d");

$year = date("Y");

$nr_cia = $id.''.$year;
$dt_vencimentoF = date_format( $res, "d-m-Y");
$dt_emissaoF = date('d-m-Y');



//CRIAR NR_CARTEIRA CASO ELA NÃO EXISTA
$query = $pdo->query("SELECT * from ciptea where idben = '$id' ");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$total_reg = @count($res);
if($total_reg == 0){
  $pdo->query("INSERT INTO ciptea SET idben = '$id', emissao = CurDate(), vencimento = '$dt_vencimento', cia = '$nr_cia', entrega = '0000-00-00', recebido = ''");  
}else{
    $nr_cia = $res[0]['cia'];
    $dt_vencimento = $res[0]['vencimento'];
    $dt_emissao = $res[0]['emissao'];
}

$dt_vencimentoF = implode('/', array_reverse(explode('-', $dt_vencimento)));
$dt_emissaoF = implode('/', array_reverse(explode('-', $dt_emissao)));


$dados_departamento = $end_departamento . ' '.$tel_departamento;

$query = $pdo->query("SELECT * FROM requerentes where id = '$id_req'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$total_reg = count($res);
if($total_reg > 0){
	$nome_responsavel = $res[0]['nome'];
    $grau_responsavel = $res[0]['grauresponsabilidadecombeneficiario'];
	$cpf_responsavel = $res[0]['cpf'];
	$rg_responsavel = $res[0]['rg'];
	$email_responsavel = $res[0]['email'];
	$endereco_responsavel = $res[0]['endereco'];
	$numero_responsavel = $res[0]['numero'];
	$bairro_responsavel = $res[0]['bairro'];
	$municipio_responsavel = $res[0]['municipio'];
	$telefone_responsavel = $res[0]['telefone'];

	$endereco_resp = ''.$endereco_responsavel. ', Nr '.$numero_responsavel. ', bairro '.$bairro_responsavel.', Município '.$municipio_responsavel;
}else{
	$nome_responsavel = '';
    $grau_responsavel = '';
	$cpf_responsavel = '';
	$rg_responsavel = '';
	$email_responsavel = '';
	$endereco_responsavel = '';
	$numero_responsavel = '';
	$bairro_responsavel = '';
	$municipio_responsavel = '';
	$telefone_responsavel = '';
	$endereco_resp = '';
}

/*
$query = $pdo->query("SELECT * FROM cargos where id = '$cargo'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$nome_cargo = $res[0]['nome'];*/


$data_nasc = implode('/', array_reverse(explode('-', $data_nasc)));
$data_hoje = 'Emitida em: '. implode('/', array_reverse(explode('-', date('Y-m-d'))));
?>

<!DOCTYPE html>
<html>
<head>
	<title>Carteirinha do Departamento</title>
	<link rel="shortcut icon" href="../img/favicon.ico" />

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">

	
	<style>

 @page {
            margin: 0px;
            page-break-after: always;
            
        }


    .image-container {
        position: relative;
        text-align: center;
    }
    .image-container img {
        max-width: 100%;
        height: auto;
    }

    .text-overlay {
        position: absolute;
        top: 40%;
        left: 40%;
        transform: translate(-50%, -50%);
        color: #cecece;
        font-size: 24px;
        text-shadow: 2px 2px 2px rgba(0, 0, 0, 0.7);
    }

.area-foto{
position: absolute;
margin-top: -70px;
margin-left: -60px;
width:65px;
height:78px;
border-radius:7px;
}

.ciptea {
position: absolute;
margin-top: 22px;
margin-left: -177px;
color:#000000;
font-size:8px;
width:100%;
}
.emissao {
position: absolute;
margin-top: 32px;
margin-left: -159px;
color:#000000;
font-size:8px;
width:100%;
}
.validade {
position: absolute;
margin-top: 42px;
margin-left: -158px;
color:#000000;
font-size:8px;
width:100%;
}
.sangue {
position: absolute;
margin-top: 42px;
margin-left: 17px;
color:#000000;
font-size:8px;
width:100%;
}

.nome-beneficiado {
position: absolute;
margin-top: 57px;
margin-left: -80px;
margin-right: 5px;
color:#fff;
font-size:8px;
width:100%;
line-height: 1.1;
}

.rg {
position: absolute;
margin-top: 72px;
margin-left: -195px;
color:#fff;
font-size:8px;
width:100%;
}


.cid {
position: absolute;
margin-top: 72px;
margin-left: -2px;
color:#fff;
font-size:8px;
width:100%;
}


.cpf {
position: absolute;
margin-top: 82px;
margin-left: -167px;
color:#fff;
font-size:8px;
width:100%;
}

.nascimento {
position: absolute;
margin-top: 82px;
margin-left: 20px;
color:#fff;
font-size:8px;
width:100%;
}

.natural {
position: absolute;
margin-top: 92px;
margin-left: -135px;
color:#fff;
font-size:8px;
width:100%;
}

.filiacao {
position: absolute;
margin-top: 105px;
margin-left: -75px;
color:#000000;
font-size:8px;
width:100%;
}

.endereco{
position: absolute;
margin-top: 140px;
margin-left: -75px;
color:#000000;
font-size:8px;
width:100%;
line-height: 1.1;
}

.dados-responsavel {
position: absolute;
margin-top: -120px;
margin-left: -77px;
color:#fff;
font-size:12px;
width:100%;
line-height: 1.1;
}

.responsavel-nome {
position: absolute;
margin-top: -100px;
margin-left: -85px;
margin-right: 10px;
color:#000000;
font-size:8px;
width:100%;
line-height: 1.1;
}

.responsavel-cpf {
position: absolute;
margin-top: -70px;
margin-left: -185px;
color:#000000;
font-size:8px;
width:100%;
line-height: 1.1;
}

.responsavel-rg {
position: absolute;
margin-top: -70px;
margin-left: -4px;
color:#000000;
font-size:8px;
width:100%;
line-height: 1.1;
}

.responsavel-emailreq {
position: absolute;
margin-top: -55px;
margin-left: -80px;
margin-right: 10px;
color:#000000;
font-size:8px;
width:100%;
line-height: 1.1;
}

.responsavel-endereco {
position: absolute;
margin-top: -30px;
margin-left: -56px;
margin-right: 10px;
color:#000000;
font-size:7px;
width:100%;
line-height: 1.1;
}

.telefone-emergente {
position: absolute;
margin-top: 65px;
margin-left: -80px;
color:#fff;
font-size:12px;
width:100%;
line-height: 1.1;
}

.responsavel-telefone {
position: absolute;
margin-top: 83px;
margin-left: -70px;
color:#fff;
font-size:13px;
width:100%;
line-height: 1.1;
}

.lei-13977 {
position: absolute;
margin-top: 170px;
margin-left: -170px;
color:#000000;
font-size:5px;
width:100%;
line-height: 1.1;
}

.lei-1306 {
position: absolute;
margin-top: 170px;
margin-left: 20px;
color:#000000;
font-size:5px;
width:100%;
line-height: 1.1;
}


.imagem-departamento {
position: absolute;
margin-top: 1px;
width:60px;
margin-left: -1px;
}	


.imagem-departamento {
width:100%;
height:100%;
border-radius:7px;
}	


.nome-sede {
position: absolute;
margin-top: 9px;
margin-left: 95px;
color:#545454;
font-size:11px;
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
margin-top: 144px;
margin-left: 10px;
color:#545454;
font-size:5px;
width:100%;

}

.local-departamento {
position: absolute;
margin-top: 144px;
margin-left: 98px;
color:#545454;
font-size:8px;
width:100%;

}


</style>


<body>

	<div class="page">
        <div class="image-container">
            <img src="<?php echo $url_sistema ?>img/departamentos/carteirinha-frente.jpg" alt="Imagem 1">
            <div class="text-overlay">

            	<div class="area-foto">
					<img class="imagem-departamento" src="<?php echo $url_sistema ?>img/beneficiados/<?php echo $foto ?>">
				</div>
            	
            	<div class="ciptea"><b>CIPTEA Nº.:</b> <?php echo $nr_cia; ?></div>
            	<div class="emissao"><b>Data de Emissão:</b> <?php echo $dt_emissaoF; ?></div>
            	<div class="validade"><b>Data de Validade:</b><?php echo $dt_vencimentoF; ?> </div>
            	<div class="sangue"><b>Tipo Sanguineo:</b> <?php echo $tiposangue; ?></div>
                <div class="nome-beneficiado"> <?php echo mb_strtoupper($nome); ?></div>
                <div class="rg"><b>RG.: </b><?php echo $rg; ?> </div>
                <div class="cid"><b>CID: </b><?php echo $cid; ?> </div>
                <div class="cpf"><b>CPF: </b><?php echo $cpf; ?> </div>
                <div class="nascimento"><b>Nasc.: </b><?php echo $data_nasc; ?></div>
                <div class="natural"><b>Naturalidade: </b><?php echo $naturalidade; ?> </div>
                <div class="filiacao"><p><b>Filiação: </b><?php echo $filiacao; ?> </p></div>
                <!--<div class="endereco"><p><b>Endereço: </b><?php// echo $enderecoF; ?> </p></div>-->
            	
            </div>
        </div>
    </div>
    <div class="page">
        <div class="image-container">
            <img src="<?php echo $url_sistema ?>img/departamentos/carteirinha-verso.jpg" alt="Imagem 2">
            <div class="text-overlay">
                <div class="dados-responsavel"> Dados do Responsável / Cuidador</div>
                <div class="responsavel-nome"><p><b></b><?php echo $nome_responsavel; ?><small><small> <?php echo $grau_responsavel; ?></small></small></p></div>
				<div class="responsavel-cpf"><b>CPF: </b> <?php echo $cpf_responsavel; ?> </div>
				<div class="responsavel-rg"><b>RG: </b> <?php echo $rg_responsavel; ?> </div>
				<div class="responsavel-emailreq"><p><b>Email:<br></b> <?php echo $email_responsavel; ?> </p></div>
				<div class="responsavel-endereco"><p><b>Endereço: <br></b> <?php echo $endereco_resp; ?></p></div>
				<div class="telefone-emergente"> TELEFONE DE EMERGÊNCIA</div>
				<div class="responsavel-telefone"><b><?php echo $telefone_responsavel; ?></b> </div>
				<div class="lei-13977"><b>LEI Nr 13.977, 08 DE JANEIRO DE 2020</b></div>
				<div class="lei-1306"><b>LEI Nr 1.306, 03 DE ABRIL DE 2019</b></div>

            </div>
        </div>
    </div>




</body>


</html>