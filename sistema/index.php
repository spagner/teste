<?php 
require_once("conexao.php");

//CRIAR O USUÁRIO ADMINISTRADOR CASO ELE NÃO EXISTA
$query = $pdo->query("SELECT * from usuarios where nivel = 'administrador' ");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$total_reg = @count($res);


if($total_reg == 0){
  $pdo->query("INSERT INTO usuarios SET nome = 'Administrador Super Usuário', email = 'sistemasparadepartamentos@gmail.com', senha = '123', cpf = '000.000.000-00', nivel = 'administrador', id_pessoa = '1', foto = '22-06-2021-18-30-33-user.jpg', departamento = '0' ");  
}
 ?>
<!DOCTYPE html>
<html>
<head>
	 <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

	<link href="img/logo-icone.ico" rel="shortcut icon" type="image/x-icon">
	<link rel="stylesheet" type="text/css" href="css/login.css">

	<title><?php echo $nome_departamento_sistema ?></title>
</head>
<body>

	<div class="login">
	<img src="img/logo.png" width="100%" class="mb-4">
    <form method="post" action="autenticar.php">
    	<input type="text" name="usuario" placeholder="Email ou CPF" required="required" value=""/>
        <input type="password" name="senha" placeholder="Insira sua Senha" required="required" value="" />
        <button type="submit" class="btn btn-primary btn-block btn-large">Logar</button>
    </form>
</div>

</body>
</html>