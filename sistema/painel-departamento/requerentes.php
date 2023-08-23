<?php 
require_once("../conexao.php");
require_once("verificar.php");
require_once("deslogar-visitador.php");

$pagina = 'requerentes';
?>

<div class="col-md-12 my-3">
	<a href="#" onclick="inserir()" type="button" class="btn btn-dark btn-sm">Novo Requerente</a>
</div>

<div class="tabela bg-light">
	<?php 

	$query = $pdo->query("SELECT * FROM $pagina where departamento = '$id_departamento' order by id desc");
	$res = $query->fetchAll(PDO::FETCH_ASSOC);
	$total_reg = count($res);
	if($total_reg > 0){

		?>

		<table id="tabela" class="table table-striped table-light table-hover my-4 my-4" style="width:100%">
			<thead>			
				<tr>
					<th>Cod</th>
					<th>Requerente</th>
					<th class="">CPF</th>
					<th class="esc">Beneficiado</th>	
					<th class="esc">Telefone</th>	
					<th>Ações</th>
				</tr>		
			</thead>
			<tbody>
				<?php 
				for($i=0; $i < $total_reg; $i++){
					foreach ($res[$i] as $key => $value){} 

					$nome = $res[$i]['nome'];
					$sexo = $res[$i]['sexo'];
					$racacor = $res[$i]['racacor'];
					$etnia = $res[$i]['etnia'];
					$cpf = $res[$i]['cpf'];
					$nacionalidade = $res[$i]['nacionalidade'];
					$localtrabalho = $res[$i]['localtrabalho'];
					$profissao = $res[$i]['profissao'];
					$renda = $res[$i]['renda'];
					$departamento = $res[$i]['departamento'];
					$municipio = $res[$i]['municipio'];
					$bairro = $res[$i]['bairro'];
					$endereco = $res[$i]['endereco'];
					$numero = $res[$i]['numero'];
					$complemento = $res[$i]['complemento'];
					$cep = $res[$i]['cep'];
					$telefone = $res[$i]['telefone'];
					$qtdpessoafamilia = $res[$i]['qtdpessoafamilia'];
					$tiporesidencia = $res[$i]['tiporesidencia'];
					$qtdcomodoresidencia = $res[$i]['qtdcomodoresidencia'];
					$energia = $res[$i]['energia'];
					$aguatratada = $res[$i]['aguatratada'];
					$esgoto = $res[$i]['esgoto'];
					$grauresponsabilidadecombeneficiario = $res[$i]['grauresponsabilidadecombeneficiario'];
					$grauparentescodotutor = $res[$i]['grauparentescodotutor'];
					$rg = $res[$i]['rg'];
					$emissao = $res[$i]['emissao'];
					$emissor = $res[$i]['emissor'];
					$uf = $res[$i]['uf'];
					$email = $res[$i]['email'];
					$id = $res[$i]['id'];

			
					$query_con = $pdo->query("SELECT * FROM beneficiados where departamento = '$departamento' and id_req = '$id'");
					$res_con = $query_con->fetchAll(PDO::FETCH_ASSOC);
					$total_regi = count($res_con);
					if($total_regi > 0){
						$nome_ben = $res_con[0]['nome'];
					}else{
						$nome_ben = '0';
					}

					?>								
					<tr>
						<td class=""><?php echo $id ?></td>
						<td class=""><?php echo $nome ?></td>
						<td class=""><?php echo $cpf ?></td>
						<td class="esc" title="<?php echo $nome_ben ?>"><?php echo $total_regi ?> Autista</td>
						<td class="esc"><?php echo $telefone ?></td>
						<td>

							<a href="#" onclick="editar('<?php echo $id ?>', '<?php echo $nome?>', '<?php echo $sexo?>', '<?php echo $racacor?>', '<?php echo $etnia?>', '<?php echo $cpf?>', '<?php echo $nacionalidade?>', '<?php echo $localtrabalho?>', '<?php echo $profissao?>', '<?php echo $renda?>', '<?php echo $departamento?>', '<?php echo $municipio?>', '<?php echo $bairro?>', '<?php echo $endereco?>', '<?php echo $numero?>', '<?php echo $complemento?>', '<?php echo $cep?>', '<?php echo $telefone?>', '<?php echo $qtdpessoafamilia?>', '<?php echo $tiporesidencia?>', '<?php echo $qtdcomodoresidencia?>', '<?php echo $energia?>', '<?php echo $aguatratada?>', '<?php echo $esgoto?>', '<?php echo $grauresponsabilidadecombeneficiario?>', '<?php echo $grauparentescodotutor?>', '<?php echo $rg?>', '<?php echo $emissao?>', '<?php echo $emissor?>', '<?php echo $uf?>', '<?php echo $email?>')" title="Editar Registro">	<i class="bi bi-pencil-square text-primary"></i> </a>

							<a href="#" onclick="excluir('<?php echo $id ?>' , '<?php echo $nome ?>')" title="Excluir Registro">	<i class="bi bi-trash text-danger"></i> </a>


							<a href="#" onclick="dados('<?php echo $nome ?>', '<?php echo $telefone ?>', '<?php echo $email ?>', '<?php echo $endereco ?>', '<?php echo $profissao ?>')" title="Ver Dados">	<i class="bi bi-info-square-fill text-primary"></i> </a>

							
							<a href="#" onclick="addAutistas('<?php echo $id ?>', '<?php echo $nome ?>')" title="Adicionar Autista"><big><big><i class="bi bi-person-plus-fill text-success"></i></big></big> </a>
							
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
						<div class="col-md-3">
							<div class="mb-3">
								<label for="exampleFormControlInput1" class="form-label">Nome</label>
								<input type="text" class="form-control" id="nome" name="nome" placeholder="Insira o Nome" required>
							</div>
						</div>
						<div class="col-md-2">
							<div class="mb-3">
								<label for="exampleFormControlInput1" class="form-label">CPF</label>
								<input type="text" class="form-control" id="cpf" name="cpf" placeholder="Insira o CPF" required>
							</div>
						</div>

						<div class="col-md-1">
							<div class="mb-3">
								<label for="exampleFormControlInput1" class="form-label">Sexo</label>
								<select class="form-control sel2" id="sexo1" name="sexo" style="width:100%;" required>
									<option value="M">Masc</option>
									<option value="F">Fem</option>
								</select>
							</div>
						</div>

						<div class="col-md-2">
							<div class="mb-1">
								<label for="exampleFormControlInput1" class="form-label">Raça/Cor</label>
								<select class="form-control sel2" id="racacor1" name="racacor" style="width:100%;" required>
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
								<select class="form-control sel2" id="etnia1" name="etnia" style="width:100%;" required>
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

						<div class="col-md-2">
							<div class="mb-3">
								<label for="exampleFormControlInput1" class="form-label">Telefone</label>
								<input type="text" class="form-control" id="telefone" name="telefone" placeholder="Celular" required>
							</div>
						</div>										

					</div>

					<div class="row">


						<div class="col-md-3">
							<div class="mb-3">
								<label for="exampleFormControlInput1" class="form-label">Nacionalidade</label>
								<select class="form-control sel2" id="nacionalidade1" name="nacionalidade" style="width:100%;" required>
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
								<label for="exampleFormControlInput1" class="form-label">RG</label>
								<input type="text" class="form-control" id="rg" name="rg" placeholder="Nr do RG" required>
							</div>
						</div>


						<div class="col-md-2">
							<div class="mb-3">
								<label for="exampleFormControlInput1" class="form-label">Data Emissão</label>
								<input type="date" class="form-control" id="emissao" name="emissao" value="<?php echo date('Y-m-d') ?>" required>
							</div>
						</div>


						<div class="col-md-2">
							<div class="mb-3">
								<label for="exampleFormControlInput1" class="form-label">Órgão Emissor</label>
								<input type="text" class="form-control" id="emissor" name="emissor" placeholder="Ex. SSP" required>
							</div>
						</div>


						<div class="col-md-1">
							<div class="mb-3">
								<label for="exampleFormControlInput1" class="form-label">UF</label>
								<select class="form-control sel2" id="uf1" name="uf" style="width:100%;" required>
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
								<label for="exampleFormControlInput1" class="form-label">Email</label>
								<input type="email" class="form-control" id="email" name="email" >
							</div>
						</div>


					</div>

					<div class="row">

						<div class="col-md-3">
							<div class="mb-3">
								<label for="exampleFormControlInput1" class="form-label">Local Trabalho</label>
								<input type="text" class="form-control" id="localtrabalho" name="localtrabalho" placeholder="">
							</div>
						</div>


						<div class="col-md-2">
							<div class="mb-3">
								<label for="exampleFormControlInput1" class="form-label">Profissão</label>
								<input type="text" class="form-control" id="profissao" name="profissao" placeholder="">
							</div>
						</div>

						<div class="col-md-2">
							<div class="mb-3">
								<label for="exampleFormControlInput1" class="form-label">Renda R$</label>
								<input type="text" class="form-control" id="renda" name="renda" placeholder="Insira o Valor" required>
							</div>
						</div>

						<div class="col-md-2">
							<div class="mb-3">
								<label for="exampleFormControlInput1" class="form-label">Endereço</label>
								<input type="text" class="form-control" id="endereco" name="endereco" placeholder="Ex. Rua Carmelo" required>
							</div>
						</div>

						<div class="col-md-1">
							<div class="mb-3">
								<label for="exampleFormControlInput1" class="form-label">Nr</label>
								<input type="text" class="form-control" id="numero" name="numero" required>
							</div>
						</div>

						<div class="col-md-2">
							<div class="mb-3">
								<label for="exampleFormControlInput1" class="form-label">Bairro</label>
								<input type="text" class="form-control" id="bairro" name="bairro" required>
							</div>
						</div>

					</div>
					<div class="row">

						<div class="col-md-3">
							<div class="mb-3">
								<label for="exampleFormControlInput1" class="form-label">Complemento do endereço</label>
								<input type="text" class="form-control" id="complemento" name="complemento" placeholder="Ponto de referência">
							</div>
						</div>

						<div class="col-md-3">
							<div class="mb-3">
								<label for="exampleFormControlInput1" class="form-label">Municipio</label>
								<select class="form-control sel2" id="municipio1" name="municipio" style="width:100%;" required>
									<option value="Boa Vista">Boa Vista</option>
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

						<div class="col-md-2">
							<div class="mb-3">
								<label for="exampleFormControlInput1" class="form-label">CEP</label>
								<input type="text" class="form-control" id="cep" name="cep" placeholder="69.300-000">
							</div>
						</div>

						<div class="col-md-2">
							<div class="mb-3">
								<label for="exampleFormControlInput1" class="form-label">Qtd Pessoa Família</label>
								<input type="number" class="form-control" id="qtdpessoafamilia" name="qtdpessoafamilia" placeholder="Número" required>
							</div>
						</div>

						<div class="col-md-2">
							<div class="mb-3">
								<label for="exampleFormControlInput1" class="form-label">Tipo Residencia</label>
								<select class="form-control" id="tiporesidencia" name="tiporesidencia" style="width:100%;" required>
									<option value="Própria">Própria</option>
									<option value="Alugada">Alugada</option>
									<option value="Abrigo">Abrigo</option>
									<option value="Cedida">Cedida</option>
									<option value="Financiado">Financiado</option>
									<option value="Outro">Outro</option>
								</select>
							</div>
						</div>
					</div>




					<div class="row">

						<div class="col-md-2">
							<div class="mb-3">
								<label for="exampleFormControlInput1" class="form-label">Qtd Cômodo</label>
								<input type="number" class="form-control" id="qtdcomodoresidencia" name="qtdcomodoresidencia" placeholder="Na residência" required>
							</div>
						</div>

						<div class="col-md-2">
							<div class="mb-3">
								<label for="exampleFormControlInput1" class="form-label">Rede Elétrica</label>
								<select class="form-control" id="energia" name="energia" style="width:100%;" required>
									<option value="S">Sim</option>
									<option value="N">Não</option>
								</select>
							</div>
						</div>

						<div class="col-md-2">
							<div class="mb-3">
								<label for="exampleFormControlInput1" class="form-label">Água Tratada</label>
								<select class="form-control" id="aguatratada" name="aguatratada" style="width:100%;" required>
									<option value="S">Sim</option>
									<option value="N">Não</option>
								</select>
							</div>
						</div>

						<div class="col-md-2">
							<div class="mb-3">
								<label for="exampleFormControlInput1" class="form-label">Rede Esgoto</label>
								<select class="form-control" id="esgoto" name="esgoto" style="width:100%;" required>
									<option value="S">Sim</option>
									<option value="N">Não</option>
								</select>
							</div>
						</div>



					</div>

					<div class="row">

						<div class="col-md-5">
							<div class="mb-3">
								<label for="exampleFormControlInput1" class="form-label">Grau de responsabilidade com beneficiado</label>
								<select class="form-control sel2" id="grauresponsabilidadecombeneficiario" name="grauresponsabilidadecombeneficiario" style="width:100%;" required>
									<option value="Mãe">Mãe</option>
									<option value="Pai">Pai</option>
									<option value="Tutor">Tutor</option>
								</select>
							</div>
						</div>

						<div class="col-md-7">
							<div class="mb-3">
								<label for="exampleFormControlInput1" class="form-label">Grau de parentesco do Tutor com Paciente</label>
								<input type="text" class="form-control" id="grauparentescodotutor" name="grauparentescodotutor" placeholder="">
							</div>
						</div>

					</div>

					<input type="hidden" id="id" name="id">
					<!--<input type="hidden" id="id_usr2" name="id_usr" value="<?php //echo $id_usuario ?>"> -->
					<input type="hidden" id="departamento2" name="departamento" value="<?php echo $id_departamento ?>">

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




<!-- Modal Excluir-->
<div class="modal fade" id="modalExcluir" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
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


				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="btn-fechar-excluir">Fechar</button>
					<button type="submit" class="btn btn-danger">Excluir</button>
				</div>
			</form>
		</div>
	</div>
</div>


<!-- Modal de inserção do Autista ao Requerente-->
<div class="modal fade" id="modalAutista" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-xl">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Requerente: <span id="nomereq"></span></h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<form id="form-autista" method="post">
				<div class="modal-body">
					<div class="row">
						<div class="col-md-3">
							<div class="mb-3">
								<label for="exampleFormControlInput1" class="form-label">Nome</label>
								<input type="text" class="form-control" id="nome" name="nome" placeholder="Insira o Nome do Beneficiário" required>
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
								<select class="form-control sel3" id="sexo" name="sexo" style="width:100%;" required>
									<option value="M">Masc</option>
									<option value="F">Fem</option>
								</select>
							</div>
						</div>

						<div class="col-md-2">
							<div class="mb-1">
								<label for="exampleFormControlInput1" class="form-label">Raça/Cor</label>
								<select class="form-control sel3" id="racacor" name="racacor" style="width:100%;" required>
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
								<select class="form-control sel3" id="etnia" name="etnia" style="width:100%;" required>
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
								<select class="form-control sel3" id="tiposangue" name="tiposangue" style="width:100%;">
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
								<select class="form-control sel3" id="uf" name="uf" style="width:100%;" required>
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
								<select class="form-control sel3" id="escolaridade" name="escolaridade" style="width:100%;" required>
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
								<select class="form-control sel3" id="nacionalidade" name="nacionalidade" style="width:100%;" required>
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
								<select class="form-control sel3" id="residecomresp" name="residecomresp" style="width:100%;" required>
									<option value="Sim">Sim</option>
									<option value="Não">Não</option>
								</select>
							</div>
						</div>

						<div class="col-md-2">
							<div class="mb-3">
								<label for="exampleFormControlInput1" class="form-label">Programa Social</label>
								<select class="form-control sel3" id="programasocial" name="programasocial" style="width:100%;">
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
								<select class="form-control sel3" id="grauautismo" name="grauautismo" style="width:100%;" required>
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
								<input type="text" class="form-control" id="endereco" name="endereco" placeholder="Ex. Rua Carmelo" required>
							</div>
						</div>

						<div class="col-md-1">
							<div class="mb-3">
								<label for="exampleFormControlInput1" class="form-label">Nr</label>
								<input type="text" class="form-control" id="numero" name="numero" required>
							</div>
						</div>

						<div class="col-md-2">
							<div class="mb-3">
								<label for="exampleFormControlInput1" class="form-label">Bairro</label>
								<input type="text" class="form-control" id="bairro" name="bairro" required>
							</div>
						</div>

						<div class="col-md-2">
							<div class="mb-3">
								<label for="exampleFormControlInput1" class="form-label">Municipio</label>
								<select class="form-control sel3" id="municipio" name="municipio" style="width:100%;" required>
									<option value="Boa Vista">Boa Vista</option>
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

					<input type="hidden" id="id" name="id">
					<input type="text" id="id-req" name="idreq">
					<input type="hidden" id="id_usr2" name="id_usr" value="<?php echo $id_usuario ?>">
					<input type="hidden" id="departamento2" name="departamento" value="<?php echo $id_departamento ?>">

				</div>
				<small><div align="center" id="mensagem-autista"></div></small>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="btn-fechar-autista">Fechar</button>
					<button type="submit" class="btn btn-primary">Salvar</button>
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

				

				<span class=""><b>Email:</b> <span id="email-dados"></span></span>
				<hr style="margin:4px">

				<span class=""><b>Telefone:</b> <span id="telefone-dados"></span></span>
				<hr style="margin:4px">

				<span class=""><b>Endereço:</b> <span id="endereco-dados"></span></span>
				<hr style="margin:4px">				

				<span class=""><b>Profissão:</b> <span id="profissao-dados"></span></span>
				<hr style="margin:4px">



			</div>

		</form>
	</div>
</div>
</div>


<script type="text/javascript">var pag = "<?=$pagina?>"</script>
<script src="../js/ajax.js"></script>



<script type="text/javascript">

	function editar(id, nome, sexo, racacor, etnia, cpf, nacionalidade, localtrabalho, profissao, renda, departamento, municipio, bairro, endereco, numero, complemento, cep, telefone, qtdpessoafamilia, tiporesidencia, qtdcomodoresidencia, energia, aguatratada, esgoto, grauresponsabilidadecombeneficiario, grauparentescodotutor, rg, emissao, emissor, uf, email){
		$('#id').val(id);
		$('#nome').val(nome);
		$('#sexo').val(sexo);
		$('#racacor').val(racacor);
		$('#etnia').val(etnia);
		$('#cpf').val(cpf);
		$('#nacionalidade').val(nacionalidade);
		$('#localtrabalho').val(localtrabalho);
		$('#profissao').val(profissao);
		$('#renda').val(renda);
		$('#departamento').val(departamento);
		$('#municipio').val(municipio);
		$('#bairro').val(bairro);
		$('#endereco').val(endereco);
		$('#numero').val(numero);
		$('#complemento').val(complemento);
		$('#cep').val(cep);
		$('#telefone').val(telefone);
		$('#qtdpessoafamilia').val(qtdpessoafamilia);
		$('#tiporesidencia').val(tiporesidencia);
		$('#qtdcomodoresidencia').val(qtdcomodoresidencia);
		$('#energia').val(energia);
		$('#aguatratada').val(aguatratada);
		$('#esgoto').val(esgoto);
		$('#grauresponsabilidadecombeneficiario').val(grauresponsabilidadecombeneficiario);
		$('#grauparentescodotutor').val(grauparentescodotutor);
		$('#rg').val(rg);
		$('#emissao').val(emissao);
		$('#emissor').val(emissor);
		$('#uf').val(uf);
		$('#email').val(email);

		$('#tituloModal').text('Editar Registro');
		var myModal = new bootstrap.Modal(document.getElementById('modalForm'), {		});
		myModal.show();
		$('#mensagem').text('');
	}



	function limpar(){

		$('#id').val('');
		$('#nome').val('');
		$('#sexo').val('');
		$('#racacor').val('');
		$('#etnia').val('');
		$('#cpf').val('');
		$('#nacionalidade').val('');
		$('#localtrabalho').val('');
		$('#profissao').val('');
		$('#renda').val('');
		$('#departamento').val('');
		$('#municipio').val('');
		$('#bairro').val('');
		$('#endereco').val('');
		$('#numero').val('');
		$('#complemento').val('');
		$('#cep').val('');
		$('#telefone').val('');
		$('#qtdpessoafamilia').val('');
		$('#tiporesidencia').val('');
		$('#qtdcomodoresidencia').val('');
		$('#energia').val('');
		$('#aguatratada').val('');
		$('#esgoto').val('');
		$('#grauresponsabilidadecombeneficiario').val('');
		$('#grauparentescodotutor').val('');
		$('#rg').val('');
		$('#emissao').val('');
		$('#emissor').val('');
		$('#uf').val('');
		$('#email').val('');		

	}


	function dados(nome, telefone, email, endereco, profissao){

		$('#nome-dados').text(nome);		
		$('#email-dados').text(email);
		$('#telefone-dados').text(telefone);
		$('#endereco-dados').text(endereco);
		$('#profissao-dados').text(profissao);


		var myModal = new bootstrap.Modal(document.getElementById('modalDados'), {		});
		myModal.show();
		$('#mensagem').text('');
	}



	function addAutistas(id, nome){
		$('#id-req').val(id);
		$('#nomereq').text(nome);
		
		var myModal = new bootstrap.Modal(document.getElementById('modalAutista'), {		});
		myModal.show();
		$('#mensagem').text('');
	}

	



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
			dropdownParent: $('#modalAutista')
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

<script type="text/javascript">
	$("#form-autista").submit(function () {
		event.preventDefault();
		var formData = new FormData(this);

		$.ajax({
			url: pag + "/add-beneficiado.php",
			type: 'POST',
			data: formData,

			success: function (mensagem) {
				$('#mensagem-autista').text('');
				$('#mensagem-autista').removeClass()
				if (mensagem.trim() == "Adicionado com Sucesso") {

					$('#btn-fechar-autista').click();
                     mensagemSalvar();
                     
                     setTimeout(function(){
                        window.location="index.php?pag=" + pag;
                    }, 500)

				} else {

					$('#mensagem-autista').addClass('text-danger')
					$('#mensagem-autista').text(mensagem)
				}


			},

			cache: false,
			contentType: false,
			processData: false,

		});

	});

</script>