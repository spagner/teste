<?php 
require_once("../conexao.php");
require_once("verificar.php");
$pagina = 'beneficiados';

//$idrq = @$_POST['idrq'];
//$nomerq = @$_POST['nomerq'];

?>

<div class="col-md-12 my-3">
</div>

<div class="tabela bg-light">
<?php 
	//selecionar qual unidade o Beneficiário faz parte
$query = $pdo->query("SELECT * FROM $pagina where departamento = '$id_departamento' order by nome asc"); //order by id desc
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$total_reg = count($res);
if($total_reg > 0){

	?>

	<table id="tabela" class="table table-striped table-light table-hover my-4 my-4" style="width:100%">
		<thead>			
			<tr>
				<th class="esc">Foto</th>
				<th>Beneficiado</th>
				<th>CPF</th>
				<th class="esc">Sexo</th>
				<th class="esc">Telefone</th>
				<th class="esc">Sangue</th>
				<th class="esc">Requerente</th>
				<th class="d-none">Ativo</th>
					
				<th>Ações</th>
			</tr>		
		</thead>
		<tbody>
			<?php 
			for($i=0; $i < $total_reg; $i++){
				foreach ($res[$i] as $key => $value){} 
					$nome = $res[$i]['nome'];
					$cpf = $res[$i]['cpf'];
					$sexo = $res[$i]['sexo'];
					$racacor = $res[$i]['racacor'];
					$etnia = $res[$i]['etnia'];
					$numerodoc = $res[$i]['numerodoc'];
					$dtemissao = $res[$i]['dtemissao'];
					$orgaoemissor = $res[$i]['orgaoemissor'];
					$uf = $res[$i]['uf'];
					$nacionalidade = $res[$i]['nacionalidade'];
					$naturalidade = $res[$i]['naturalidade'];
					$nrcertidaonasc = $res[$i]['nrcertidaonasc'];
					$nrtitulodeclaratorionacionalidadebrasileira = $res[$i]['nrtitulodeclaratorionacionalidadebrasileira'];
					$nrpassaporte = $res[$i]['nrpassaporte'];
					$cedulaestrangeira = $res[$i]['cedulaestrangeira'];
					$carteiramigratorio = $res[$i]['carteiramigratorio'];
					$registronacionalmigratorio = $res[$i]['registronacionalmigratorio'];
					$telefone = $res[$i]['telefone'];
					$escolaridade = $res[$i]['escolaridade'];
					$pai = $res[$i]['pai'];
					$mae = $res[$i]['mae'];
					$programasocial = $res[$i]['programasocial'];
					$programanome = $res[$i]['programanome'];
					$programavalor = $res[$i]['programavalor'];
					$grauautismo = $res[$i]['grauautismo'];
					$cid = $res[$i]['cid'];
					$situacaocarteira = $res[$i]['situacaocarteira'];
					$datarequerimento = $res[$i]['datarequerimento'];
					$datalimiterequerimento = $res[$i]['datalimiterequerimento'];
					$id_usr = $res[$i]['id_usr'];
					$endereco = $res[$i]['endereco'];
					$numero = $res[$i]['numero'];
					$bairro = $res[$i]['bairro'];
					$municipio = $res[$i]['municipio'];
					$cep = $res[$i]['cep'];
					$foto = $res[$i]['foto'];
					$data_cad = $res[$i]['data_cad'];
					$data_nasc = $res[$i]['data_nasc'];
					$departamento = $res[$i]['departamento'];
					$tiposangue = $res[$i]['tiposangue'];
					$residecomresp = $res[$i]['residecomresp'];
					$obs = $res[$i]['obs'];
					$ativo = $res[$i]['ativo'];
					$idreqe = $res[$i]['id_req'];

					//echo "ir-reque: ".$idreq;

					$id = $res[$i]['id'];

					$programavalorF = number_format($programavalor, 2, ',', '.');

					if($obs != ""){
						$classe_obs = 'text-warning';
					}else{
						$classe_obs = 'text-secondary';
					}

					if($tiposangue != "" || $tiposangue != null){
						$tiposangue = $tiposangue;
					}else{
						$tiposangue = 'Não Informado';
					}

					if($sexo != "" || $sexo != null){
						$sexo = $sexo;
					}else{
						$sexo = 'Não Informado';
					}


					if($ativo == 'Sim'){
						$classe = 'text-success';
						$ativo = 'Já impresso';
						$icone = 'bi-check-square';
						$ativar = 'Não';
						//$inativa = '';
						$tab = 'Ativo';

					}else{
						$classe = 'text-danger';
						$ativo = 'Falta imprimir';
						$icone = 'bi-square';
						$ativar = 'Sim';
						//$inativa = 'text-muted';
						$tab = 'Inativo';
					}


					$query_con = $pdo->query("SELECT * FROM departamentos where id = '$departamento'");
					$res_con = $query_con->fetchAll(PDO::FETCH_ASSOC);
					if(count($res_con) > 0){
						$nome_ig = $res_con[0]['nome'];
					}else{
						$nome_ig = $nome_departamento_sistema;
					}


					$query_cone = $pdo->query("SELECT * FROM requerentes where departamento = '$departamento' and id = '$idreqe'");
					$res_cone = $query_cone->fetchAll(PDO::FETCH_ASSOC);
					$total_regis = count($res_cone);
					if($total_regis > 0){
						$idi_req = $res_cone[0]['id'];
						$nome_req = $res_cone[0]['nome'];
						$inativa = '';
					}else{
						$idi_req = '';
						$nome_req = 'Falta Escalonar';
						$inativa = 'text-muted';						
					}

					


					//retirar quebra de texto do obs
					$obs = str_replace(array("\n", "\r"), ' + ', $obs);

					$data_nascF = implode('/', array_reverse(explode('-', $data_nasc)));
					$data_cadF = implode('/', array_reverse(explode('-', $data_cad)));
					?>			
					<tr class="<?php echo $inativa ?>">
						<td class="esc"><img src="../img/beneficiados/<?php echo $foto ?>" width="30px"></td>
						<td><?php echo $nome ?></td>
						<td><?php echo $cpf ?></td>
						<td class="esc"><?php echo $sexo ?></td>
						<td class="esc"><?php echo $telefone ?></td>
						<td class="esc"><?php echo $tiposangue ?></td>
						<td class="esc"><?php echo $idreqe ?><?php echo $nome_req ?><?php echo $idi_req ?></td>
						

						<td class="d-none"><?php echo $tab ?></td>
						
						<td>
							<big>
								<a href="#" onclick="editar('<?php echo $id ?>', '<?php echo $nome ?>', '<?php echo $cpf ?>', '<?php echo $sexo ?>','<?php echo $racacor ?>', '<?php echo $etnia ?>', '<?php echo $numerodoc ?>', '<?php echo $dtemissao ?>', '<?php echo $orgaoemissor ?>', '<?php echo $uf ?>', '<?php echo $nacionalidade ?>', '<?php echo $naturalidade ?>', '<?php echo $nrcertidaonasc ?>', '<?php echo $nrtitulodeclaratorionacionalidadebrasileira ?>', '<?php echo $nrpassaporte ?>', '<?php echo $cedulaestrangeira ?>', '<?php echo $carteiramigratorio ?>', '<?php echo $registronacionalmigratorio ?>', '<?php echo $telefone ?>', '<?php echo $escolaridade ?>', '<?php echo $pai ?>', '<?php echo $mae ?>', '<?php echo $programasocial ?>', '<?php echo $programanome ?>', '<?php echo $programavalor ?>', '<?php echo $grauautismo ?>', '<?php echo $cid ?>', '<?php echo $situacaocarteira ?>', '<?php echo $datarequerimento ?>', '<?php echo $datalimiterequerimento ?>', '<?php echo $id_usr ?>', '<?php echo $endereco ?>', '<?php echo $numero ?>', '<?php echo $bairro ?>', '<?php echo $municipio ?>', '<?php echo $cep ?>', '<?php echo $foto ?>', '<?php echo $data_cad ?>', '<?php echo $data_nasc ?>', '<?php echo $departamento ?>', '<?php echo $tiposangue ?>', '<?php echo $residecomresp ?>', '<?php echo $obs ?>', '<?php echo $ativo ?>', '<?php echo $idi_req ?>')" title="Editar Registro">	<i class="bi bi-pencil-square text-primary"></i> </a>

								<a href="#" onclick="excluirben('<?php echo $id ?>' , '<?php echo $nome ?>', '<?php echo $idreq ?>')" title="Excluir Registro">	<i class="bi bi-trash text-danger"></i> </a>

								<a href="#" onclick="dados('<?php echo $nome ?>', '<?php echo $cpf ?>', '<?php echo $email ?>', '<?php echo $telefone ?>', '<?php echo $endereco ?>', '<?php echo $foto ?>', '<?php echo $data_nascF ?>', '<?php echo $data_cadF ?>', '<?php echo $nome_ig ?>', '<?php echo $data_batF ?>', '<?php echo $nome_cargo ?>', '<?php echo $estado ?>')" title="Ver Dados">	<i class="bi bi-info-square-fill text-primary"></i> </a>

								<a href="#" onclick="obs('<?php echo $id ?>','<?php echo $nome ?>', '<?php echo $obs ?>')" title="Observações">	<i class="bi bi-chat-right-text <?php echo $classe_obs ?>"></i> </a>


								<a href="#" onclick="mudarStatus('<?php echo $id ?>', '<?php echo $ativar ?>')" title="<?php echo $ativo ?>">
									<i class="bi <?php echo $icone ?> <?php echo $classe ?>"></i></a>


									<a class="" target="_blank" href="http://api.whatsapp.com/send?1=pt_BR&phone=55<?php echo $telefone ?>&text=" title="Enviar Mensagem">
										<i class="bi bi-whatsapp text-success"></i></a>

										<a href="../rel/relCarteirinha.php?id=<?php echo $id ?>" title="Gerar Carteirinha" target="_blank">
											<i class="bi bi-person-badge-fill text-primary"></i></a>

											<a href="#" onclick="modalTransf('<?php echo $id ?>', '<?php echo $nome ?>')" title="Carta de Recomendação">
												<i class="bi bi-clipboard-x text-danger"></i></a>

												<a href="#" onclick="transferir('<?php echo $id ?>', '<?php echo $nome ?>')" title="Transferência de Membro">
													<i class="bi bi-signpost-2 text-danger"></i></a>

													<a href="#" onclick="modalApresentacao('<?php echo $id ?>', '<?php echo $nome ?>')" title="Certificado de Apresentação">
														<i class="bi bi-bookmark-star text-secondary"></i></a>

													</big>

												</td>
											</tr>	
										<?php } ?>	
									</tbody>
								</table>
							<?php }else{
								echo 'Não Existem Dados Cadastrados';
							} ?>


							<script type="text/javascript">

								$(document).ready( function () {
									$('#tabela').DataTable({
										"ordering": false,
										"stateSave": true,
									});
									$('#tabela_filter label input').focus();
								} );

							</script>

						</div>



				<div class="modal fade" id="modalForm" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-xl">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="tituloModal"></h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							</div>
							<form id="form" method="post">
								<div class="modal-body">

									<div class="row">
										<input type="hidden" id="idreqe" name="idreqe">
											
										</div>

									<div class="row">
										<div class="col-md-3">
											<div class="mb-3">
												<label for="exampleFormControlInput1" class="form-label">Nome</label>
												<input type="text" class="form-control" id="nome" name="nome" placeholder="Insira o Nome" required>
											</div>
										</div>
										<div class="col-md-3">
											<div class="mb-3">
												<label for="exampleFormControlInput1" class="form-label">CPF</label>
												<input type="text" class="form-control" id="cpf" name="cpf" placeholder="Insira o CPF" required>
											</div>
										</div>

										<div class="col-md-1">
											<div class="mb-3">
												<label for="exampleFormControlInput1" class="form-label">Sexo</label>
													<select class="form-control sel2" id="sexo" name="sexo" style="width:100%;" required>
														<option value="M">Masc</option>
														<option value="F">Fem</option>
													</select>
											</div>
										</div>

										<div class="col-md-2">
											<div class="mb-1">
												<label for="exampleFormControlInput1" class="form-label">Raça/Cor</label>
												<select class="form-control sel2" id="racacor" name="racacor" style="width:100%;" required>
													<option value="Pardo">Pardo</option>
													<option value="Negro">Negro</option>
													<option value="Branco">Branco</option>
													<option value="Amarelo">Amarelo</option>
													<option value="Indígena">Indígena</option>
												</select>
											</div>

										</div>

										<div class="col-md-2">
											<div class="mb-1">
												<label for="exampleFormControlInput1" class="form-label">Etnia</label>
												<select class="form-control sel2" id="etnia" name="etnia" style="width:100%;" required>
													<option value="Não possui">Não possui</option>
													<option value="Guajajara">Guajajara</option>
													<option value="Ingariko">Ingariko</option>
													<option value="Macuxi">Macuxi</option>
													<option value="Patamona">Patamona</option>
													<option value="Pirititi">Pirititi</option>
													<option value="Saprá">Saprá</option>
													<option value="Taurepang">Taurepang</option>
													<option value="Wai Wai">Wai Wai</option>
													<option value="Waimiri-Atroari">Waimiri-Atroari</option>
													<option value="Wapichana">Wapichana</option>
													<option value="Yanomami">Yanomami</option>
													<option value="YeKuana">YeKuana</option>
												</select>
											</div>

										</div>

										<div class="col-md-1">
											<div class="mb-1">
												<label for="exampleFormControlInput1" class="form-label">Tp Sang.</label>
												<select class="form-control" id="tiposangue" name="tiposangue" style="width:100%;">
													<option value="O+">O+</option>
													<option value="O-">O-</option>
													<option value="A+">A+</option>
													<option value="A-">A-</option>
													<option value="B+">B+</option>
													<option value="B-">B-</option>
													<option value="AB+">AB+</option>
													<option value="AB-">AB-</option>
												</select>
											</div>

										</div>

										

									</div>

									<div class="row">

										<div class="col-md-2">
											<div class="mb-3">
												<label for="exampleFormControlInput1" class="form-label">RG</label>
												<input type="text" class="form-control" id="numerodoc" name="numerodoc" placeholder="Insira Nr Doc" required>
											</div>
										</div>


										<div class="col-md-2">
											<div class="mb-3">
												<label for="exampleFormControlInput1" class="form-label">Data Emissão</label>
												<input type="date" class="form-control" id="dtemissao" name="dtemissao" value="<?php echo date('Y-m-d') ?>" required>
											</div>
										</div>


										<div class="col-md-2">
											<div class="mb-3">
												<label for="exampleFormControlInput1" class="form-label">Órgão Emissor</label>
												<input type="text" class="form-control" id="orgaoemissor" name="orgaoemissor" placeholder="Ex. SSP" required>
											</div>
										</div>


										<div class="col-md-1">
											<div class="mb-3">
												<label for="exampleFormControlInput1" class="form-label">UF</label>
												<select class="form-control sel2" id="uf" name="uf" style="width:100%;" required>
														<option value="RR">RR</option>
														<option value="AC">AC</option>
														<option value="AL">AL</option>
														<option value="AP">AP</option>
														<option value="AM">AM</option>
														<option value="BA">BA</option>
														<option value="CE">CE</option>
														<option value="DF">DF</option>
														<option value="ES">ES</option>
														<option value="GO">GO</option>
														<option value="MA">MA</option>
														<option value="MT">MT</option>
														<option value="MS">MS</option>
														<option value="MG">MG</option>
														<option value="PA">PA</option>
														<option value="PB">PB</option>
														<option value="PR">PR</option>
														<option value="PE">PE</option>
														<option value="PI">PI</option>
														<option value="RJ">RJ</option>
														<option value="RN">RN</option>
														<option value="RS">RS</option>
														<option value="RO">RO</option>
														<option value="SC">SC</option>
														<option value="SP">SP</option>
														<option value="SE">SE</option>
														<option value="TO">TO</option>
													</select>
											</div>
										</div>

										<div class="col-md-2">
											<div class="mb-3">
												<label for="exampleFormControlInput1" class="form-label">Data Nasc</label>
												<input type="date" class="form-control" id="data_nasc" name="data_nasc" value="<?php echo date('Y-m-d') ?>" required>
											</div>
										</div>


										<div class="col-md-3">
											<div class="mb-3">
												<label for="exampleFormControlInput1" class="form-label">Escolaridade</label>
												<select class="form-control sel2" id="escolaridade" name="escolaridade" style="width:100%;" required>
													<option value="Maternal">Maternal</option>
													<option value="Pré Escolar">Pré Escolar</option>
													<option value="Fundamental">Fundamental</option>
													<option value="Médio">Médio</option>
													<option value="Superior">Superior</option>
													<option value="Mestrado">Mestrado</option>
												</select>
											</div>
										</div>

									</div>

									<div class="row">

										<div class="col-md-2">
											<div class="mb-3">
												<label for="exampleFormControlInput1" class="form-label">Nacionalidade</label>
												<select class="form-control sel2" id="nacionalidade" name="nacionalidade" style="width:100%;" required>
													<option value="Brasileiro">Brasileiro</option>
													<option value="Venezuelano">Venezuelano</option>
													<option value="Afegão">Afegão</option>
													<option value="Alemão">Alemão</option>
													<option value="Americano">Americano</option>
													<option value="Angolano">Angolano</option>
													<option value="Antiguano">Antiguano</option>
													<option value="Árabe">Árabe</option>
													<option value="Argélia">Argélia</option>
													<option value="Argentino">Argentino</option>
													<option value="Armeno">Armeno</option>
													<option value="Australiano">Australiano</option>
													<option value="Austríaco">Austríaco</option>
													<option value="Bahamense">Bahamense</option>
													<option value="Bangladesh">Bangladesh</option>
													<option value="Barbadense">Barbadense</option>
													<option value="Barbadiano">Barbadiano</option>
													<option value="Bechuano">Bechuano</option>
													<option value="Belga">Belga</option>
													<option value="Belizenho">Belizenho</option>
													<option value="Boliviano">Boliviano</option>
													<option value="Britânico">Britânico</option>
													<option value="Camaronense">Camaronense</option>
													<option value="Canadense">Canadense</option>
													<option value="Chileno">Chileno</option>
													<option value="Chinês">Chinês</option>
													<option value="Cingalês">Cingalês</option>
													<option value="Colombiano">Colombiano</option>
													<option value="Comorense">Comorense</option>
													<option value="Coreano">Coreano</option>
													<option value="Coreano">Coreano</option>
													<option value="Costarriquenho">Costarriquenho</option>
													<option value="Croata">Croata</option>
													<option value="Cubano">Cubano</option>
													<option value="Dinamarquês">Dinamarquês</option>
													<option value="Dominicana">Dominicana</option>
													<option value="Dominicano">Dominicano</option>
													<option value="Egípcio">Egípcio</option>
													<option value="Emiratense">Emiratense</option>
													<option value="Equatoriano">Equatoriano</option>
													<option value="Escocês">Escocês</option>
													<option value="Eslovaco">Eslovaco</option>
													<option value="Esloveno">Esloveno</option>
													<option value="Espanhol">Espanhol</option>
													<option value="Francês">Francês</option>
													<option value="Galês">Galês</option>
													<option value="Ganés">Ganés</option>
													<option value="Granadino">Granadino</option>
													<option value="Grego">Grego</option>
													<option value="Guatemalteco">Guatemalteco</option>
													<option value="Guianense">Guianense</option>
													<option value="Guianês">Guianês</option>
													<option value="Haitiano">Haitiano</option>
													<option value="Holandês">Holandês</option>
													<option value="Hondurenho">Hondurenho</option>
													<option value="Húngaro">Húngaro</option>
													<option value="Iemenita">Iemenita</option>
													<option value="Indiano">Indiano</option>
													<option value="Indonésio">Indonésio</option>
													<option value="Inglês">Inglês</option>
													<option value="Iraniano">Iraniano</option>
													<option value="Iraquiano">Iraquiano</option>
													<option value="Irlandês">Irlandês</option>
													<option value="Israelita">Israelita</option>
													<option value="Italiano">Italiano</option>
													<option value="Jamaicano">Jamaicano</option>
													<option value="Japonês">Japonês</option>
													<option value="Líbio">Líbio</option>
													<option value="Malaio">Malaio</option>
													<option value="Marfinense">Marfinense</option>
													<option value="Marroquino">Marroquino</option>
													<option value="Maubere">Maubere</option>
													<option value="Mexicano">Mexicano</option>
													<option value="Moçambicano">Moçambicano</option>
													<option value="Neozelandês">Neozelandês</option>
													<option value="Nepalês">Nepalês</option>
													<option value="Nicaraguense">Nicaraguense</option>
													<option value="Nigeriano">Nigeriano</option>
													<option value="Norte coreano">Norte coreano</option>
													<option value="Noruego">Noruego</option>
													<option value="Omanense">Omanense</option>
													<option value="Palestino">Palestino</option>
													<option value="Panamenho">Panamenho</option>
													<option value="Paquistanês">Paquistanês</option>
													<option value="Paraguaio">Paraguaio</option>
													<option value="Peruano">Peruano</option>
													<option value="Polonês">Polonês</option>
													<option value="Portorriquenho">Portorriquenho</option>
													<option value="Português">Português</option>
													<option value="Qatarense">Qatarense</option>
													<option value="Queniano">Queniano</option>
													<option value="Romeno">Romeno</option>
													<option value="Ruandês">Ruandês</option>
													<option value="Russo">Russo</option>
													<option value="Salvadorenho">Salvadorenho</option>
													<option value="Santa lucense">Santa lucense</option>
													<option value="São cristovense">São cristovense</option>
													<option value="São vicentino">São vicentino</option>
													<option value="Saudita">Saudita</option>
													<option value="Sérvio">Sérvio</option>
													<option value="Sírio">Sírio</option>
													<option value="Somali">Somali</option>
													<option value="Sueco">Sueco</option>
													<option value="Suíço">Suíço</option>
													<option value="Sul africano">Sul africano</option>
													<option value="Sul coreano">Sul coreano</option>
													<option value="Surinamês">Surinamês</option>
													<option value="Tailandês">Tailandês</option>
													<option value="Timorense">Timorense</option>
													<option value="Trindadense">Trindadense</option>
													<option value="Turco">Turco</option>
													<option value="Ucraniano">Ucraniano</option>
													<option value="Ugandense">Ugandense</option>
													<option value="Uruguaio">Uruguaio</option>
													<option value="Vietnamita">Vietnamita</option>
													<option value="Zimbabuense">Zimbabuense</option>			
												</select>
											</div>
										</div>

										<div class="col-md-2">
											<div class="mb-3">
												<label for="exampleFormControlInput1" class="form-label">Naturalidade</label>
												<input type="text" class="form-control" id="naturalidade" name="naturalidade" placeholder="Ex. Boa Vista - RR" required>
											</div>
										</div>


										<div class="col-md-1">
											<div class="mb-3">
												<label for="exampleFormControlInput1" class="form-label"><small><small><small>Mora Resp.?</small></small></small></label>
												<select class="form-control sel2" id="residecomresp" name="residecomresp" style="width:100%;" required>
													<option value="Sim">Sim</option>
													<option value="Não">Não</option>
												</select>
											</div>
										</div>

										<div class="col-md-2">
											<div class="mb-3">
												<label for="exampleFormControlInput1" class="form-label">Programa Social</label>
												<select class="form-control sel2" id="programasocial" name="programasocial" style="width:100%;">
													<option value="Não">Não</option>
													<option value="Sim">Sim</option>
												</select>
											</div>
										</div>

										<div class="col-md-3">
											<div class="mb-3">
												<label for="exampleFormControlInput1" class="form-label">Nome do Programa</label>
												<input type="text" class="form-control" id="programanome" name="programanome" placeholder="Informe qual">
											</div>
										</div>

										<div class="col-md-2">
											<div class="mb-3">
												<label for="exampleFormControlInput1" class="form-label">Recebe do programa</label>
												<input type="text" class="form-control" id="programavalor" name="programavalor" placeholder="Valor R$">
											</div>
										</div>
										</div>

										<div class="row">

											<div class="col-md-3">
												<div class="mb-3">
													<label for="exampleFormControlInput1" class="form-label">Título Declaratório</label>
													<input type="text" class="form-control" id="nrtitulodeclaratorionacionalidadebrasileira" name="nrtitulodeclaratorionacionalidadebrasileira" placeholder="Nacionalidade brasileira">
												</div>
											</div>

											<div class="col-md-2">
												<div class="mb-3">
													<label for="exampleFormControlInput1" class="form-label">Cédula Estrangeira</label>
													<input type="text" class="form-control" id="cedulaestrangeira" name="cedulaestrangeira" placeholder="Número">
												</div>
											</div>

											<div class="col-md-2">
												<div class="mb-3">
													<label for="exampleFormControlInput1" class="form-label">Carteira Migratorio</label>
													<input type="text" class="form-control" id="carteiramigratorio" name="carteiramigratorio" placeholder="Número">
												</div>
											</div>

											<div class="col-md-2">
												<div class="mb-3">
													<label for="exampleFormControlInput1" class="form-label">Registro Nacional</label>
													<input type="text" class="form-control" id="registronacionalmigratorio" name="registronacionalmigratorio" placeholder="Migratorio">
												</div>
											</div>

											<div class="col-md-2">
												<div class="mb-3">
													<label for="exampleFormControlInput1" class="form-label">Grau Autismo</label>
													<select class="form-control sel2" id="grauautismo" name="grauautismo" style="width:100%;" required>
														<option value="Leve">Leve</option>
														<option value="Moderado">Moderado</option>
														<option value="Grave">Grave</option>
													</select>
												</div>
											</div>

											<div class="col-md-1">
												<div class="mb-3">
													<label for="exampleFormControlInput1" class="form-label">CID</label>
													<input type="text" class="form-control" id="cid" name="cid" placeholder="Cód." required>
												</div>
											</div>
										</div>

										<div class="row">

											<div class="col-md-2">
												<div class="mb-3">
													<label for="exampleFormControlInput1" class="form-label">Certidão Nasc.</label>
													<input type="text" class="form-control" id="nrcertidaonasc" name="nrcertidaonasc" placeholder="Número">
												</div>
											</div>


											<div class="col-md-2">
												<div class="mb-3">
													<label for="exampleFormControlInput1" class="form-label">Passaporte</label>
													<input type="text" class="form-control" id="nrpassaporte" name="nrpassaporte" placeholder="Número">
												</div>
											</div>

											<div class="col-md-3">
												<div class="mb-3">
													<label for="exampleFormControlInput1" class="form-label">Endereço</label>
													<input type="text" class="form-control" id="endereco" name="endereco" placeholder="Ex. Rua Carmelo">
												</div>
											</div>

											<div class="col-md-1">
												<div class="mb-3">
													<label for="exampleFormControlInput1" class="form-label">Nr</label>
													<input type="text" class="form-control" id="numero" name="numero" >
												</div>
											</div>

											<div class="col-md-2">
												<div class="mb-3">
													<label for="exampleFormControlInput1" class="form-label">Bairro</label>
													<input type="text" class="form-control" id="bairro" name="bairro" >
												</div>
											</div>

											<div class="col-md-2">
												<div class="mb-3">
													<label for="exampleFormControlInput1" class="form-label">Municipio</label>
													<select class="form-control sel2" id="municipio" name="municipio" style="width:100%;" required>
														<option selected value="Boa Vista">Boa Vista</option>
														<option value="Alto Alegre">Alto Alegre</option>
														<option value="Amajari">Amajari</option>
														<option value="Bonfim">Bonfim</option>
														<option value="Cantá">Cantá</option>
														<option value="Caracaraí">Caracaraí</option>
														<option value="Caroebe">Caroebe</option>
														<option value="Iracema">Iracema</option>
														<option value="Mucajaí">Mucajaí</option>
														<option value="Normandia">Normandia</option>
														<option value="Pacaraima">Pacaraima</option>
														<option value="Rorainópolis">Rorainópolis</option>
														<option value="Sao João da Baliza">Sao João da Baliza</option>
														<option value="Sao Luiz">Sao Luiz</option>
														<option value="Uiramutã">Uiramutã</option>
													</select>
												</div>
											</div>
										</div>


										



										<div class="row">

											<div class="col-md-2">
												<div class="mb-3">
													<label for="exampleFormControlInput1" class="form-label">Telefone</label>
													<input type="text" class="form-control" id="telefone" name="telefone" placeholder="Celular">
												</div>
											</div>

											<div class="col-md-2">
												<div class="mb-3">
													<label for="exampleFormControlInput1" class="form-label">Filiação Pai</label>
													<input type="text" class="form-control" id="pai" name="pai" placeholder="Não declarado" required>
												</div>
											</div>

											<div class="col-md-2">
												<div class="mb-3">
													<label for="exampleFormControlInput1" class="form-label">Filiação Mãe</label>
													<input type="text" class="form-control" id="mae" name="mae" placeholder="Não informado" required>
												</div>
											</div>


											<div class="col-md-2">
												<div class="mb-3">
													<label for="exampleFormControlInput1" class="form-label">CEP</label>
													<input type="text" class="form-control" id="cep" name="cep" placeholder="69.300-000">
												</div>
											</div>

											<div class="col-md-3">
												<div class="mb-3">
													<label for="exampleFormControlInput1" class="form-label">Foto</label>
													<input type="file" class="form-control-file" id="imagem" name="imagem" onChange="carregarImg();">
												</div>
											</div>
											<div class="col-md-1">
												<div id="divImg" class="mt-4">
													<img src="../img/beneficiados/sem-foto.jpg"  width="80px" id="target">									
												</div>
											</div>

										</div>

										
										
										<input type="text" id="id" name="id">
										
										<input type="text" id="id_usr2" name="id_usr" value="<?php echo $id_usuario ?>">
										<input type="text" id="departamento2" name="departamento" value="<?php echo $id_departamento ?>">

									</div>
									<small><div align="center" id="mensagem"></div></small>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="btn-fechar">Fechar</button>
										<button type="submit" class="btn btn-primary">Salvar</button>
									</div>
								</form>
							</div>
						</div>
				</div>



						<!-- Modal -->
						<div class="modal fade" id="modalExcluirreq" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel"><span id="tituloModal">Excluir Registro</span></h5>
										<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<form id="form-excluir" method="post">
										<div class="modal-body">

											Deseja Realmente excluir este Registro: <span id="nome-excluido"></span>?

											<small><div id="mensagem-excluir" align="center"></div></small>

											<input type="hidden" class="form-control" name="id-excluir"  id="id-excluir">
											<input type="hidden" class="form-control" name="idreq-excluido"  id="idreq-excluido">


										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="btn-fechar-excluir">Fechar</button>
											<button type="submit" class="btn btn-danger">Excluir</button>
										</div>
									</form>
								</div>
							</div>
						</div>



						<div class="modal fade" id="modalDados" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">Nome : <span id="nome-dados"></span></h5>
										<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									</div>

									<div class="modal-body">

										<span class=""><b>CPF:</b> <span id="cpf-dados"></span></span>
										<hr style="margin:4px">

										<span class=""><b>Email:</b> <span id="email-dados"></span></span>
										<hr style="margin:4px">

										<span class=""><b>Telefone:</b> <span id="telefone-dados"></span></span>
										<hr style="margin:4px">

										<span class=""><b>Endereço:</b> <span id="endereco-dados"></span></span>
										<hr style="margin:4px">

										<span class=""><b>Data de Cadastro:</b> <span id="cadastro-dados"></span></span>
										<hr style="margin:4px">

										<span class=""><b>Data de Nascimento:</b> <span id="nasc-dados"></span></span>
										<hr style="margin:4px">

										<span class=""><b>Departamento:</b> <span id="departamento-dados"></span></span>
										<hr style="margin:4px">

										<span class=""><b>Data de Batismo:</b> <span id="batismo-dados"></span></span>
										<hr style="margin:4px">

										<div class="row">
											<div class="col-md-6">
												<span class=""><b>Cargo:</b> <span id="membro-dados"></span></span>
												<hr style="margin:4px">
											</div>

											<div class="col-md-6">
												<span id="span-estado"><b>Estado Civil:</b> <span id="estado-dados"></span></span>
												<hr style="margin:4px">
											</div>
										</div>

										<span class=""><img src="" id="foto-dados" width="200px"></span>
										<hr style="margin:4px">


									</div>

								</form>
							</div>
						</div>
					</div>






					<!-- Modal -->
					<div class="modal fade" id="modalObs" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel"><span id="tituloModal">Observações - <span id="nome-obs"></span></span></h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
								</div>
								<form id="form-obs" method="post">
									<div class="modal-body">

										<div class="mb-3">
											<label for="exampleFormControlInput1" class="form-label">Observações (Máximo 500 Caracteres)</label>
											<textarea class="form-control" id="obs" name="obs" maxlength="500" style="height:200px"></textarea>
										</div>



										<small><div id="mensagem-obs" align="center"></div></small>

										<input type="hidden" class="form-control" name="id-obs"  id="id-obs">


									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="btn-fechar-obs">Fechar</button>
										<button type="submit" class="btn btn-primary">Salvar</button>
									</div>
								</form>
							</div>
						</div>
					</div>






					<!-- Modal -->
					<div class="modal fade" id="modalTransf" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel"><span id="tituloModal">Carta de Recomendaçao - <span id="nome-transf"></span></span></h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
								</div>
								<form id="form-obs" method="post" action="../rel/relRecomendacao.php" target="_blank">
									<div class="modal-body">

										<div class="mb-3">
											<label for="exampleFormControlInput1" class="form-label">Departamento</label>
											<input class="form-control" id="departamento-transf" name="departamento" placeholder="Nome da Departamento à Recomendar">
										</div>

										<div class="mb-3">
											<label for="exampleFormControlInput1" class="form-label">Observações (Máximo 2000 Caracteres)</label>
											<textarea class="form-control" id="obs-transf" name="obs" maxlength="2000" style="height:200px"></textarea>
										</div>



										<small><div id="mensagem-transf" align="center"></div></small>

										<input type="hidden" class="form-control" name="id"  id="id-transf">


									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="btn-fechar-transf">Fechar</button>
										<button type="submit" class="btn btn-primary">Gerar</button>
									</div>
								</form>
							</div>
						</div>
					</div>






					<!-- Modal Transferir membro -->
					<div class="modal fade" id="modalTransferir" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<span class="modal-title" id="exampleModalLabel"><span id="tituloModal">Transferir Membro - <span id="nome-transferir"></span></span></span>
									<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
								</div>
								<form id="form-transferir" method="post" action="../rel/relRecomendacao.php" target="_blank">
									<div class="modal-body">

										<div class="row">
											<div class="col-md-6" >
												<label for="exampleFormControlInput1" class="form-label">Transferir para Departamento</label>
												<select class="form-control sel3" id="departamento-membro" name="departamento" style="width:100%;" required>
													<?php 
													$query = $pdo->query("SELECT * FROM departamentos order by matriz desc, nome asc");
													$res = $query->fetchAll(PDO::FETCH_ASSOC);
													$total_reg = count($res);
													if($total_reg > 0){

														for($i=0; $i < $total_reg; $i++){
															foreach ($res[$i] as $key => $value){} 

																$nome_reg = $res[$i]['nome'];
															$id_reg = $res[$i]['id'];

															if($id_reg != $id_departamento){
																?>
																<option value="<?php echo $id_reg ?>" class="<?php echo $classe_ig ?>"><?php echo $nome_reg ?></option>

															<?php }}} ?>
														</select>
													</div>

													<div class="col-md-6" >
														<div class="mb-3">
															<label for="exampleFormControlInput1" class="form-label">Obs</label>
															<input type="text" class="form-control" id="obs" name="obs" placeholder="Observações">
														</div>
													</div>
												</div>


												<small><div id="mensagem-transferir" align="center"></div></small>

												<input type="hidden" class="form-control" name="id"  id="id-transferir">
												<input type="hidden" class="form-control" name="departamento_saida"  id="departamento_saida" value="<?php echo $id_departamento ?>">


											</div>

											<div class="modal-footer">
												<button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="btn-fechar-transferir">Fechar</button>
												<button type="submit" class="btn btn-primary">Transferir</button>
											</div>
										</form>


									</div>
								</div>
							</div>

							<!-- Modal Apresentacao -->
							<div class="modal fade" id="modalApresentacao" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<span class="modal-title" id="exampleModalLabel"><span id="tituloModal">Certificado de Apresentação - <span id="nome-apres"></span></span></span>
											<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
										</div>

										<div class="modal-body">

											<div class="row">
												<div class="col-md-6" align="center">
													<a href="#" onclick="certApresentacao('menino')" title="Certificado de Menino">
														<img src="../img/apresentacao.jpg" width="70%">
													</a>
												</div>

												<div class="col-md-6" align="center">
													<a href="#" onclick="certApresentacao('menina')" title="Certificado de Menina">
														<img src="../img/apresentacao2.jpg" width="70%">
													</a>
												</div>
											</div>


											<small><div id="mensagem-apres" align="center"></div></small>

											<input type="hidden" class="form-control" name="id"  id="id-apres">


										</div>


									</div>
								</div>
							</div>




							<script type="text/javascript">var pag = "<?=$pagina?>"</script>
							<script src="../js/ajax.js"></script>


							<script type="text/javascript">

								function editar(id, nome, cpf, sexo, racacor, etnia, numerodoc, dtemissao, orgaoemissor, uf, nacionalidade, naturalidade, nrcertidaonasc, nrtitulodeclaratorionacionalidadebrasileira, nrpassaporte, cedulaestrangeira, carteiramigratorio, registronacionalmigratorio, telefone, escolaridade, pai, mae, programasocial, programanome, programavalor, grauautismo, cid, situacaocarteira, datarequerimento, datalimiterequerimento, id_usr, endereco, numero, bairro, municipio, cep, foto, data_cad, data_nasc, departamento, tiposangue, residecomresp, obs, ativo, idreqe){
									$('#id').val(id);
									$('#idreqe').val(idreqe);
									$('#nome').val(nome);
									$('#cpf').val(cpf);
									$('#sexo').val(sexo).change();
									$('#racacor').val(racacor).change();
									$('#etnia').val(etnia).change();
									$('#numerodoc').val(numerodoc);
									$('#dtemissao').val(dtemissao);
									$('#orgaoemissor').val(orgaoemissor);
									$('#uf').val(uf);
									$('#nacionalidade').val(nacionalidade);
									$('#naturalidade').val(naturalidade);
									$('#nrcertidaonasc').val(nrcertidaonasc);
									$('#nrtitulodeclaratorionacionalidadebrasileira').val(nrtitulodeclaratorionacionalidadebrasileira);
									$('#nrpassaporte').val(nrpassaporte);
									$('#cedulaestrangeira').val(cedulaestrangeira);
									$('#carteiramigratorio').val(carteiramigratorio);
									$('#registronacionalmigratorio').val(registronacionalmigratorio);
									$('#telefone').val(telefone);
									$('#escolaridade').val(escolaridade);
									$('#pai').val(pai);
									$('#mae').val(mae);
									$('#programasocial').val(programasocial);
									$('#programanome').val(programanome);
									$('#programavalor').val(programavalor);
									$('#grauautismo').val(grauautismo).change();
									$('#cid').val(cid);
									$('#situacaocarteira').val(situacaocarteira);
									$('#datarequerimento').val(datarequerimento);
									$('#datalimiterequerimento').val(datalimiterequerimento);
									$('#id_usr').val(id_usr).change();
									$('#endereco').val(endereco);
									$('#numero').val(numero);
									$('#bairro').val(bairro);
									$('#municipio').val(municipio);
									$('#cep').val(cep);
									$('#data_cad').val(data_cad);
									$('#data_nasc').val(data_nasc);
									$('#departamento').val(departamento).change();
									$('#tiposangue').val(tiposangue);
									$('#residecomresp').val(residecomresp);
									$('#obs').val(obs);
									$('#ativo').val(ativo).change();



									$('#target').attr('src', '../img/beneficiados/' + foto);



									$('#tituloModal').text('Editar Registro');
									var myModal = new bootstrap.Modal(document.getElementById('modalForm'), {		});
									myModal.show();
									$('#mensagem').text('');
								}



								function dados(nome, cpf, email, telefone, endereco, foto, data_nasc, data_cad, departamento, data_bat, cargo, estado){

									if(estado == ""){
										document.getElementById('span-estado').style.display = 'none';
									}

									if(data_bat === '00/00/0000'){
										data_bat = 'Não Batizado!';
									}

									$('#nome-dados').text(nome);
									$('#cpf-dados').text(cpf);
									$('#email-dados').text(email);
									$('#telefone-dados').text(telefone);
									$('#endereco-dados').text(endereco);
									$('#cadastro-dados').text(data_cad);
									$('#nasc-dados').text(data_nasc);
									$('#departamento-dados').text(departamento);
									$('#batismo-dados').text(data_bat);
									$('#membro-dados').text(cargo);
									$('#estado-dados').text(estado);
									$('#foto-dados').attr('src', '../img/beneficiados/' + foto);


									var myModal = new bootstrap.Modal(document.getElementById('modalDados'), {		});
									myModal.show();
									$('#mensagem').text('');
								}



								function obs(id, nome, obs){
									console.log(obs)

									for (let letra of obs){  				
										if (letra === '+'){
											obs = obs.replace(' +  + ', '\n')
										}			
									}


									$('#nome-obs').text(nome);
									$('#id-obs').val(id);
									$('#obs').val(obs);



									var myModal = new bootstrap.Modal(document.getElementById('modalObs'), {		});
									myModal.show();
									$('#mensagem-obs').text('');
								}

								function limpar(){
									var data = "<?=$data_atual?>";

									$('#id').val('');
									$('#nome').val('');
									$('#cpf').val('');
									$('#sexo').val('');
									$('#numerodoc').val('');
									$('#dtemissao').val(data);
									$('#orgaoemissor').val('');
									$('#uf').val('');
									$('#nacionalidade').val('');
									$('#naturalidade').val('');
									$('#nrcertidaonasc').val('');
									$('#nrtitulodeclaratorionacionalidadebrasileira').val('');
									$('#nrpassaporte').val('');
									$('#cedulaestrangeira').val('');
									$('#carteiramigratorio').val('');
									$('#registronacionalmigratorio').val('');
									$('#telefone').val('');
									$('#escolaridade').val('');
									$('#pai').val('');
									$('#mae').val('');
									$('#programasocial').val('');
									$('#programanome').val('');
									$('#programavalor').val('');
									$('#grauautismo').val('');
									$('#cid').val('');
									$('#id_usr').val('');
									$('#endereco').val('');
									$('#numero').val('');
									$('#bairro').val('');
									$('#municipio').val('');
									$('#cep').val('');
									$('#data_cad').val('');
									$('#data_nasc').val(data);
									$('#departamento').val('');
						//$('#tiposangue').val('');
						$('#residecomresp').val('');


						//document.getElementById("cargo").options.selectedIndex = 0;
						//$('#cargo').val($('#cargo').val()).change();

						document.getElementById("tiposangue").options.selectedIndex = 0;
						$('#tiposangue').val($('#tiposangue').val()).change();

						$('#target').attr('src', '../img/beneficiados/sem-foto.jpg');
					}



					function modalApresentacao(id, nome){
						console.log(obs)

						$('#nome-apres').text(nome);
						$('#id-apres').val(id);

						var myModal = new bootstrap.Modal(document.getElementById('modalApresentacao'), {		});
						myModal.show();
						$('#mensagem-apres').text('');
					}



					function modalTransf(id, nome){
						console.log(obs)

						$('#nome-transf').text(nome);
						$('#id-transf').val(id);

						var myModal = new bootstrap.Modal(document.getElementById('modalTransf'), {		});
						myModal.show();
						$('#mensagem-transf').text('');
					}




					function certApresentacao(sexo){
						console.log(obs)

						var id = $('#id-apres').val();						
						
						let a= document.createElement('a');
						a.target= '_blank';
						a.href= '../rel/relApresentacao.php?id='+id+'&sexo='+sexo;
						a.click();
					}



					function transferir(id, nome){
						console.log(obs)

						$('#nome-transferir').text(nome);
						$('#id-transferir').val(id);

						var myModal = new bootstrap.Modal(document.getElementById('modalTransferir'), {		});
						myModal.show();
						$('#mensagem-transferir').text('');
					}


				</script>


				<script type="text/javascript">

					$("#form-transferir").submit(function () {
						event.preventDefault();
						var formData = new FormData(this);

						$.ajax({
							url: pag + "/transferir.php",
							type: 'POST',
							data: formData,

							success: function (mensagem) {
								$('#mensagem-transferir').text('');
								$('#mensagem-transferir').removeClass()
								if (mensagem.trim() == "Salvo com Sucesso") {
					                    //$('#nome').val('');
					                    //$('#cpf').val('');
					                    $('#btn-fechar-transferir').click();
					                    mensagemSalvar();

					                    setTimeout(function(){
					                    	window.location="index.php?pag=" + pag;
					                    }, 500)

					                    

					                } else {

					                	$('#mensagem-transferir').addClass('text-danger')
					                	$('#mensagem-transferir').text(mensagem)
					                }


					            },

					            cache: false,
					            contentType: false,
					            processData: false,
					            
					        });

					});
				</script>



				<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
				<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

				<script>
					$(document).ready(function() {
						$('.sel2').select2({
							//placeholder: 'Selecione um Cliente',
							dropdownParent: $('#modalForm')
						});
					});
				</script>

				
				<script>
					$(document).ready(function() {
						$('.sel3').select2({
							//placeholder: 'Selecione um Cliente',
							dropdownParent: $('#modalTransferir')
						});
					});
				</script>

				<style type="text/css">
					.select2-selection__rendered {
						line-height: 36px !important;
						font-size:16px !important;
						color:#666666 !important;

					}

					.select2-selection {
						height: 36px !important;
						font-size:16px !important;
						color:#666666 !important;

					}
				</style>  