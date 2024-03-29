<?php
require_once("../../conexao.php");
$pagina = 'visitadores';
$nome = $_POST['nome'];
$cpf = $_POST['cpf'];
$email = $_POST['email'];
$endereco = $_POST['endereco'];
$telefone = $_POST['telefone'];
$id = @$_POST['id'];
$id_departamento = @$_POST['id_departamento'];

if($id_departamento == ""){
	$id_departamento = 1;
}

$query = $pdo->query("SELECT * FROM $pagina where cpf = '$cpf'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$id_reg = @$res[0]['id'];
if(@count($res) > 0 and $id_reg != $id){
	echo 'O CPF já está cadastrado!';
	exit();
}

$query = $pdo->query("SELECT * FROM $pagina where email = '$email'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$id_reg = @$res[0]['id'];
if(@count($res) > 0 and $id_reg != $id){
	echo 'O Email já está cadastrado!';
	exit();
}


//SCRIPT PARA SUBIR FOTO NO BANCO
$nome_img = date('d-m-Y H:i:s') .'-'.@$_FILES['imagem']['name'];
$nome_img = preg_replace('/[ :]+/' , '-' , $nome_img);

$caminho = '../../img/funcionarios/' .$nome_img;
if (@$_FILES['imagem']['name'] == ""){
	$imagem = "sem-foto.jpg";
}else{
	$imagem = $nome_img;
}

$imagem_temp = @$_FILES['imagem']['tmp_name']; 
$ext = pathinfo($imagem, PATHINFO_EXTENSION);   
if($ext == 'png' or $ext == 'jpg' or $ext == 'jpeg' or $ext == 'gif'){ 
	move_uploaded_file($imagem_temp, $caminho);
}else{
	echo 'Extensão de Imagem não permitida!';
	exit();
}



if($id == "" || $id == 0){
	$query = $pdo->prepare("INSERT INTO $pagina SET nome = :nome, email = :email, cpf = :cpf, telefone = :telefone, endereco = :endereco, foto = '$imagem', departamento = '$id_departamento'");

	$query->bindValue(":nome", "$nome");
	$query->bindValue(":email", "$email");
	$query->bindValue(":cpf", "$cpf");
	$query->bindValue(":telefone", "$telefone");
	$query->bindValue(":endereco", "$endereco");
	$query->execute();
	$ult_id = $pdo->lastInsertId();

	$query = $pdo->prepare("INSERT INTO usuarios SET nome = :nome, email = :email, cpf = :cpf, senha = '123@mudar', nivel = 'visitador', id_pessoa = '$ult_id', foto = '$imagem', departamento = '$id_departamento'");

	$query->bindValue(":nome", "$nome");
	$query->bindValue(":email", "$email");
	$query->bindValue(":cpf", "$cpf");
	$query->execute();

}else{
	if($imagem == "sem-foto.jpg"){
		$query = $pdo->prepare("UPDATE $pagina SET nome = :nome, email = :email, cpf = :cpf, telefone = :telefone, endereco = :endereco where id = '$id'");
	}else{

		$query = $pdo->query("SELECT * FROM $pagina where id = '$id'");
		$res = $query->fetchAll(PDO::FETCH_ASSOC);
		$foto = $res[0]['foto'];
		if($foto != "sem-foto.jpg"){
			@unlink('../../img/funcionarios/'.$foto);	
		}

		$query = $pdo->prepare("UPDATE $pagina SET nome = :nome, email = :email, cpf = :cpf, telefone = :telefone, endereco = :endereco, foto = '$imagem' where id = '$id'");
	}
	


	$query->bindValue(":nome", "$nome");
	$query->bindValue(":email", "$email");
	$query->bindValue(":cpf", "$cpf");
	$query->bindValue(":telefone", "$telefone");
	$query->bindValue(":endereco", "$endereco");
	$query->execute();

	if($imagem == "sem-foto.jpg"){
	$query = $pdo->prepare("UPDATE usuarios SET nome = :nome, email = :email, cpf = :cpf where id_pessoa = '$id' and nivel = 'visitador'");
}else{
	$query = $pdo->prepare("UPDATE usuarios SET nome = :nome, email = :email, cpf = :cpf, foto = '$imagem' where id_pessoa = '$id' and nivel = 'visitador'");
}

	$query->bindValue(":nome", "$nome");
	$query->bindValue(":email", "$email");
	$query->bindValue(":cpf", "$cpf");
	
	$query->execute();
}


	//EXECUTAR NO LOG
	$tabela = $pagina;

	if($id == "" || $id == 0){
	$acao = 'Inserção';
	$id_reg = $ult_id;
	}else{
	$acao = 'Edição';
	$id_reg = $id;
	}
	$descricao = $nome;
	$painel = 'Painel Administrativo';
	$departamento = 0;	
	require_once("../../logs.php");

echo 'Salvo com Sucesso';


?>