<?php 
require_once("../conexao.php");
$secretariosCadastrados = 0;
$funcionariosCadastrados = 0;
$diretoresCadastrados = 0;
$departamentoCadastradas = 0;
$OperadoresCadastrados = 0;
$visitadoresCadastrados = 0;

$query = $pdo->query("SELECT * FROM departamentos");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$departamentoCadastradas = @count($res);

$query_m = $pdo->query("SELECT * FROM secretarios");
$res_m = $query_m->fetchAll(PDO::FETCH_ASSOC);
$secretariosCadastrados = @count($res_m);

$query = $pdo->query("SELECT * FROM diretores where id != 1");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$diretoresCadastrados = @count($res);

$query = $pdo->query("SELECT * FROM operadores");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$OperadoresCadastrados = @count($res);

$query = $pdo->query("SELECT * FROM visitadores");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$visitadoresCadastrados = @count($res);



$funcionariosCadastrados = $diretoresCadastrados + $secretariosCadastrados + $OperadoresCadastrados + $visitadoresCadastrados;




//VERIFICAR DATA PARA EXCLUSÃO DE LOGS
$data_atual = date('Y-m-d');
$data_limpeza = date('Y-m-d', strtotime("-$dias_excluir_logs days",strtotime($data_atual)));
$pdo->query("DELETE FROM logs where data < '$data_limpeza'");
?>


<div class="container-fluid " >
	<section id="minimal-statistics" style="margin-right:20px">
		<div class="row mb-2">
			<div class="col-12 mt-3 mb-1">
				<h4 class="text-uppercase textocinzaescuro">Estatísticas do Sistema</h4>

			</div>
		</div>




		<div class="row mb-4">

			<div class="col-xl-3 col-sm-6 col-12 linkcard"> 
				<a href="index.php?pag=departamentos">
					<div class="card">
						<div class="card-content">
							<div class="card-body">
								<div class="row">
									<div class="align-self-center col-3">
										<i class="bi bi-house-door-fill text-success fs-1 float-start"></i>
									</div>
									<div class="col-9 text-end">
										<h3> <span class="text-success"><?php echo @$departamentoCadastradas ?></span></h3>
										<span class="textocinzaescuro">Departamentos Cadastrados</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
			</div>

			


			<div class="col-xl-3 col-sm-6 col-12 linkcard"> 
				<a href="index.php?pag=secretarios">
					<div class="card">
						<div class="card-content">
							<div class="card-body">
								<div class="row">
									<div class="align-self-center col-3">
										<i class="bi bi-people text-dark fs-1 float-start"></i>
									</div>
									<div class="col-9 text-end">
										<h3> <span class="text-dark"><?php echo @$secretariosCadastrados ?></span></h3>
										<span class="textocinzaescuro">Secretários Cadastrados</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
			</div>


			<div class="col-xl-3 col-sm-6 col-12 linkcard"> 
				<a href="index.php?pag=diretores">
					<div class="card">
						<div class="card-content">
							<div class="card-body">
								<div class="row">
									<div class="align-self-center col-3">
										<i class="bi bi-person-fill text-primary fs-1 float-start"></i>
									</div>
									<div class="col-9 text-end">
										<h3> <span class="text-primary"><?php echo @$diretoresCadastrados ?></span></h3>
										<span class="textocinzaescuro">Diretores Cadastrados</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
			</div>


			<div class="col-xl-3 col-sm-6 col-12 linkcard"> 
				<a href="#">
					<div class="card">
						<div class="card-content">
							<div class="card-body">
								<div class="row">
									<div class="align-self-center col-3">
										<i class="bi bi-person-fill text-info fs-1 float-start"></i>
									</div>
									<div class="col-9 text-end">
										<h3> <span class="text-info"><?php echo @$OperadoresCadastrados ?></span></h3>
										<span class="textocinzaescuro">Operadores Cadastrados</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
			</div>
			
	</div>




	<div class="row mb-4">

			<div class="col-xl-3 col-sm-6 col-12 linkcard"> 
				
			</div>

			


			<div class="col-xl-3 col-sm-6 col-12 linkcard"> 
				
			</div>


			<div class="col-xl-3 col-sm-6 col-12 linkcard"> 
				<a href="#">
					<div class="card">
						<div class="card-content">
							<div class="card-body">
								<div class="row">
									<div class="align-self-center col-3">
										<i class="bi bi-person-fill text-success fs-1 float-start"></i>
									</div>
									<div class="col-9 text-end">
										<h3> <span class="text-success"><?php echo @$visitadoresCadastrados ?></span></h3>
										<span class="textocinzaescuro">Visitadores Cadastrados</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
			</div>


			<div class="col-xl-3 col-sm-6 col-12 linkcard"> 
				<a href="#">
					<div class="card">
						<div class="card-content">
							<div class="card-body">
								<div class="row">
									<div class="align-self-center col-3">
										<i class="bi bi-people-fill text-danger fs-1 float-start"></i>
									</div>
									<div class="col-9 text-end">
										<h3> <span class="text-danger"><?php echo @$funcionariosCadastrados ?></span></h3>
										<span class="textocinzaescuro">Total de Servidores</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
			</div>
			
	</div>





	</section>


	<div class="text-xs font-weight-bold text-secondary text-uppercase mt-4"><small>PRÉDIO - SEDE E FILIAIS</small></div>
	<hr> 

	<div class="row" style="margin-right:10px">

		<?php 

		$query = $pdo->query("SELECT * FROM departamentos order by matriz desc, nome asc");
		$res = $query->fetchAll(PDO::FETCH_ASSOC);
		$total_reg = count($res);

		for($i=0; $i < $total_reg; $i++){
			foreach ($res[$i] as $key => $value){} 

				$nome = $res[$i]['nome'];
					
			$imagem = $res[$i]['imagem'];
			$matriz = $res[$i]['matriz'];
			$diretor = $res[$i]['diretor'];
			$id_ig = $res[$i]['id'];

			if($matriz == 'Sim'){
				$bordacard = 'bordacardsede';
				$classe = 'text-danger';
			}else{
				$bordacard = 'bordacard';
				$classe = 'text-primary';
			}

			$query_m = $pdo->query("SELECT * FROM beneficiados where departamento = '$id_ig' and ativo = 'Sim'");
			$res_m = $query_m->fetchAll(PDO::FETCH_ASSOC);
			$membrosCad = @count($res_m);


			$query_con = $pdo->query("SELECT * FROM diretores where id = '$diretor'");
			$res_con = $query_con->fetchAll(PDO::FETCH_ASSOC);
			if(count($res_con) > 0){
				$nome_p = $res_con[0]['nome'];
			}else{
				$nome_p = 'Não Definido';
			}

			?>

			<div class="col-xl-3 col-md-6 col-12 mb-4 linkcard">
				<a href="../painel-departamento/index.php?departamento=<?php echo $id_ig ?>">
					<div class="card <?php echo $classe ?> shadow h-100 py-2 <?php echo $bordacard ?>">
						<div class="card-body">
							<div class="row no-gutters align-items-center">
								<div class="col mr-2">
									<div class="text-xs font-weight-bold <?php echo $classe ?> text-uppercase titulocard"><?php echo $nome ?></div>
									<div class="text-xs text-secondary subtitulocard"><?php echo mb_strtoupper($nome_p) ?> </div>
								</div>
								<div class="col-auto" align="center">
									<img src="../img/departamentos/<?php echo $imagem ?>" width="50px" height="50px"><br>
									<span class="text-xs totaiscard <?php echo $classe ?>"><?php echo @$membrosCad ?> BENEFICIADOS</span>
								</div>
							</div>
						</div>
					</div>
				</a>
			</div>



		<?php } ?>

	</div>
</div>