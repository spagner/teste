-- TABLE: administradores
CREATE TABLE `administradores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `foto` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
INSERT INTO `administradores` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`, `foto`) VALUES ('1', 'Administrador sistemA', 'sistemasparadepartamentos@gmail.com', '000.000.000-00', '(00)00000-0000', 'Rua Almeida Campos 150 Bairro Serra Verde - Belo Horizonte - MG', '22-05-2023-13-08-23-euxin.png');

-- TABLE: alertas
CREATE TABLE `alertas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `descricao` text DEFAULT NULL,
  `link` varchar(150) DEFAULT NULL,
  `imagem` varchar(150) DEFAULT NULL,
  `data` date NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `igreja` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
INSERT INTO `alertas` (`id`, `titulo`, `descricao`, `link`, `imagem`, `data`, `ativo`, `igreja`, `usuario`) VALUES ('1', 'Site em Manutenção', 'Nosso site estará em manutenção no dia 12 de Julho, acesse o link abaixo para poder entrar em nossa página do facebook caso queira maiores informações.', 'http://www.google.com', 'sem-foto.jpg', '2021-07-13', 'Não', '3', '6');
INSERT INTO `alertas` (`id`, `titulo`, `descricao`, `link`, `imagem`, `data`, `ativo`, `igreja`, `usuario`) VALUES ('2', 'Não Haverá Culto Domingo', 'Devido ao motivo .... não teremos culto este domingo, voltaremos na quarta feira normalmente.', '', '12-07-2021-18-52-20-euepedro.jpeg', '2021-07-12', 'Sim', '3', '6');

-- TABLE: anexos
CREATE TABLE `anexos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(70) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `arquivo` varchar(150) NOT NULL,
  `data` date NOT NULL,
  `usuario` int(11) NOT NULL,
  `igreja` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
INSERT INTO `anexos` (`id`, `nome`, `descricao`, `arquivo`, `data`, `usuario`, `igreja`) VALUES ('1', 'Prestação de Contas', 'Dizimos, Ofertas, Vendas etc', '05-07-2021-13-07-22-pedido.rar', '2021-07-05', '6', '3');
INSERT INTO `anexos` (`id`, `nome`, `descricao`, `arquivo`, `data`, `usuario`, `igreja`) VALUES ('4', 'Relatório de Membros', '', '28-07-2021-14-13-41-certificado(1).pdf', '2021-07-28', '6', '3');

-- TABLE: beneficiados
CREATE TABLE `beneficiados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `foto` varchar(150) NOT NULL,
  `data_cad` date NOT NULL,
  `data_nasc` date NOT NULL,
  `departamento` int(11) NOT NULL,
  `obs` text DEFAULT NULL,
  `data_batismo` date DEFAULT NULL,
  `cargo` varchar(50) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `estado_civil` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
INSERT INTO `beneficiados` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`, `foto`, `data_cad`, `data_nasc`, `departamento`, `obs`, `data_batismo`, `cargo`, `ativo`, `estado_civil`) VALUES ('4', 'Pablo Campos', 'pablo@hotmail.com', '554.415.454-55', '(54) 51545-4545', 'Rua Almeida Campos 150 Bairro Serra Verde - Belo Horizonte - MG', '15-09-2021-20-55-02-curso-de-site-para-delivery.jpeg', '2021-06-28', '1975-06-09', '3', '', '2021-06-08', '2', 'Sim', 'Solteiro');
INSERT INTO `beneficiados` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`, `foto`, `data_cad`, `data_nasc`, `departamento`, `obs`, `data_batismo`, `cargo`, `ativo`, `estado_civil`) VALUES ('8', 'Marcelo Santos 2', 'marcela@hugocursos.com.br', '455.455.555', '(87) 45445-4544', 'Rua A, Número 150, Bairro XX - Belo Horizonte - MG', 'a0f44479-c17b-4efc-9e2e-02b380faa4c0.jpg', '2021-06-28', '1980-07-02', '3', '', '2021-09-19', '1', 'Sim', 'Casado');
INSERT INTO `beneficiados` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`, `foto`, `data_cad`, `data_nasc`, `departamento`, `obs`, `data_batismo`, `cargo`, `ativo`, `estado_civil`) VALUES ('11', 'Hugo Vasconcelos', 'hugo@hotmail.com', '487.451.515-55', '(31) 97527-5084', 'Rua A, Número 150, Bairro XX - Belo Horizonte - MG', '15-09-2021-20-54-27-hugo-profile.jpeg', '2021-07-12', '1993-07-12', '3', '', '1993-07-12', '5', 'Sim', 'Casado');
INSERT INTO `beneficiados` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`, `foto`, `data_cad`, `data_nasc`, `departamento`, `obs`, `data_batismo`, `cargo`, `ativo`, `estado_civil`) VALUES ('52', 'André Cerry', 'Hufsd@hotmail.com', '555.885', '(95) 99971-4345', 'Paraviana', '006466a7-ee12-4ce0-b80e-03404b85bca5.jpg', '2021-10-05', '2021-10-05', '6', '', '0000-00-00', '1', 'Sim', 'Casado');
INSERT INTO `beneficiados` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`, `foto`, `data_cad`, `data_nasc`, `departamento`, `obs`, `data_batismo`, `cargo`, `ativo`, `estado_civil`) VALUES ('53', 'Acácio', 'Fsrsdsss@hotmail.com', '585.555.445-45', '(95) 99971-5572', 'Mecejana', '07-11-2022-21-06-20-02.jpg', '2021-10-05', '2021-05-05', '7', '', '0000-00-00', '1', 'Sim', 'Casado');
INSERT INTO `beneficiados` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`, `foto`, `data_cad`, `data_nasc`, `departamento`, `obs`, `data_batismo`, `cargo`, `ativo`, `estado_civil`) VALUES ('54', 'Victor', 'vitor@gmail.com', '123.333.333-33', '(95) 98123-1313', 'Rua D Nove, 209 - Caracaraí - RR CEP 69.360-000', 'sem-foto.jpg', '2023-05-16', '1982-03-03', '6', '', '2020-02-03', '5', 'Sim', 'Casado');
INSERT INTO `beneficiados` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`, `foto`, `data_cad`, `data_nasc`, `departamento`, `obs`, `data_batismo`, `cargo`, `ativo`, `estado_civil`) VALUES ('55', 'ANAJESSICA DE SOUZA MENDES', 'discipulandorr@gmail.com', '123.333.333-34', '(95) 91111-1111', 'Rua Mario Homem de Melo, sn Mecejana Boa Vista RR', '19-05-2023-17-01-38-IMG_20220220_214519123.jpg', '2023-05-19', '2023-05-19', '6', '', '2023-05-04', '1', 'Sim', 'Casado');
INSERT INTO `beneficiados` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`, `foto`, `data_cad`, `data_nasc`, `departamento`, `obs`, `data_batismo`, `cargo`, `ativo`, `estado_civil`) VALUES ('57', 'ANAJESSICA DE SOUZA MENDES', 'jessicar@gmail.com', '121.313.133-13', '(95) 91111-1111', 'Rua Mario Homem de Melo, sn Mecejana Boa Vista RR', '22-05-2023-17-37-33-denilson.jpg', '2023-05-22', '2023-05-22', '1', '', '2023-05-02', '5', 'Sim', 'Casado');

-- TABLE: cargos
CREATE TABLE `cargos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
INSERT INTO `cargos` (`id`, `nome`) VALUES ('2', 'Diácono');
INSERT INTO `cargos` (`id`, `nome`) VALUES ('5', 'Discipulador');
INSERT INTO `cargos` (`id`, `nome`) VALUES ('6', 'Líder');

-- TABLE: celulas
CREATE TABLE `celulas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `dias` varchar(150) NOT NULL,
  `hora` varchar(100) NOT NULL,
  `local` varchar(100) DEFAULT NULL,
  `diretor` int(11) NOT NULL,
  `coordenador` int(11) NOT NULL,
  `lider1` int(11) NOT NULL,
  `lider2` int(11) NOT NULL,
  `obs` text DEFAULT NULL,
  `departamento` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
INSERT INTO `celulas` (`id`, `nome`, `dias`, `hora`, `local`, `diretor`, `coordenador`, `lider1`, `lider2`, `obs`, `departamento`) VALUES ('2', 'Célula das Irmãs', 'Sexta Feira', 'Das 19:00 as 20:00', 'Rua X Número 120 Bairro Candelária', '2', '4', '8', '0', '', '3');
INSERT INTO `celulas` (`id`, `nome`, `dias`, `hora`, `local`, `diretor`, `coordenador`, `lider1`, `lider2`, `obs`, `departamento`) VALUES ('3', 'Célula Quarta Feira', 'Quarta Feira', 'Das 20:00 as 20:45', 'Rua Y', '8', '0', '8', '4', 'Essa célula está por enquanto suspensa..', '3');

-- TABLE: celulas_membros
CREATE TABLE `celulas_membros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `membro` int(11) NOT NULL,
  `celula` int(11) NOT NULL,
  `data` date NOT NULL,
  `igreja` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
INSERT INTO `celulas_membros` (`id`, `membro`, `celula`, `data`, `igreja`) VALUES ('12', '8', '2', '2021-07-06', '3');
INSERT INTO `celulas_membros` (`id`, `membro`, `celula`, `data`, `igreja`) VALUES ('25', '11', '2', '2021-09-28', '3');
INSERT INTO `celulas_membros` (`id`, `membro`, `celula`, `data`, `igreja`) VALUES ('27', '4', '3', '2021-09-28', '3');
INSERT INTO `celulas_membros` (`id`, `membro`, `celula`, `data`, `igreja`) VALUES ('31', '41', '1', '2021-09-28', '3');
INSERT INTO `celulas_membros` (`id`, `membro`, `celula`, `data`, `igreja`) VALUES ('32', '11', '1', '2021-09-28', '3');
INSERT INTO `celulas_membros` (`id`, `membro`, `celula`, `data`, `igreja`) VALUES ('33', '8', '1', '2021-09-28', '3');
INSERT INTO `celulas_membros` (`id`, `membro`, `celula`, `data`, `igreja`) VALUES ('34', '4', '1', '2021-09-28', '3');
INSERT INTO `celulas_membros` (`id`, `membro`, `celula`, `data`, `igreja`) VALUES ('35', '41', '2', '2021-09-28', '3');
INSERT INTO `celulas_membros` (`id`, `membro`, `celula`, `data`, `igreja`) VALUES ('36', '11', '3', '2021-09-29', '3');
INSERT INTO `celulas_membros` (`id`, `membro`, `celula`, `data`, `igreja`) VALUES ('37', '17', '3', '2021-10-05', '3');

-- TABLE: config
CREATE TABLE `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(150) NOT NULL,
  `qtd_tarefas` int(11) NOT NULL,
  `limitar_tesoureiro` varchar(5) NOT NULL,
  `relatorio_pdf` varchar(5) NOT NULL,
  `cabecalho_rel_img` varchar(5) NOT NULL,
  `itens_por_pagina` int(11) NOT NULL,
  `logs` varchar(5) NOT NULL,
  `dias_excluir_logs` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
INSERT INTO `config` (`id`, `nome`, `email`, `telefone`, `endereco`, `qtd_tarefas`, `limitar_tesoureiro`, `relatorio_pdf`, `cabecalho_rel_img`, `itens_por_pagina`, `logs`, `dias_excluir_logs`) VALUES ('1', 'Igreja em Roraima', 'sistemasparaigrejas@gmail.com', '(00) 00000-0000', 'Rua A, Número 150, Bairro XX - Belo Horizonte - MG', '20', 'Sim', 'Sim', 'Sim', '6', 'Sim', '40');

-- TABLE: cultos
CREATE TABLE `cultos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `dia` varchar(20) NOT NULL,
  `hora` time NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `departamento` int(11) NOT NULL,
  `obs` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
INSERT INTO `cultos` (`id`, `nome`, `dia`, `hora`, `descricao`, `departamento`, `obs`) VALUES ('1', 'Culto de Adoração', 'Domingo', '19:00:00', '', '4', '');
INSERT INTO `cultos` (`id`, `nome`, `dia`, `hora`, `descricao`, `departamento`, `obs`) VALUES ('2', 'Culto de Louvor', 'Quarta Feira', '19:00:00', 'Culto para adoração e Louvor...', '4', 'Observações do culto ...');
INSERT INTO `cultos` (`id`, `nome`, `dia`, `hora`, `descricao`, `departamento`, `obs`) VALUES ('4', 'Culto da Família', 'Domingo', '19:30:00', 'Culto da Familia...', '3', '');
INSERT INTO `cultos` (`id`, `nome`, `dia`, `hora`, `descricao`, `departamento`, `obs`) VALUES ('5', 'Culto de Louvor', 'Terça Feira', '19:30:00', 'Culto para louvor...', '3', 'Neste Culto será passado...');
INSERT INTO `cultos` (`id`, `nome`, `dia`, `hora`, `descricao`, `departamento`, `obs`) VALUES ('6', 'Culto de Revelação', 'Sexta Feira', '19:30:00', '', '3', '');
INSERT INTO `cultos` (`id`, `nome`, `dia`, `hora`, `descricao`, `departamento`, `obs`) VALUES ('7', 'Encontro Geral no Parque Anauá', 'Domingo', '19:40:00', 'Priorizemos de estarmos juntos.', '1', '');

-- TABLE: departamentos
CREATE TABLE `departamentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(150) DEFAULT NULL,
  `obs` text DEFAULT NULL,
  `imagem` varchar(150) DEFAULT NULL,
  `matriz` varchar(5) NOT NULL,
  `data_cad` date NOT NULL,
  `diretor` int(11) NOT NULL,
  `logo_rel` varchar(120) DEFAULT NULL,
  `cab_rel` varchar(120) DEFAULT NULL,
  `carteirinha_rel` varchar(120) DEFAULT NULL,
  `video` varchar(150) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `url` varchar(50) NOT NULL,
  `youtube` varchar(120) DEFAULT NULL,
  `instagram` varchar(120) DEFAULT NULL,
  `facebook` varchar(120) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `prebenda` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
INSERT INTO `departamentos` (`id`, `nome`, `telefone`, `endereco`, `obs`, `imagem`, `matriz`, `data_cad`, `diretor`, `logo_rel`, `cab_rel`, `carteirinha_rel`, `video`, `email`, `url`, `youtube`, `instagram`, `facebook`, `descricao`, `prebenda`) VALUES ('1', 'Departamento CIPTEA', '(00) 00000-0000', 'Rua A, Número 150, Bairro XX - Boa Vista - RR', 'Igreja Matriz Fundada em ...', '22-05-2023-16-22-53-logo.png', 'Sim', '2021-06-23', '24', '12-07-2021-12-21-35-LOGO-IGREJA.jpg', '12-07-2021-12-20-53-CABEÇALHO.jpg', '12-07-2021-12-20-53-carteirinha.jpg', 'https://www.youtube.com/embed/Y7sfHr1alEI', 'sistemasparadepartamentos@gmail.com', 'sede', 'https://www.youtube.com/embed/MtTEtbloIjU', 'https://www.google.com', 'https://www.facebook.com/hugo.vasconcelos.940', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscingLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', '0');
INSERT INTO `departamentos` (`id`, `nome`, `telefone`, `endereco`, `obs`, `imagem`, `matriz`, `data_cad`, `diretor`, `logo_rel`, `cab_rel`, `carteirinha_rel`, `video`, `email`, `url`, `youtube`, `instagram`, `facebook`, `descricao`, `prebenda`) VALUES ('3', 'Juventude', '(56) 55545-8555', 'Rua A, Número 150, Bairro XX - Boa Vista - RR', '', '22-05-2023-16-16-14-homem-jovem.png', 'Não', '2021-06-23', '21', '12-07-2021-12-17-34-ICONE-IGREJA.jpg', '12-07-2021-13-04-00-CABEÇALHO.jpg', '12-07-2021-13-57-31-carteirinha.jpg', 'https://www.youtube.com/embed/Y7sfHr1alEI', 'pentecserraverde@gmail.com', 'rorainopolis', 'https://www.youtube.com/embed/MtTEtbloIjU', 'https://www.google.com', 'https://www.facebook.com/hugo.vasconcelos.940', 'Nossa igreja foi fundada em 1976 pelo pastor ..... Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscingLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', '0');
INSERT INTO `departamentos` (`id`, `nome`, `telefone`, `endereco`, `obs`, `imagem`, `matriz`, `data_cad`, `diretor`, `logo_rel`, `cab_rel`, `carteirinha_rel`, `video`, `email`, `url`, `youtube`, `instagram`, `facebook`, `descricao`, `prebenda`) VALUES ('6', 'Esporte', '(95) 99156-4464', 'Rua D Nove, 209 - Caracaraí - RR CEP 69.360-000', '', '22-05-2023-16-15-27-esport.png', 'Não', '2023-05-16', '22', 'sem-foto.jpg', 'sem-foto.jpg', 'sem-foto.jpg', '', 'cararai@hotmail.com', 'caracarai', '', '', '', '', '0');
INSERT INTO `departamentos` (`id`, `nome`, `telefone`, `endereco`, `obs`, `imagem`, `matriz`, `data_cad`, `diretor`, `logo_rel`, `cab_rel`, `carteirinha_rel`, `video`, `email`, `url`, `youtube`, `instagram`, `facebook`, `descricao`, `prebenda`) VALUES ('7', 'PCD', '(95) 99156-4646', '', '', '22-05-2023-16-15-56-cedir.png', 'Não', '2023-05-16', '3', '19-05-2023-16-53-49-calvin.jpg', 'sem-foto.jpg', 'sem-foto.jpg', 'https://www.youtube.com/watch?v=noHyZcNym_M', '', 'altoalegre', '', '', '', '', '0');

-- TABLE: diretores
CREATE TABLE `diretores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `foto` varchar(150) DEFAULT NULL,
  `data_cad` date DEFAULT NULL,
  `data_nasc` date DEFAULT NULL,
  `departamento` int(11) NOT NULL,
  `obs` text DEFAULT NULL,
  `prebenda` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
INSERT INTO `diretores` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`, `foto`, `data_cad`, `data_nasc`, `departamento`, `obs`, `prebenda`) VALUES ('1', 'Super Administrador', 'sistemasparaigrejas@gmail.com', '000.000.000-00', '(00)00000-0000', '', 'sem-foto.jpg', '2021-06-28', '2021-05-17', '1', '', '0');
INSERT INTO `diretores` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`, `foto`, `data_cad`, `data_nasc`, `departamento`, `obs`, `prebenda`) VALUES ('24', 'Sulamita DE SOUZA MENDES', 'discipulandorr@gmail.com', '702.563.132-96', '(95) 91111-1111', 'Rua Mario Homem de Melo, sn Mecejana Boa Vista RR', '22-05-2023-17-10-57-sulamita.jpg', '2023-05-22', '1977-03-03', '1', '', '0');

-- TABLE: dizimos
CREATE TABLE `dizimos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `membro` int(11) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `data` date NOT NULL,
  `usuario` int(11) NOT NULL,
  `igreja` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- TABLE: doacoes
CREATE TABLE `doacoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `membro` int(11) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `data` date NOT NULL,
  `usuario` int(11) NOT NULL,
  `igreja` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- TABLE: documentos
CREATE TABLE `documentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(70) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `arquivo` varchar(150) NOT NULL,
  `data` date NOT NULL,
  `usuario` int(11) NOT NULL,
  `departamento` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
INSERT INTO `documentos` (`id`, `nome`, `descricao`, `arquivo`, `data`, `usuario`, `departamento`) VALUES ('2', 'Contrato de Locação', 'Contrato de Locação feito em Março de 2021', '05-07-2021-11-17-09-pedido.rar', '2021-07-05', '6', '3');
INSERT INTO `documentos` (`id`, `nome`, `descricao`, `arquivo`, `data`, `usuario`, `departamento`) VALUES ('3', 'Contrato de Mesas', 'Mesas alugadas para evento data dia 20/03/2020', '05-07-2021-11-26-17-pedido.pdf', '2021-07-05', '6', '3');
INSERT INTO `documentos` (`id`, `nome`, `descricao`, `arquivo`, `data`, `usuario`, `departamento`) VALUES ('5', 'Documento XY', 'Descricao do Documento x....', '05-07-2021-11-45-54-logo-igreja2.png', '2021-07-03', '6', '3');
INSERT INTO `documentos` (`id`, `nome`, `descricao`, `arquivo`, `data`, `usuario`, `departamento`) VALUES ('6', 'Contrato X', 'Contrato ...', '05-07-2021-11-52-26-arquivo-teste.docx', '2021-07-05', '6', '3');

-- TABLE: eventos
CREATE TABLE `eventos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(60) NOT NULL,
  `subtitulo` text DEFAULT NULL,
  `descricao1` text DEFAULT NULL,
  `descricao2` text DEFAULT NULL,
  `descricao3` text DEFAULT NULL,
  `data_cad` date NOT NULL,
  `data_evento` date NOT NULL,
  `usuario` int(11) NOT NULL,
  `imagem` varchar(150) DEFAULT NULL,
  `video` varchar(100) DEFAULT NULL,
  `ativo` varchar(5) NOT NULL,
  `departamento` int(11) NOT NULL,
  `obs` text DEFAULT NULL,
  `banner` varchar(120) DEFAULT NULL,
  `tipo` varchar(20) NOT NULL,
  `url` varchar(100) DEFAULT NULL,
  `pregador` varchar(50) DEFAULT NULL,
  `data_banner` varchar(5) DEFAULT NULL,
  `titulo_banner` varchar(5) DEFAULT NULL,
  `link_banner` varchar(5) DEFAULT NULL,
  `video_banner` varchar(5) DEFAULT NULL,
  `subtitulo_banner` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
INSERT INTO `eventos` (`id`, `titulo`, `subtitulo`, `descricao1`, `descricao2`, `descricao3`, `data_cad`, `data_evento`, `usuario`, `imagem`, `video`, `ativo`, `departamento`, `obs`, `banner`, `tipo`, `url`, `pregador`, `data_banner`, `titulo_banner`, `link_banner`, `video_banner`, `subtitulo_banner`) VALUES ('1', 'Encontro de Jovens de Boa Vista', 'A simple magazine WordPress theme suitable for any sort of magazine style website such as fashion, technology, food, lifestyle, new, cars, gamin and much more. Newspaper-X is a free theme that you can use for private and commercial use without any restrictions.', 'A simple magazine WordPress theme suitable for any sort of magazine style website such as fashion, technology, food, lifestyle, new, cars, gamin and much more. Newspaper-X is a free theme that you can use for private and commercial use without any restrictions.A simple magazine WordPress theme suitable for any sort of magazine style website such as fashion, technology, food, lifestyle, new, cars, gamin and much more. Newspaper-X is a free theme that you can use for private and commercial use without any restrictions.', 'A simple magazine WordPress theme suitable for any sort of magazine style website such as fashion, technology, food, lifestyle, new, cars, gamin and much more. Newspaper-X is a free theme that you can use for private and commercial use without any restrictions.A simple magazine WordPress theme suitable for any sort of magazine style website such as fashion, technology, food, lifestyle, new, cars, gamin and much more. Newspaper-X is a free theme that you can use for private and commercial use without any restrictions.A simple magazine WordPress theme suitable for any sort of magazine style website such as fashion, technology, food, lifestyle, new, cars, gamin and much more. Newspaper-X is a free theme that you can use for private and commercial use without any restrictions.', 'A simple magazine WordPress theme suitable for any sort of magazine style website such as fashion, technology, food, lifestyle, new, cars, gamin and much more. Newspaper-X is a free theme that you can use for private and commercial use without any restrictions.A simple magazine WordPress theme suitable for any sort of magazine style website such as fashion, technology, food, lifestyle, new, cars, gamin and much more. Newspaper-X is a free theme that you can use for private and commercial use without any restrictions.A simple magazine WordPress theme suitable for any sort of magazine style website such as fashion, technology, food, lifestyle, new, cars, gamin and much more. Newspaper-X is a free theme that you can use for private and commercial use without any restrictions.A simple magazine WordPress theme suitable for any sort of magazine style website such as fashion, technology, food, lifestyle, new, cars, gamin and much more. Newspaper-X is a free theme that you can use for private and commercial use without any restrictions.', '2023-05-17', '2021-07-12', '6', '14-07-2021-09-59-58-05.jpg', '', 'Sim', '1', 'fdafaf', '13-07-2021-19-24-59-05.jpg', 'Evento', 'encontro-de-jovens-de-boa-vista', '', '', '', '', '', '');
INSERT INTO `eventos` (`id`, `titulo`, `subtitulo`, `descricao1`, `descricao2`, `descricao3`, `data_cad`, `data_evento`, `usuario`, `imagem`, `video`, `ativo`, `departamento`, `obs`, `banner`, `tipo`, `url`, `pregador`, `data_banner`, `titulo_banner`, `link_banner`, `video_banner`, `subtitulo_banner`) VALUES ('3', 'Congresso de Mulheres', 'emper leo. Fusce lectus justo, porta quis felis at, imperdiet elementum libero. Duis nec dignissim lectus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque venenatis purus eget maximus. Fusce dapibus leo sed sem fringilla, nec convallis arcu egestas. Nullam ut', 'emper leo. Fusce lectus justo, porta quis felis at, imperdiet elementum libero. Duis nec dignissim lectus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque venenatis purus eget maximus. Fusce dapibus leo sed sem fringilla, nec convallis arcu egestas. Nullam utemper leo. Fusce lectus justo, porta quis felis at, imperdiet elementum libero. Duis nec dignissim lectus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque venenatis purus eget maximus. Fusce dapibus leo sed sem fringilla, nec convallis arcu egestas. Nullam ut', 'emper leo. Fusce lectus justo, porta quis felis at, imperdiet elementum libero. Duis nec dignissim lectus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque venenatis purus eget maximus. Fusce dapibus leo sed sem fringilla, nec convallis arcu egestas. Nullam uter leo. Fusce lectus justo, porta quis felis at, imperdiet elementum libero. Duis nec dignissim lectus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque venenatis purus eget maximus. Fusce dapibus leo sed sem fringilla, nec convallis arcu egestas. Nullam ut', 'emper leo. Fusce lectus justo, porta quis felis at, imperdiet elementum libero. Duis nec dignissim lectus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque venenatis purus eget maximus. Fusce dapibus leo sed sem fringilla, nec convallis arcu egestas. Nullam utemper leo. Fusce lectus justo, porta quis felis at, imperdiet elementum libero. Duis nec dignissim lectus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque venenatis purus eget maximus. Fusce dapibus leo sed sem fringilla, nec convallis arcu egestas. Nullam utemper leo. Fusce lectus justo, porta quis felis at, imperdiet elementum libero. Duis nec dignissim lectus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque venenatis purus eget maximus. Fusce dapibus leo sed sem fringilla, nec convallis arcu egestas. Nullam utemper leo. Fusce lectus justo, porta quis felis at, imperdiet elementum libero. Duis nec dignissim lectus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque venenatis purus eget maximus. Fusce dapibus leo sed sem fringilla, nec convallis arcu egestas. Nullam ut', '2021-07-14', '2021-07-16', '6', '14-07-2021-09-59-51-04.jpg', '', 'Sim', '1', '', '13-07-2021-19-22-55-04.jpg', 'Evento', 'congresso-de-mulheres', '', '', '', '', '', '');
INSERT INTO `eventos` (`id`, `titulo`, `subtitulo`, `descricao1`, `descricao2`, `descricao3`, `data_cad`, `data_evento`, `usuario`, `imagem`, `video`, `ativo`, `departamento`, `obs`, `banner`, `tipo`, `url`, `pregador`, `data_banner`, `titulo_banner`, `link_banner`, `video_banner`, `subtitulo_banner`) VALUES ('4', 'Culto de Mocidade', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscingLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', '2021-07-14', '2021-07-14', '6', '13-07-2021-19-14-50-01.jpg', 'https://www.youtube.com/embed/Y7sfHr1alEI', 'Sim', '3', '', '13-07-2021-19-14-39-03.jpg', 'Pregação', 'culto-de-mocidade', 'Pastor Cícero Campos', '', '', '', '', '');
INSERT INTO `eventos` (`id`, `titulo`, `subtitulo`, `descricao1`, `descricao2`, `descricao3`, `data_cad`, `data_evento`, `usuario`, `imagem`, `video`, `ativo`, `departamento`, `obs`, `banner`, `tipo`, `url`, `pregador`, `data_banner`, `titulo_banner`, `link_banner`, `video_banner`, `subtitulo_banner`) VALUES ('5', 'Pregação de Domingo 24/06', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscingLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscingLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', '2021-07-14', '2021-07-13', '6', '13-07-2021-19-15-36-02.jpg', 'https://www.youtube.com/embed/Y7sfHr1alEI', 'Sim', '3', '', '13-07-2021-19-15-36-04.jpg', 'Pregação', 'pregacao-de-domingo-24-06', 'Pastor Marcos', '', '', '', '', '');
INSERT INTO `eventos` (`id`, `titulo`, `subtitulo`, `descricao1`, `descricao2`, `descricao3`, `data_cad`, `data_evento`, `usuario`, `imagem`, `video`, `ativo`, `departamento`, `obs`, `banner`, `tipo`, `url`, `pregador`, `data_banner`, `titulo_banner`, `link_banner`, `video_banner`, `subtitulo_banner`) VALUES ('6', 'Culto das Mulheres', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscingLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', '2021-07-14', '2021-07-14', '6', '14-07-2021-11-31-42-06.png', 'https://www.youtube.com/embed/ZCPd_AVmazQ', 'Sim', '3', '', '14-07-2021-11-31-42-02.jpg', 'Evento', 'culto-das-mulheres', '', '', '', '', '', '');
INSERT INTO `eventos` (`id`, `titulo`, `subtitulo`, `descricao1`, `descricao2`, `descricao3`, `data_cad`, `data_evento`, `usuario`, `imagem`, `video`, `ativo`, `departamento`, `obs`, `banner`, `tipo`, `url`, `pregador`, `data_banner`, `titulo_banner`, `link_banner`, `video_banner`, `subtitulo_banner`) VALUES ('7', 'Culto de Oração', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscingLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscingLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', '2021-07-14', '2021-07-15', '6', '14-07-2021-11-33-54-08.jpg', 'https://www.youtube.com/embed/oafhBiqRP1I', 'Sim', '3', '', '14-07-2021-11-33-54-04.jpg', 'Pregação', 'culto-de-oracao', 'Pastor Silva', '', '', '', '', '');
INSERT INTO `eventos` (`id`, `titulo`, `subtitulo`, `descricao1`, `descricao2`, `descricao3`, `data_cad`, `data_evento`, `usuario`, `imagem`, `video`, `ativo`, `departamento`, `obs`, `banner`, `tipo`, `url`, `pregador`, `data_banner`, `titulo_banner`, `link_banner`, `video_banner`, `subtitulo_banner`) VALUES ('8', 'Titulo do evento', 'fdfafasfdsaf fdf fadfa df fsdsfdsa fd fa<br>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscingLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', '2022-11-08', '2022-11-09', '6', '14-07-2021-11-36-38-07.jpg', 'https://www.youtube.com/embed/J4UvFrnD_wk', 'Sim', '3', '', '08-11-2022-10-24-57-01banner.jpg', 'Evento', 'titulo-do-evento', '', 'Não', 'Não', '', 'Não', '');
INSERT INTO `eventos` (`id`, `titulo`, `subtitulo`, `descricao1`, `descricao2`, `descricao3`, `data_cad`, `data_evento`, `usuario`, `imagem`, `video`, `ativo`, `departamento`, `obs`, `banner`, `tipo`, `url`, `pregador`, `data_banner`, `titulo_banner`, `link_banner`, `video_banner`, `subtitulo_banner`) VALUES ('9', 'Aniversário da Igreja', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscingLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', '2022-11-08', '2021-07-14', '6', '14-07-2021-11-35-43-09.jpg', '', 'Sim', '3', '', '14-07-2021-11-35-43-01.jpg', 'Evento', 'aniversario-da-igreja', '', '', '', '', '', '');
INSERT INTO `eventos` (`id`, `titulo`, `subtitulo`, `descricao1`, `descricao2`, `descricao3`, `data_cad`, `data_evento`, `usuario`, `imagem`, `video`, `ativo`, `departamento`, `obs`, `banner`, `tipo`, `url`, `pregador`, `data_banner`, `titulo_banner`, `link_banner`, `video_banner`, `subtitulo_banner`) VALUES ('10', 'Congresso de Quarta', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', '2021-07-14', '2021-07-12', '6', '14-07-2021-11-38-10-01.jpg', '', 'Sim', '3', '', '14-07-2021-11-49-03-02.jpg', 'Evento', 'congresso-de-quarta', '', '', '', '', '', '');
INSERT INTO `eventos` (`id`, `titulo`, `subtitulo`, `descricao1`, `descricao2`, `descricao3`, `data_cad`, `data_evento`, `usuario`, `imagem`, `video`, `ativo`, `departamento`, `obs`, `banner`, `tipo`, `url`, `pregador`, `data_banner`, `titulo_banner`, `link_banner`, `video_banner`, `subtitulo_banner`) VALUES ('11', 'Encontro de Jovens', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', '', '2021-07-14', '2021-07-11', '6', '14-07-2021-11-39-16-02.jpg', '', 'Sim', '3', '', '14-07-2021-11-39-16-03.jpg', 'Evento', 'encontro-de-jovens', '', '', '', '', '', '');
INSERT INTO `eventos` (`id`, `titulo`, `subtitulo`, `descricao1`, `descricao2`, `descricao3`, `data_cad`, `data_evento`, `usuario`, `imagem`, `video`, `ativo`, `departamento`, `obs`, `banner`, `tipo`, `url`, `pregador`, `data_banner`, `titulo_banner`, `link_banner`, `video_banner`, `subtitulo_banner`) VALUES ('12', 'Bazar da Igreja', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', '', '2021-07-14', '2021-07-06', '6', '14-07-2021-11-39-49-04.jpg', '', 'Sim', '3', '', 'sem-foto.jpg', 'Evento', 'bazar-da-igreja', '', '', '', '', '', '');
INSERT INTO `eventos` (`id`, `titulo`, `subtitulo`, `descricao1`, `descricao2`, `descricao3`, `data_cad`, `data_evento`, `usuario`, `imagem`, `video`, `ativo`, `departamento`, `obs`, `banner`, `tipo`, `url`, `pregador`, `data_banner`, `titulo_banner`, `link_banner`, `video_banner`, `subtitulo_banner`) VALUES ('13', 'fsdfasfdasfasfasd', 'teste', 'fdafdsf', 'dfdsa', 'fafdas', '2022-11-08', '2022-11-08', '6', 'sem-foto.jpg', 'https://www.youtube.com/embed/OE8Wz0-v5nc', 'Sim', '3', '', '08-11-2022-10-54-27-01banner.jpg', 'Evento', 'fsdfasfdasfasfasd', '', 'Não', 'Não', 'Não', 'Não', 'Não');
INSERT INTO `eventos` (`id`, `titulo`, `subtitulo`, `descricao1`, `descricao2`, `descricao3`, `data_cad`, `data_evento`, `usuario`, `imagem`, `video`, `ativo`, `departamento`, `obs`, `banner`, `tipo`, `url`, `pregador`, `data_banner`, `titulo_banner`, `link_banner`, `video_banner`, `subtitulo_banner`) VALUES ('14', '+ Bíblia e - Mundo', '', '', '', '', '2023-05-17', '2022-02-27', '6', '17-05-2023-11-11-11-maisbiblia.png', 'https://www.youtube.com/watch?v=bamqsMjLsIU', 'Sim', '1', '', '17-05-2023-11-23-15-13-07-2021-19-14-39-03.jpg', 'Evento', '+-biblia-e-mundo', '', '', '', '', '', 'Não');

-- TABLE: fechamentos
CREATE TABLE `fechamentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `igreja` int(11) NOT NULL,
  `data_fec` date NOT NULL,
  `data` date NOT NULL,
  `usuario` int(11) NOT NULL,
  `saidas` decimal(8,2) NOT NULL,
  `entradas` decimal(8,2) NOT NULL,
  `saldo` decimal(8,2) NOT NULL,
  `prebenda` decimal(8,2) NOT NULL,
  `saldo_final` decimal(8,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
INSERT INTO `fechamentos` (`id`, `igreja`, `data_fec`, `data`, `usuario`, `saidas`, `entradas`, `saldo`, `prebenda`, `saldo_final`) VALUES ('2', '3', '2022-10-08', '2022-11-08', '6', '500.00', '1000.00', '500.00', '150.00', '350.00');
INSERT INTO `fechamentos` (`id`, `igreja`, `data_fec`, `data`, `usuario`, `saidas`, `entradas`, `saldo`, `prebenda`, `saldo_final`) VALUES ('3', '3', '2022-09-08', '2022-11-08', '6', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `fechamentos` (`id`, `igreja`, `data_fec`, `data`, `usuario`, `saidas`, `entradas`, `saldo`, `prebenda`, `saldo_final`) VALUES ('6', '4', '2022-10-08', '2022-11-08', '6', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `fechamentos` (`id`, `igreja`, `data_fec`, `data`, `usuario`, `saidas`, `entradas`, `saldo`, `prebenda`, `saldo_final`) VALUES ('7', '3', '2022-07-13', '2022-11-08', '6', '0.00', '0.00', '0.00', '0.00', '0.00');

-- TABLE: fornecedores
CREATE TABLE `fornecedores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `produto` varchar(100) DEFAULT NULL,
  `igreja` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
INSERT INTO `fornecedores` (`id`, `nome`, `telefone`, `email`, `endereco`, `produto`, `igreja`) VALUES ('1', 'Raphael Silva', '(15) 10545-4545', 'rafael@hotmail.com', 'Rua Almeida Campos 150 Bairro Serra Verde - Belo Horizonte - MG', 'Cadeiras e Bancos', '3');
INSERT INTO `fornecedores` (`id`, `nome`, `telefone`, `email`, `endereco`, `produto`, `igreja`) VALUES ('2', 'Fabricio Silva', '(54) 85445-4555', 'fabricio@hotmail.com', '', 'Materiais de Limpeza', '3');
INSERT INTO `fornecedores` (`id`, `nome`, `telefone`, `email`, `endereco`, `produto`, `igreja`) VALUES ('3', 'Matheus Silva', '(32) 15454-5455', 'mateus@hotmail.com', '', 'Serviço de Pedreiro', '4');
INSERT INTO `fornecedores` (`id`, `nome`, `telefone`, `email`, `endereco`, `produto`, `igreja`) VALUES ('5', 'Marina Silva', '(31) 55555-5556', 'marina@hotmail.com', 'Rua A Numero  Bairro X', 'Limpeza de Cadeiras', '3');
INSERT INTO `fornecedores` (`id`, `nome`, `telefone`, `email`, `endereco`, `produto`, `igreja`) VALUES ('6', 'Roraima Energia', '(95) 32244-6444', 'roraimaenergia@gmail.com', '', 'Energia elétrica', '1');

-- TABLE: frequencias
CREATE TABLE `frequencias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frequencia` varchar(35) NOT NULL,
  `dias` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
INSERT INTO `frequencias` (`id`, `frequencia`, `dias`) VALUES ('1', 'Uma Vez', '0');
INSERT INTO `frequencias` (`id`, `frequencia`, `dias`) VALUES ('2', 'Diária', '1');
INSERT INTO `frequencias` (`id`, `frequencia`, `dias`) VALUES ('3', 'Semanal', '7');
INSERT INTO `frequencias` (`id`, `frequencia`, `dias`) VALUES ('4', 'Mensal', '30');
INSERT INTO `frequencias` (`id`, `frequencia`, `dias`) VALUES ('5', 'Semestral', '180');
INSERT INTO `frequencias` (`id`, `frequencia`, `dias`) VALUES ('6', 'Anual', '365');

-- TABLE: grupos
CREATE TABLE `grupos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `dias` varchar(75) NOT NULL,
  `hora` varchar(50) NOT NULL,
  `local` varchar(100) DEFAULT NULL,
  `diretor` int(11) NOT NULL,
  `tesoureiro` int(11) NOT NULL,
  `secretario` int(11) NOT NULL,
  `regente` int(11) NOT NULL,
  `lider1` int(11) NOT NULL,
  `lider2` int(11) NOT NULL,
  `obs` text DEFAULT NULL,
  `departamento` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
INSERT INTO `grupos` (`id`, `nome`, `dias`, `hora`, `local`, `diretor`, `tesoureiro`, `secretario`, `regente`, `lider1`, `lider2`, `obs`, `departamento`) VALUES ('1', 'Grupo de Oração', 'Quinta Feira', 'Das 20:00 as 20:45', 'Rua X Número 120 Bairro Candelária', '8', '8', '3', '8', '8', '4', 'fsfeferwaeraw', '3');
INSERT INTO `grupos` (`id`, `nome`, `dias`, `hora`, `local`, `diretor`, `tesoureiro`, `secretario`, `regente`, `lider1`, `lider2`, `obs`, `departamento`) VALUES ('2', 'Grupo de Louvor', 'Quinta Feira', 'Das 19:00 as 20:00', 'Rua X Número 120 Bairro Candelária', '8', '0', '0', '0', '8', '0', '', '3');

-- TABLE: grupos_membros
CREATE TABLE `grupos_membros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `membro` int(11) NOT NULL,
  `grupo` int(11) NOT NULL,
  `data` date NOT NULL,
  `igreja` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
INSERT INTO `grupos_membros` (`id`, `membro`, `grupo`, `data`, `igreja`) VALUES ('1', '8', '1', '2021-07-06', '3');
INSERT INTO `grupos_membros` (`id`, `membro`, `grupo`, `data`, `igreja`) VALUES ('3', '8', '2', '2021-07-06', '3');
INSERT INTO `grupos_membros` (`id`, `membro`, `grupo`, `data`, `igreja`) VALUES ('5', '4', '2', '2021-07-06', '3');
INSERT INTO `grupos_membros` (`id`, `membro`, `grupo`, `data`, `igreja`) VALUES ('13', '17', '1', '2021-09-28', '3');
INSERT INTO `grupos_membros` (`id`, `membro`, `grupo`, `data`, `igreja`) VALUES ('17', '41', '1', '2021-09-28', '3');
INSERT INTO `grupos_membros` (`id`, `membro`, `grupo`, `data`, `igreja`) VALUES ('19', '41', '2', '2021-09-28', '3');
INSERT INTO `grupos_membros` (`id`, `membro`, `grupo`, `data`, `igreja`) VALUES ('20', '11', '1', '2021-09-28', '3');

-- TABLE: informativos
CREATE TABLE `informativos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `igreja` int(11) NOT NULL,
  `preletor` varchar(50) NOT NULL,
  `data` date NOT NULL,
  `texto_base` varchar(255) NOT NULL,
  `tema` varchar(255) NOT NULL,
  `evento` varchar(100) NOT NULL,
  `horario` time NOT NULL,
  `obs` varchar(1000) DEFAULT NULL,
  `pastor_responsavel` int(11) NOT NULL,
  `pastores` varchar(1000) DEFAULT NULL,
  `lider_louvor` varchar(100) DEFAULT NULL,
  `obreiros` varchar(1000) DEFAULT NULL,
  `apoio` varchar(1000) DEFAULT NULL,
  `abertura` varchar(100) DEFAULT NULL,
  `recado` varchar(100) DEFAULT NULL,
  `oferta` varchar(100) DEFAULT NULL,
  `recepcao` varchar(100) DEFAULT NULL,
  `bercario` varchar(100) DEFAULT NULL,
  `escolinha` varchar(100) DEFAULT NULL,
  `membros` int(11) DEFAULT NULL,
  `visitantes` int(11) DEFAULT NULL,
  `conversoes` int(11) DEFAULT NULL,
  `total_ofertas` decimal(8,2) DEFAULT NULL,
  `total_dizimos` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
INSERT INTO `informativos` (`id`, `igreja`, `preletor`, `data`, `texto_base`, `tema`, `evento`, `horario`, `obs`, `pastor_responsavel`, `pastores`, `lider_louvor`, `obreiros`, `apoio`, `abertura`, `recado`, `oferta`, `recepcao`, `bercario`, `escolinha`, `membros`, `visitantes`, `conversoes`, `total_ofertas`, `total_dizimos`) VALUES ('2', '3', 'Pastor Silva (Convidado)', '2022-11-09', 'João 10:15', 'Este é o tema do culto ....', 'Culto de Santa Ceia', '19:00:00', 'Neste culto vamos fazer também uma confratenização para o final do ano...', '8', 'Pastor Saulo / Pastor Marcos', 'Marcelo Silva', 'Márcia / Paloma / Camila / Mária', 'Sandro / Marcos', 'Pastor David', 'Missionária Sabrina', 'Diáconiza Paloma', 'Obreira Camila', 'Obreira Mária', 'Obreira Márcia', '0', '0', '0', '0.00', '0.00');

-- TABLE: logs
CREATE TABLE `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `tabela` varchar(50) NOT NULL,
  `acao` varchar(35) NOT NULL,
  `usuario` int(11) NOT NULL,
  `id_reg` int(11) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `painel` varchar(100) DEFAULT NULL,
  `departamento` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=utf8;
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('58', '2023-05-03', '12:48:40', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('59', '2023-05-03', '12:54:30', 'usuarios', 'Logout', '6', '0', 'Logout', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('60', '2023-05-03', '12:55:31', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('61', '2023-05-03', '13:09:16', 'usuarios', 'Logout', '6', '0', 'Logout', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('62', '2023-05-03', '13:21:00', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('63', '2023-05-03', '13:23:44', 'igrejas', 'Exclusão', '6', '4', 'Pentescoltal Santa Mônica', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('64', '2023-05-03', '13:27:25', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('65', '2023-05-03', '13:29:49', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('66', '2023-05-03', '13:39:22', 'usuarios', 'Logout', '6', '0', 'Logout', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('67', '2023-05-03', '13:40:44', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('68', '2023-05-03', '13:41:07', 'igrejas', 'Edição', '6', '1', 'Boa Vista', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('69', '2023-05-03', '13:58:29', 'usuarios', 'Logout', '6', '0', 'Logout', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('70', '2023-05-03', '13:58:33', 'usuarios', 'Login', '18', '0', 'Login', 'Painel Igreja', '1');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('71', '2023-05-03', '14:09:20', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('72', '2023-05-03', '14:15:21', 'pastores', 'Edição', '6', '1', 'Super Administrador', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('73', '2023-05-03', '14:16:39', 'cargos', 'Edição', '6', '1', 'Discípulo', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('74', '2023-05-03', '14:16:57', 'cargos', 'Exclusão', '6', '3', 'Evangelista', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('75', '2023-05-03', '14:17:00', 'cargos', 'Exclusão', '6', '4', 'Missionário', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('76', '2023-05-03', '14:33:34', 'usuarios', 'Logout', '6', '0', 'Logout', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('77', '2023-05-15', '14:23:55', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('78', '2023-05-15', '14:36:57', 'igrejas', 'Edição', '6', '3', '31 de Março', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('79', '2023-05-15', '14:38:04', 'igrejas', 'Edição', '6', '1', 'Jardim Floresta', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('80', '2023-05-15', '14:39:20', 'pastores', 'Edição', '6', '22', 'Pastor William', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('81', '2023-05-15', '14:39:32', 'pastores', 'Edição', '6', '21', 'Pastor Edilberto Medeiros', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('82', '2023-05-15', '14:40:49', 'pastores', 'Edição', '6', '22', 'Pastor William', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('83', '2023-05-15', '14:40:56', 'pastores', 'Edição', '6', '21', 'Pastor Edilberto Medeiros', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('84', '2023-05-15', '14:41:09', 'pastores', 'Exclusão', '6', '2', 'Marcos Santos', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('85', '2023-05-15', '14:41:27', 'pastores', 'Exclusão', '6', '20', 'Pastor David', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('86', '2023-05-15', '14:41:32', 'pastores', 'Exclusão', '6', '19', 'Pastor Silva', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('87', '2023-05-15', '14:41:35', 'pastores', 'Exclusão', '6', '18', 'Marcio silva', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('88', '2023-05-15', '14:41:39', 'pastores', 'Exclusão', '6', '8', 'Antonio Silva', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('89', '2023-05-15', '14:42:41', 'pastores', 'Edição', '6', '3', 'Jeferson Antonio', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('90', '2023-05-15', '14:46:13', 'tesoureiros', 'Edição', '6', '8', 'Sabóia', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('91', '2023-05-15', '14:46:53', 'tesoureiros', 'Edição', '6', '7', 'Marcio', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('92', '2023-05-15', '14:47:00', 'tesoureiros', 'Exclusão', '6', '2', 'Tesoureiro Teste', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('93', '2023-05-15', '14:48:44', 'bispos', 'Edição', '6', '12', 'Marcos Moraes', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('94', '2023-05-16', '08:46:37', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('95', '2023-05-16', '08:48:55', 'igrejas', 'Edição', '6', '1', 'Floresta', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('96', '2023-05-16', '08:49:21', 'igrejas', 'Edição', '6', '1', 'Jardim Floresta', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('97', '2023-05-16', '08:51:50', 'cargos', 'Inserção', '6', '5', 'Discipulador', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('98', '2023-05-16', '08:52:14', 'cargos', 'Inserção', '6', '6', 'Líder', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('99', '2023-05-16', '08:58:04', 'igrejas', 'Edição', '6', '3', 'Boa Vista', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('100', '2023-05-16', '08:58:17', 'igrejas', 'Edição', '6', '1', 'Rorainópolis', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('101', '2023-05-16', '08:58:47', 'igrejas', 'Edição', '6', '3', 'Rorainópoliss', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('102', '2023-05-16', '08:58:57', 'igrejas', 'Edição', '6', '1', 'Boa Vista', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('103', '2023-05-16', '08:59:16', 'igrejas', 'Edição', '6', '3', 'Rorainópolis', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('104', '2023-05-16', '09:00:36', 'igrejas', 'Inserção', '6', '6', 'Caracaraí', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('105', '2023-05-16', '09:01:18', 'igrejas', 'Edição', '6', '3', 'Rorainópolis', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('106', '2023-05-16', '09:01:39', 'igrejas', 'Edição', '6', '3', 'Rorainópolis', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('107', '2023-05-16', '09:02:02', 'pastores', 'Edição', '6', '21', 'Pastor Edilberto Medeiros', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('108', '2023-05-16', '09:02:11', 'pastores', 'Edição', '6', '22', 'Pastor William', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('109', '2023-05-16', '09:02:24', 'igrejas', 'Edição', '6', '1', 'Boa Vista', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('110', '2023-05-16', '09:06:52', 'igrejas', 'Inserção', '6', '7', 'Alto Alegre', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('111', '2023-05-16', '09:07:05', 'igrejas', 'Edição', '6', '6', 'Caracaraí', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('112', '2023-05-16', '09:14:02', 'igrejas', 'Edição', '6', '6', 'Caracaraí', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('113', '2023-05-16', '09:38:09', 'usuarios', 'Logout', '6', '0', 'Logout', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('114', '2023-05-16', '09:38:26', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('115', '2023-05-16', '09:39:27', 'usuarios', 'Logout', '6', '0', 'Logout', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('116', '2023-05-16', '09:39:32', 'usuarios', 'Login', '27', '0', 'Login', 'Painel Igreja', '3');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('117', '2023-05-16', '09:40:17', 'usuarios', 'Logout', '27', '0', 'Logout', 'Painel Igreja', '3');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('118', '2023-05-16', '09:40:18', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('119', '2023-05-16', '09:41:20', 'usuarios', 'Logout', '6', '0', 'Logout', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('120', '2023-05-16', '09:41:24', 'usuarios', 'Login', '33', '0', 'Login', 'Painel Igreja', '3');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('121', '2023-05-16', '09:43:53', 'usuarios', 'Logout', '33', '0', 'Logout', 'Painel Igreja', '3');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('122', '2023-05-16', '09:43:55', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('123', '2023-05-16', '09:44:39', 'patrimonios', 'Edição', '6', '19', 'Ativo = Não', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('124', '2023-05-16', '09:45:02', 'patrimonios', 'Exclusão', '6', '4', 'Cadeira Branca', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('125', '2023-05-16', '09:49:50', 'bispos', 'Exclusão', '6', '12', 'Marcos Moraes', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('126', '2023-05-16', '09:51:59', 'usuarios', 'Logout', '6', '0', 'Logout', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('127', '2023-05-16', '09:52:04', 'usuarios', 'Login', '34', '0', 'Login', 'Painel Igreja', '3');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('128', '2023-05-16', '09:54:15', 'usuarios', 'Logout', '34', '0', 'Logout', 'Painel Igreja', '3');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('129', '2023-05-16', '09:54:17', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('130', '2023-05-16', '09:55:26', 'usuarios', 'Logout', '6', '0', 'Logout', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('131', '2023-05-16', '10:36:52', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('132', '2023-05-16', '10:38:36', 'igrejas', 'Edição', '6', '1', 'Boa Vista', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('133', '2023-05-16', '10:39:57', 'igrejas', 'Edição', '6', '3', 'Rorainópolis', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('134', '2023-05-16', '10:40:04', 'igrejas', 'Edição', '6', '6', 'Caracaraí', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('135', '2023-05-16', '10:40:10', 'igrejas', 'Edição', '6', '7', 'Alto Alegre', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('136', '2023-05-16', '10:43:34', 'pastores', 'Edição', '6', '22', 'Pastor William', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('137', '2023-05-16', '10:43:40', 'pastores', 'Edição', '6', '21', 'Pastor Edilberto Medeiros', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('138', '2023-05-16', '10:43:48', 'pastores', 'Edição', '6', '3', 'Jeferson Antonio', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('139', '2023-05-16', '10:58:07', 'igrejas', 'Edição', '6', '1', 'Boa Vista', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('140', '2023-05-16', '10:59:18', 'usuarios', 'Logout', '6', '0', 'Logout', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('141', '2023-05-16', '10:59:23', 'usuarios', 'Login', '49', '0', 'Login', 'Painel Igreja', '1');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('142', '2023-05-16', '11:42:47', 'usuarios', 'Logout', '49', '0', 'Logout', 'Painel Igreja', '1');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('143', '2023-05-16', '11:56:41', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('144', '2023-05-16', '11:57:14', 'igrejas', 'Edição', '6', '3', 'Rorainópolis', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('145', '2023-05-16', '15:22:25', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('146', '2023-05-16', '15:25:14', 'usuarios', 'Logout', '6', '0', 'Logout', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('147', '2023-05-16', '15:26:21', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('148', '2023-05-17', '12:37:46', 'usuarios', 'Logout', '6', '0', 'Logout', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('149', '2023-05-17', '13:56:09', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('150', '2023-05-18', '11:17:36', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('151', '2023-05-19', '14:41:21', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('152', '2023-05-19', '14:44:39', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('153', '2023-05-19', '15:09:54', 'administradores', 'Inserção', '6', '13', 'ANAJESSICA DE SOUZA MENDES', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('154', '2023-05-19', '15:11:01', 'administradores', 'Edição', '6', '13', 'ailton rivielle', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('155', '2023-05-19', '15:23:41', 'diretores', 'Edição', '6', '21', 'Pastor Edilberto Medeiros', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('156', '2023-05-19', '15:25:34', 'diretores', 'Edição', '6', '21', 'Pastor Edilberto Medeiros', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('157', '2023-05-19', '15:25:46', 'diretores', 'Edição', '6', '3', 'Jeferson Antonio', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('158', '2023-05-19', '15:30:07', 'tesoureiros', 'Edição', '6', '8', 'Sabóia', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('159', '2023-05-19', '15:30:21', 'tesoureiros', 'Edição', '6', '7', 'Marcio', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('160', '2023-05-19', '15:33:00', 'secretarios', 'Edição', '6', '3', 'Secretário Teste', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('161', '2023-05-19', '15:34:53', 'secretarios', 'Edição', '6', '3', 'Secretário Teste', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('162', '2023-05-19', '15:39:40', 'usuarios', 'Edição', '6', '50', 'ailton rivielle', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('163', '2023-05-19', '15:53:29', 'departamentos', 'Edição', '6', '1', 'Boa Vista r', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('164', '2023-05-19', '15:53:49', 'departamentos', 'Edição', '6', '7', 'Adicionou Imagens', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('165', '2023-05-19', '15:54:38', 'departamentos', 'Edição', '6', '1', 'Departamento CIPTEA', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('166', '2023-05-22', '09:18:30', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('167', '2023-05-22', '09:36:49', 'usuarios', 'Logout', '6', '0', 'Logout', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('168', '2023-05-22', '09:36:54', 'usuarios', 'Login', '49', '0', 'Login', 'Painel Departamento', '1');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('169', '2023-05-22', '09:43:07', 'usuarios', 'Logout', '49', '0', 'Logout', 'Painel Igreja', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('170', '2023-05-22', '09:43:09', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('171', '2023-05-22', '10:55:22', 'usuarios', 'Logout', '6', '0', 'Logout', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('172', '2023-05-22', '10:55:24', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('173', '2023-05-22', '11:22:52', 'usuarios', 'Logout', '6', '0', 'Logout', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('174', '2023-05-22', '11:34:51', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Departamento', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('175', '2023-05-22', '11:38:40', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('176', '2023-05-22', '11:38:42', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('177', '2023-05-22', '11:40:01', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('178', '2023-05-22', '11:52:47', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('179', '2023-05-22', '12:06:09', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('180', '2023-05-22', '12:38:16', 'administradores', 'Edição', '6', '13', 'ailton rivielle', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('181', '2023-05-22', '12:40:15', 'administradores', 'Edição', '6', '13', 'ailton rivielle', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('182', '2023-05-22', '12:40:44', 'administradores', 'Edição', '6', '13', 'ailton rivielle', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('183', '2023-05-22', '12:44:10', 'administradores', 'Edição', '6', '13', 'ailton rivielle', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('184', '2023-05-22', '12:44:44', 'administradores', 'Inserção', '6', '14', 'Administrador sistema teste', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('185', '2023-05-22', '12:51:30', 'secretarios', 'Edição', '6', '4', 'Secretario 2', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('186', '2023-05-22', '12:52:10', 'secretarios', 'Edição', '6', '4', 'Secretario 2', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('187', '2023-05-22', '12:52:17', 'secretarios', 'Edição', '6', '4', 'Secretario 2', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('188', '2023-05-22', '13:43:16', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('189', '2023-05-22', '14:33:38', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('190', '2023-05-22', '14:36:04', 'departamentos', 'Edição', '6', '3', 'Rorainópolis', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('191', '2023-05-22', '14:37:05', 'departamentos', 'Edição', '6', '1', 'Departamento CIPTEA', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('192', '2023-05-22', '14:37:25', 'usuarios', 'Logout', '6', '0', 'Logout', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('193', '2023-05-22', '14:51:27', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('194', '2023-05-22', '14:51:30', 'usuarios', 'Logout', '6', '0', 'Logout', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('195', '2023-05-22', '14:52:45', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('196', '2023-05-22', '14:53:26', 'diretores', 'Edição', '6', '22', 'William Silva', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('197', '2023-05-22', '14:54:41', 'diretores', 'Edição', '6', '3', 'Jeferson Pereira da Silva', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('198', '2023-05-22', '14:59:03', 'diretores', 'Edição', '6', '3', 'Jeferson Pereira da Silva', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('199', '2023-05-22', '15:04:30', 'secretarios', 'Edição', '6', '3', 'Secretário Teste', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('200', '2023-05-22', '15:04:41', 'secretarios', 'Edição', '6', '2', 'Secretário Teste', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('201', '2023-05-22', '15:05:07', 'diretores', 'Edição', '6', '23', 'ANAJESSICA DE SOUZA MENDES', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('202', '2023-05-22', '15:05:28', 'operadores', 'Edição', '6', '8', 'Sabóia', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('203', '2023-05-22', '15:05:45', 'operadores', 'Edição', '6', '7', 'Marcio', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('204', '2023-05-22', '15:07:07', 'visitadores', 'Edição', '6', '8', 'Sabóia', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('205', '2023-05-22', '15:08:41', 'visitadores', 'Edição', '6', '8', 'Sabóia', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('206', '2023-05-22', '15:08:54', 'visitadores', 'Edição', '6', '7', 'Marcio', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('207', '2023-05-22', '15:10:07', 'visitadores', 'Inserção', '6', '9', 'visitador Teste', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('208', '2023-05-22', '15:10:18', 'visitadores', 'Edição', '6', '9', 'visitador Teste', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('209', '2023-05-22', '15:10:21', 'visitadores', 'Exclusão', '6', '9', 'visitador Teste', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('210', '2023-05-22', '15:10:56', 'usuarios', 'Edição', '6', '52', 'Administrador sistema teste', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('211', '2023-05-22', '15:11:03', 'usuarios', 'Logout', '6', '0', 'Logout', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('212', '2023-05-22', '15:11:13', 'usuarios', 'Login', '52', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('213', '2023-05-22', '15:12:15', 'usuarios', 'Logout', '52', '0', 'Logout', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('214', '2023-05-22', '15:12:16', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('215', '2023-05-22', '15:13:13', 'secretarios', 'Edição', '6', '4', 'Tania', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('216', '2023-05-22', '15:13:30', 'secretarios', 'Edição', '6', '3', 'Soraima', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('217', '2023-05-22', '15:14:36', 'departamentos', 'Edição', '6', '3', 'Odontologia', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('218', '2023-05-22', '15:15:27', 'departamentos', 'Edição', '6', '6', 'Esporte', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('219', '2023-05-22', '15:15:56', 'departamentos', 'Edição', '6', '7', 'PCD', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('220', '2023-05-22', '15:16:14', 'departamentos', 'Edição', '6', '3', 'Odontologia', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('221', '2023-05-22', '15:16:35', 'departamentos', 'Edição', '6', '3', 'Juventude', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('222', '2023-05-22', '15:22:53', 'departamentos', 'Edição', '6', '1', 'Departamento CIPTEA', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('223', '2023-05-22', '15:25:06', 'diretores', 'Edição', '6', '22', 'Sunamita', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('224', '2023-05-22', '15:25:30', 'secretarios', 'Edição', '6', '3', 'Soraima', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('225', '2023-05-22', '15:26:00', 'secretarios', 'Edição', '6', '2', 'Isadora', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('226', '2023-05-22', '15:26:41', 'diretores', 'Edição', '6', '21', 'Edilberto Medeiros', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('227', '2023-05-22', '15:27:21', 'departamentos', 'Edição', '6', '1', 'Departamento CIPTEA', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('228', '2023-05-22', '15:27:34', 'cargos', 'Exclusão', '6', '1', 'Discípulo', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('229', '2023-05-22', '15:28:54', 'departamentos', 'Edição', '6', '1', 'Departamento CIPTEA', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('230', '2023-05-22', '15:29:08', 'usuarios', 'Logout', '6', '0', 'Logout', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('231', '2023-05-22', '15:33:09', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('232', '2023-05-22', '15:34:06', 'usuarios', 'Logout', '6', '0', 'Logout', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('233', '2023-05-22', '15:34:13', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('234', '2023-05-22', '15:41:18', 'operadores', 'Edição', '6', '8', 'Ane', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('235', '2023-05-22', '15:41:28', 'operadores', 'Edição', '6', '8', 'Ane', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('236', '2023-05-22', '15:46:03', 'operadores', 'Edição', '6', '8', 'Ane Rose', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('237', '2023-05-22', '15:47:08', 'visitadores', 'Edição', '6', '8', 'Maria', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('238', '2023-05-22', '15:47:36', 'visitadores', 'Edição', '6', '7', 'Cynira', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('239', '2023-05-22', '15:48:13', 'visitadores', 'Inserção', '6', '10', 'kaique', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('240', '2023-05-22', '15:49:29', 'administradores', 'Exclusão', '6', '14', 'Administrador sistema teste', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('241', '2023-05-22', '15:52:18', 'operadores', 'Exclusão', '6', '8', 'Ane Rose', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('242', '2023-05-22', '15:52:21', 'operadores', 'Exclusão', '6', '7', 'Marcio', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('243', '2023-05-22', '15:52:45', 'visitadores', 'Exclusão', '6', '7', 'Cynira', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('244', '2023-05-22', '15:52:47', 'visitadores', 'Exclusão', '6', '8', 'Maria', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('245', '2023-05-22', '15:52:49', 'visitadores', 'Exclusão', '6', '10', 'kaique', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('246', '2023-05-22', '15:52:55', 'diretores', 'Exclusão', '6', '3', 'Jeferson Pereira da Silva', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('247', '2023-05-22', '15:52:57', 'diretores', 'Exclusão', '6', '21', 'Edilberto Medeiros', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('248', '2023-05-22', '15:52:59', 'diretores', 'Exclusão', '6', '22', 'Sunamita', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('249', '2023-05-22', '15:53:01', 'diretores', 'Exclusão', '6', '23', 'ANAJESSICA DE SOUZA MENDES', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('250', '2023-05-22', '15:53:08', 'secretarios', 'Exclusão', '6', '2', 'Isadora', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('251', '2023-05-22', '15:53:10', 'secretarios', 'Exclusão', '6', '3', 'Soraima', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('252', '2023-05-22', '15:53:12', 'secretarios', 'Exclusão', '6', '4', 'Tania', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('253', '2023-05-22', '15:53:19', 'administradores', 'Exclusão', '6', '13', 'ailton rivielle', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('254', '2023-05-22', '15:57:03', 'usuarios', 'Logout', '6', '0', 'Logout', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('255', '2023-05-22', '15:58:51', 'usuarios', 'Login', '1', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('256', '2023-05-22', '16:12:18', 'usuarios', 'Login', '1', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('257', '2023-05-22', '16:22:16', 'usuarios', 'Login', '1', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('258', '2023-05-22', '16:22:33', 'diretores', 'Edição', '1', '24', 'Sulamita DE SOUZA MENDES', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `departamento`) VALUES ('259', '2023-05-22', '16:23:49', 'departamentos', 'Edição', '1', '1', 'Departamento CIPTEA', 'Painel Administrativo', '0');

-- TABLE: ministerios
CREATE TABLE `ministerios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `dias` varchar(150) NOT NULL,
  `hora` varchar(100) NOT NULL,
  `pastor` int(11) NOT NULL,
  `secretario` int(11) NOT NULL,
  `lider1` int(11) NOT NULL,
  `lider2` int(11) NOT NULL,
  `obs` text DEFAULT NULL,
  `igreja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `ministerios` (`id`, `nome`, `dias`, `hora`, `pastor`, `secretario`, `lider1`, `lider2`, `obs`, `igreja`) VALUES ('1', 'Ministério de Louvor', 'Quarta Feira', 'Das 18:00 as 20:00', '0', '3', '41', '0', 'dfdsafddfsdafdasfsa', '3');
INSERT INTO `ministerios` (`id`, `nome`, `dias`, `hora`, `pastor`, `secretario`, `lider1`, `lider2`, `obs`, `igreja`) VALUES ('2', 'Ministério de Casais', 'Sábados', 'Das 15:00 as 16:00', '8', '3', '11', '0', '', '3');
INSERT INTO `ministerios` (`id`, `nome`, `dias`, `hora`, `pastor`, `secretario`, `lider1`, `lider2`, `obs`, `igreja`) VALUES ('1', 'Ministério de Louvor', 'Quarta Feira', 'Das 18:00 as 20:00', '0', '3', '41', '0', 'dfdsafddfsdafdasfsa', '3');
INSERT INTO `ministerios` (`id`, `nome`, `dias`, `hora`, `pastor`, `secretario`, `lider1`, `lider2`, `obs`, `igreja`) VALUES ('2', 'Ministério de Casais', 'Sábados', 'Das 15:00 as 16:00', '8', '3', '11', '0', '', '3');

-- TABLE: ministerios_membros
CREATE TABLE `ministerios_membros` (
  `id` int(11) NOT NULL,
  `membro` int(11) NOT NULL,
  `ministerio` int(11) NOT NULL,
  `data` date NOT NULL,
  `igreja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `ministerios_membros` (`id`, `membro`, `ministerio`, `data`, `igreja`) VALUES ('1', '11', '1', '2021-11-16', '3');
INSERT INTO `ministerios_membros` (`id`, `membro`, `ministerio`, `data`, `igreja`) VALUES ('3', '17', '1', '2021-11-16', '3');
INSERT INTO `ministerios_membros` (`id`, `membro`, `ministerio`, `data`, `igreja`) VALUES ('4', '11', '2', '2021-11-16', '3');
INSERT INTO `ministerios_membros` (`id`, `membro`, `ministerio`, `data`, `igreja`) VALUES ('5', '8', '2', '2021-11-16', '3');
INSERT INTO `ministerios_membros` (`id`, `membro`, `ministerio`, `data`, `igreja`) VALUES ('6', '17', '2', '2021-11-16', '3');
INSERT INTO `ministerios_membros` (`id`, `membro`, `ministerio`, `data`, `igreja`) VALUES ('1', '11', '1', '2021-11-16', '3');
INSERT INTO `ministerios_membros` (`id`, `membro`, `ministerio`, `data`, `igreja`) VALUES ('3', '17', '1', '2021-11-16', '3');
INSERT INTO `ministerios_membros` (`id`, `membro`, `ministerio`, `data`, `igreja`) VALUES ('4', '11', '2', '2021-11-16', '3');
INSERT INTO `ministerios_membros` (`id`, `membro`, `ministerio`, `data`, `igreja`) VALUES ('5', '8', '2', '2021-11-16', '3');
INSERT INTO `ministerios_membros` (`id`, `membro`, `ministerio`, `data`, `igreja`) VALUES ('6', '17', '2', '2021-11-16', '3');

-- TABLE: missoes_enviadas
CREATE TABLE `missoes_enviadas` (
  `id` int(11) NOT NULL,
  `membro` varchar(50) DEFAULT NULL,
  `valor` decimal(8,2) NOT NULL,
  `data` date NOT NULL,
  `usuario` int(11) NOT NULL,
  `igreja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `missoes_enviadas` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('1', 'Missão na ìndia', '1200.00', '2021-11-16', '6', '3');

-- TABLE: missoes_recebidas
CREATE TABLE `missoes_recebidas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `membro` varchar(50) DEFAULT NULL,
  `valor` decimal(8,2) NOT NULL,
  `data` date NOT NULL,
  `usuario` int(11) NOT NULL,
  `igreja` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
INSERT INTO `missoes_recebidas` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('1', 'Doado por Empresa C', '1650.00', '2021-11-16', '6', '3');
INSERT INTO `missoes_recebidas` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('2', 'Membro Carlos Silva', '2200.00', '2021-11-16', '6', '3');
INSERT INTO `missoes_recebidas` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('3', 'Não Membro', '1400.00', '2021-11-15', '6', '3');

-- TABLE: movimentacoes
CREATE TABLE `movimentacoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(20) NOT NULL,
  `movimento` varchar(25) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `data` date NOT NULL,
  `usuario` int(11) NOT NULL,
  `id_mov` int(11) NOT NULL,
  `departamento` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('5', 'Saída', 'Conta à Pagar', 'Produtos de Limpeza', '680.00', '2021-06-29', '26', '3', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('6', 'Saída', 'Conta à Pagar', 'Conta diaria', '50.00', '2021-06-29', '26', '15', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('7', 'Saída', 'Conta à Pagar', 'Conta diaria', '50.00', '2021-06-29', '26', '16', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('8', 'Saída', 'Conta à Pagar', 'Conta teste 2', '350.00', '2021-06-29', '26', '18', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('15', 'Entrada', 'Dízimo', 'Fábio Silva', '380.00', '2021-06-29', '26', '10', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('16', 'Entrada', 'Dízimo', 'Membro Não Informado', '360.00', '2021-06-27', '26', '11', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('17', 'Entrada', 'Dízimo', 'Pablo Campos', '460.00', '2021-06-29', '26', '12', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('22', 'Entrada', 'Oferta', 'Paola Silva', '600.00', '2021-06-29', '26', '4', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('23', 'Entrada', 'Oferta', 'Membro Não Informado', '50.00', '2021-06-29', '26', '5', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('24', 'Entrada', 'Oferta', 'Fábio Silva', '199.00', '2021-06-29', '26', '6', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('27', 'Entrada', 'Oferta', 'Membro Não Informado', '240.00', '2021-06-29', '33', '9', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('29', 'Entrada', 'Doação', 'Membro Não Informado', '1500.00', '2021-06-29', '6', '1', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('30', 'Entrada', 'Doação', 'Marta Silva', '1200.00', '2021-06-29', '6', '2', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('33', 'Entrada', 'Venda', 'Vendas da Cantina', '950.00', '2021-06-28', '6', '2', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('34', 'Entrada', 'Venda', 'Conta de Luz', '550.00', '2021-06-29', '6', '0', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('35', 'Entrada', 'Venda', 'Conta de Luz', '550.00', '2021-06-29', '6', '0', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('36', 'Entrada', 'Venda', 'Cantina', '55.00', '2021-06-29', '6', '0', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('37', 'Saída', 'Conta à Pagar', 'Produtos de Limpeza', '500.00', '2021-06-30', '6', '22', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('38', 'Saída', 'Conta à Pagar', 'Aluguel', '1600.00', '2021-06-30', '6', '11', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('40', 'Entrada', 'Venda', 'Vendas da Cantina', '1600.00', '2021-06-30', '6', '4', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('41', 'Entrada', 'Dízimo', 'Fábio Silva', '1500.00', '2021-06-30', '27', '14', '4');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('42', 'Saída', 'Conta à Pagar', 'Conta de Água', '980.00', '2021-07-12', '6', '4', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('43', 'Saída', 'Conta à Pagar', 'Compra de Microfone', '360.00', '2021-07-12', '6', '19', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('44', 'Saída', 'Conta à Pagar', 'Telefone', '690.00', '2021-07-12', '6', '20', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('45', 'Saída', 'Conta à Pagar', 'Conta de Agua', '260.00', '2021-07-12', '6', '24', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('46', 'Entrada', 'Venda', 'Cantina', '30.55', '2021-07-12', '6', '0', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('47', 'Entrada', 'Dízimo', 'Fábio Silva', '650.00', '2021-07-12', '6', '15', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('48', 'Entrada', 'Dízimo', 'Pablo Campos', '175.00', '2021-09-26', '6', '16', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('49', 'Entrada', 'Oferta', 'Membro Não Informado', '1200.00', '2021-07-12', '6', '11', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('50', 'Entrada', 'Doação', 'Membro Não Informado', '3600.00', '2021-07-12', '6', '4', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('51', 'Entrada', 'Venda', 'Vendas da Cantina', '160.00', '2021-07-12', '6', '5', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('52', 'Saída', 'Conta à Pagar', 'Compra de Fios', '540.00', '2021-09-15', '6', '21', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('53', 'Entrada', 'Doação', 'Fábio Silva', '360.00', '2021-09-15', '6', '5', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('54', 'Entrada', 'Oferta', 'Marta Silva', '1200.00', '2021-09-15', '6', '12', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('55', 'Entrada', 'Dízimo', 'Marta Silva', '450.00', '2021-09-15', '6', '17', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('56', 'Saída', 'Conta à Pagar', 'Conta de Água', '260.00', '2021-09-27', '6', '27', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('57', 'Saída', 'Conta à Pagar', 'Aluguél', '1300.00', '2021-09-27', '6', '30', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('58', 'Entrada', 'Venda', 'Cantina', '35.00', '2021-09-27', '6', '0', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('63', 'Entrada', 'Venda', 'Vendas da Cantina', '90.50', '2021-09-27', '6', '10', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('66', 'Entrada', 'Venda', 'Vendas da Cantina', '49.99', '2021-09-27', '6', '15', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('67', 'Entrada', 'Venda', 'Vendas da Cantina', '135.00', '2021-09-27', '6', '16', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('68', 'Entrada', 'Venda', 'Vendas da Cantina', '50.00', '2021-09-27', '6', '17', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('72', 'Entrada', 'Venda', 'Vendas da Cantina', '60.00', '2021-09-28', '6', '21', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('73', 'Entrada', 'Venda', 'Vendas da Cantina', '58.90', '2021-09-26', '6', '22', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('74', 'Entrada', 'Dízimo', 'Pablo Campos', '1800.00', '2021-09-27', '6', '18', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('75', 'Entrada', 'Dízimo', 'Membro Não Informado', '1200.00', '2021-09-27', '6', '19', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('77', 'Entrada', 'Dízimo', 'Marcelo Santos 2', '410.00', '2021-09-26', '6', '21', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('79', 'Entrada', 'Dízimo', 'Membro Não Informado', '120.00', '2021-09-27', '6', '13', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('80', 'Entrada', 'Dízimo', 'Pablo Campos', '130.00', '2021-09-27', '6', '14', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('82', 'Entrada', 'Oferta', 'Carlos da Silva', '175.00', '2021-09-26', '6', '16', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('84', 'Entrada', 'Doação', 'Hugo Vasconcelos', '160.00', '2021-09-26', '6', '7', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('85', 'Entrada', 'Doação', 'Paola Santos 3', '170.00', '2021-09-27', '6', '8', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('88', 'Saída', 'Conta à Pagar', 'Conta diaria', '50.00', '2021-09-28', '6', '17', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('89', 'Entrada', 'Venda', 'Cantina', '85.00', '2021-09-28', '6', '0', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('90', 'Entrada', 'Dízimo', 'Paola Santos 3', '1250.00', '2021-09-28', '6', '23', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('91', 'Saída', 'Conta à Pagar', 'Conta de luz', '560.00', '2021-09-28', '6', '39', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('92', 'Saída', 'Conta à Pagar', 'Conta de luz', '680.00', '2021-10-04', '6', '40', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('93', 'Saída', 'Conta à Pagar', 'Conta de agua', '690.00', '2021-10-05', '26', '42', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('94', 'Entrada', 'Venda', 'Cantina', '60.00', '2021-10-05', '26', '0', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('95', 'Entrada', 'Dízimo', 'Membro Não Informado', '600.00', '2021-10-05', '26', '24', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('96', 'Entrada', 'Dízimo', 'Carlos da Silva', '700.00', '2021-10-05', '26', '25', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('97', 'Entrada', 'Dízimo', 'Membro Não Informado', '1000.00', '2022-10-08', '6', '26', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('98', 'Saída', 'Conta à Pagar', 'Teste', '500.00', '2022-10-08', '6', '43', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('100', 'Entrada', 'Saldo', 'Saldo Mês', '350.00', '2022-11-01', '6', '2', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('101', 'Entrada', 'Saldo', 'Saldo Mês', '0.00', '2022-10-01', '6', '3', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('104', 'Entrada', 'Saldo', 'Saldo Mês', '0.00', '2022-11-01', '6', '6', '4');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('105', 'Saída', 'Conta à Pagar', 'Comprar Cadeiras', '200.00', '2022-11-08', '6', '44', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('106', 'Entrada', 'Saldo', 'Saldo Mês', '0.00', '2022-08-01', '6', '7', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('111', 'Entrada', 'Venda', 'Compra de bíblia', '150.00', '2023-05-16', '6', '0', '1');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `departamento`) VALUES ('112', 'Saída', 'Conta à Pagar', 'mes maio', '200.00', '2023-05-16', '6', '45', '1');

-- TABLE: ofertas
CREATE TABLE `ofertas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `membro` varchar(50) DEFAULT NULL,
  `valor` decimal(8,2) NOT NULL,
  `data` date NOT NULL,
  `usuario` int(11) NOT NULL,
  `igreja` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
INSERT INTO `ofertas` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('4', '5', '600.00', '2021-06-29', '26', '3');
INSERT INTO `ofertas` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('5', '0', '50.00', '2021-06-29', '26', '3');
INSERT INTO `ofertas` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('6', '1', '199.00', '2021-06-29', '26', '3');
INSERT INTO `ofertas` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('9', '0', '240.00', '2021-06-29', '33', '3');
INSERT INTO `ofertas` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('11', '0', '1200.00', '2021-07-12', '6', '3');
INSERT INTO `ofertas` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('12', '2', '1200.00', '2021-09-15', '6', '3');
INSERT INTO `ofertas` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('14', '4', '130.00', '2021-09-27', '6', '3');
INSERT INTO `ofertas` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('16', '41', '175.00', '2021-09-26', '6', '3');

-- TABLE: operadores
CREATE TABLE `operadores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `foto` varchar(150) DEFAULT NULL,
  `departamento` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- TABLE: pagar
CREATE TABLE `pagar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) DEFAULT NULL,
  `fornecedor` int(11) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `data` date NOT NULL,
  `vencimento` date NOT NULL,
  `usuario_cad` int(11) NOT NULL,
  `usuario_baixa` int(11) NOT NULL,
  `data_baixa` date DEFAULT NULL,
  `frequencia` int(11) NOT NULL,
  `pago` varchar(5) NOT NULL,
  `arquivo` varchar(150) DEFAULT NULL,
  `departamento` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- TABLE: patrimonios
CREATE TABLE `patrimonios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(50) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `valor` decimal(8,2) NOT NULL,
  `foto` varchar(150) NOT NULL,
  `usuario_cad` int(11) NOT NULL,
  `data_cad` date NOT NULL,
  `departamento_cad` int(11) NOT NULL,
  `departamento_item` int(11) NOT NULL,
  `usuario_emprestou` int(11) NOT NULL,
  `data_emprestimo` date DEFAULT NULL,
  `ativo` varchar(5) NOT NULL,
  `obs` text DEFAULT NULL,
  `entrada` varchar(15) NOT NULL,
  `doador` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
INSERT INTO `patrimonios` (`id`, `codigo`, `nome`, `descricao`, `valor`, `foto`, `usuario_cad`, `data_cad`, `departamento_cad`, `departamento_item`, `usuario_emprestou`, `data_emprestimo`, `ativo`, `obs`, `entrada`, `doador`) VALUES ('2', '01234', 'Microfone X573', 'Microfone Preto com cabo ...', '380.00', '05-07-2021-15-03-59-microfone.jpg', '6', '2021-07-05', '4', '4', '0', '', 'Não', 'Este microfone deu defeito e parou de funcionar na data x.', 'Compra', '');
INSERT INTO `patrimonios` (`id`, `codigo`, `nome`, `descricao`, `valor`, `foto`, `usuario_cad`, `data_cad`, `departamento_cad`, `departamento_item`, `usuario_emprestou`, `data_emprestimo`, `ativo`, `obs`, `entrada`, `doador`) VALUES ('5', '0145', 'Caixa de Som', 'Caixa de Som amperagem ...', '890.00', '05-07-2021-15-26-48-caixa-som.jpg', '6', '2021-07-05', '4', '4', '6', '2023-05-03', 'Sim', '', 'Compra', '');
INSERT INTO `patrimonios` (`id`, `codigo`, `nome`, `descricao`, `valor`, `foto`, `usuario_cad`, `data_cad`, `departamento_cad`, `departamento_item`, `usuario_emprestou`, `data_emprestimo`, `ativo`, `obs`, `entrada`, `doador`) VALUES ('6', '08412', 'Microfone X8751', 'Microfone Prata...', '650.00', '05-07-2021-18-17-38-microfone.jpg', '26', '2021-06-05', '3', '3', '6', '2021-07-06', 'Não', 'Microfone estragado, precisa de reparo pois não está funcionando bem', 'Compra', '');
INSERT INTO `patrimonios` (`id`, `codigo`, `nome`, `descricao`, `valor`, `foto`, `usuario_cad`, `data_cad`, `departamento_cad`, `departamento_item`, `usuario_emprestou`, `data_emprestimo`, `ativo`, `obs`, `entrada`, `doador`) VALUES ('7', '187467', 'Cadeira para Festa', 'Cadeira para Festa', '65.00', '05-07-2021-18-18-25-cadeira.jpg', '6', '2021-07-05', '3', '4', '26', '2021-07-05', 'Sim', 'Cadeira comprada para complementar as cadeiras de festas da igreja, esta cadeira está ....', 'Compra', '');
INSERT INTO `patrimonios` (`id`, `codigo`, `nome`, `descricao`, `valor`, `foto`, `usuario_cad`, `data_cad`, `departamento_cad`, `departamento_item`, `usuario_emprestou`, `data_emprestimo`, `ativo`, `obs`, `entrada`, `doador`) VALUES ('8', '054845', 'Banco de Couro', 'Banco de Couro do Altar', '0.00', 'sem-foto.jpg', '6', '2021-07-28', '1', '4', '6', '2023-05-03', 'Sim', '', 'Doação', 'Marta Silva');
INSERT INTO `patrimonios` (`id`, `codigo`, `nome`, `descricao`, `valor`, `foto`, `usuario_cad`, `data_cad`, `departamento_cad`, `departamento_item`, `usuario_emprestou`, `data_emprestimo`, `ativo`, `obs`, `entrada`, `doador`) VALUES ('9', '012365', 'Caixa de Som', 'Caixa de Som com amperagem 1200', '1300.00', '21-09-2021-15-07-39-caixa-som.jpg', '6', '2021-09-21', '3', '3', '0', '', 'Sim', '', 'Compra', '');
INSERT INTO `patrimonios` (`id`, `codigo`, `nome`, `descricao`, `valor`, `foto`, `usuario_cad`, `data_cad`, `departamento_cad`, `departamento_item`, `usuario_emprestou`, `data_emprestimo`, `ativo`, `obs`, `entrada`, `doador`) VALUES ('11', '048515', 'Banco de Madeira', 'Banco Revestido de Madeira MDF 2 Metros', '1400.00', '21-09-2021-19-01-08-índice.jpg', '6', '2021-09-21', '3', '1', '6', '2021-09-21', 'Sim', '', 'Compra', '');
INSERT INTO `patrimonios` (`id`, `codigo`, `nome`, `descricao`, `valor`, `foto`, `usuario_cad`, `data_cad`, `departamento_cad`, `departamento_item`, `usuario_emprestou`, `data_emprestimo`, `ativo`, `obs`, `entrada`, `doador`) VALUES ('13', '098754', 'Notebook acer', 'Notebook 8 gb de ram, 1 terá de hd', '2400.00', '71e5c740-88e2-4d0b-a563-1b5d0a8c0cb1.jpg', '6', '2021-09-21', '3', '4', '6', '2021-09-21', 'Sim', 'Produto novo', 'Compra', '');
INSERT INTO `patrimonios` (`id`, `codigo`, `nome`, `descricao`, `valor`, `foto`, `usuario_cad`, `data_cad`, `departamento_cad`, `departamento_item`, `usuario_emprestou`, `data_emprestimo`, `ativo`, `obs`, `entrada`, `doador`) VALUES ('18', '7564543', 'Microfone Gravação ', 'Microfone para PC', '95.00', 'eff0f19c-d0a6-48ae-892d-cb43fc4864ac.jpg', '6', '2021-09-21', '4', '3', '6', '2021-09-21', 'Sim', '', 'Compra', '');
INSERT INTO `patrimonios` (`id`, `codigo`, `nome`, `descricao`, `valor`, `foto`, `usuario_cad`, `data_cad`, `departamento_cad`, `departamento_item`, `usuario_emprestou`, `data_emprestimo`, `ativo`, `obs`, `entrada`, `doador`) VALUES ('19', '9765644', 'Monitor PC', 'Monitor 22 polegadas ', '700.00', '6dc89886-1348-46f4-a469-9f6c35332292.jpg', '6', '2021-09-21', '3', '4', '26', '2021-10-05', 'Não', '', 'Compra', '');
INSERT INTO `patrimonios` (`id`, `codigo`, `nome`, `descricao`, `valor`, `foto`, `usuario_cad`, `data_cad`, `departamento_cad`, `departamento_item`, `usuario_emprestou`, `data_emprestimo`, `ativo`, `obs`, `entrada`, `doador`) VALUES ('20', '03544', 'Panelão', 'Alumínio Inox de 150 Litros', '350.00', 'sem-foto.jpg', '6', '2023-05-03', '1', '1', '0', '', 'Sim', '', 'Compra', '');
INSERT INTO `patrimonios` (`id`, `codigo`, `nome`, `descricao`, `valor`, `foto`, `usuario_cad`, `data_cad`, `departamento_cad`, `departamento_item`, `usuario_emprestou`, `data_emprestimo`, `ativo`, `obs`, `entrada`, `doador`) VALUES ('21', '12345', 'Mesa madeira', 'madeira de lei', '2000.00', 'sem-foto.jpg', '49', '2023-05-09', '1', '1', '0', '', 'Sim', '', 'Compra', '');

-- TABLE: receber
CREATE TABLE `receber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) DEFAULT NULL,
  `membro` int(11) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `data` date NOT NULL,
  `vencimento` date NOT NULL,
  `usuario_cad` int(11) NOT NULL,
  `usuario_baixa` int(11) NOT NULL,
  `data_baixa` date DEFAULT NULL,
  `pago` varchar(5) NOT NULL,
  `departamento` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- TABLE: requetentes
CREATE TABLE `requetentes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `desejo` varchar(255) DEFAULT NULL,
  `departamento` int(11) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- TABLE: secretarios
CREATE TABLE `secretarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `foto` varchar(150) DEFAULT NULL,
  `departamento` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- TABLE: tarefas
CREATE TABLE `tarefas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(25) NOT NULL,
  `descricao` varchar(75) DEFAULT NULL,
  `hora` time NOT NULL,
  `data` date NOT NULL,
  `departamento` int(11) NOT NULL,
  `status` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `departamento`, `status`) VALUES ('2', 'Visita Membro', 'Paula Dos Santos fdsafd afdsaf fad affadf adfsafds', '10:40:00', '2021-06-28', '3', 'Concluída');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `departamento`, `status`) VALUES ('3', 'Limpeza da Igreja', 'Paloma Silva', '13:00:00', '2021-09-15', '3', 'Concluída');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `departamento`, `status`) VALUES ('4', 'Contabilidade', 'Controle Financeiro', '09:00:00', '2021-06-28', '3', 'Concluída');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `departamento`, `status`) VALUES ('5', 'Visitar Membro', 'Marcos Souza', '10:10:00', '2021-06-27', '3', 'Concluída');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `departamento`, `status`) VALUES ('6', 'Visitar Membro', 'Diacono Santos', '20:30:00', '2021-06-28', '3', 'Concluída');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `departamento`, `status`) VALUES ('8', 'Visitar Membro', 'Paloma Santos', '12:30:00', '2021-06-29', '4', 'Agendada');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `departamento`, `status`) VALUES ('9', 'Regulagem de Som', 'Regular os aparelhos de som', '12:00:00', '2021-06-29', '3', 'Concluída');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `departamento`, `status`) VALUES ('10', 'Visitar Membro', 'Thiago Silva', '15:30:00', '2021-06-29', '3', 'Concluída');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `departamento`, `status`) VALUES ('11', 'Visitar Membro', 'Visita ao Membro Santos', '21:00:00', '2021-09-15', '3', 'Concluída');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `departamento`, `status`) VALUES ('13', 'Comprar Microfones', 'Receber Fornecedor', '15:00:00', '2021-09-15', '3', 'Concluída');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `departamento`, `status`) VALUES ('15', 'Conserto de Equipamentos', 'Levar Equipamentos para o Conserto', '12:30:00', '2021-09-20', '3', 'Concluída');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `departamento`, `status`) VALUES ('18', 'Visitar Membro', 'Marcio Silva', '21:30:00', '2021-09-21', '3', 'Concluída');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `departamento`, `status`) VALUES ('32', 'Visitar Membro ', 'Paula silva', '20:29:00', '2021-09-21', '4', 'Agendada');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `departamento`, `status`) VALUES ('33', 'Visitar Membro ', 'Marcia Souza ', '15:10:00', '2021-09-22', '3', 'Concluída');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `departamento`, `status`) VALUES ('34', 'Visitar Membro ', 'Carlos souza', '15:46:00', '2021-09-28', '3', 'Concluída');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `departamento`, `status`) VALUES ('38', 'Visitar Membro ', 'Marcos ', '11:48:00', '2021-10-04', '3', 'Agendada');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `departamento`, `status`) VALUES ('39', 'Visitar Membro', 'Paula Silva', '19:30:00', '2021-10-04', '3', 'Agendada');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `departamento`, `status`) VALUES ('46', 'Visitar Membro', 'Carlos Silva', '11:37:00', '2021-10-05', '3', 'Concluída');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `departamento`, `status`) VALUES ('47', 'Reunião ', 'Diaconos', '11:39:00', '2021-10-05', '3', 'Concluída');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `departamento`, `status`) VALUES ('48', 'Visitar Membro', 'Marcia', '11:41:00', '2021-10-05', '3', 'Agendada');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `departamento`, `status`) VALUES ('51', 'Visitar Membro ', 'Aaaa', '13:53:00', '2021-10-05', '3', 'Agendada');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `departamento`, `status`) VALUES ('52', 'Reunião com o pastor', 'Teste', '14:05:00', '2021-10-05', '3', 'Concluída');

-- TABLE: token
CREATE TABLE `token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nivel` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `departamento` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `token` (`id`, `token`, `nivel`, `departamento`) VALUES ('8', 'ExponentPushToken[7Ipy54KH49T9O7JXSIPNu_]', 'tesoureiro', '3');
INSERT INTO `token` (`id`, `token`, `nivel`, `departamento`) VALUES ('9', 'ExponentPushToken[hgIJgcO3bEaqnLNCViaYfv]', 'pastor', '3');

-- TABLE: transferencias
CREATE TABLE `transferencias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `membro` int(11) NOT NULL,
  `departamento_saida` int(11) NOT NULL,
  `departamento_entrada` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `data` date NOT NULL,
  `obs` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
INSERT INTO `transferencias` (`id`, `membro`, `departamento_saida`, `departamento_entrada`, `usuario`, `data`, `obs`) VALUES ('1', '53', '3', '4', '6', '2022-11-07', 'teste ');
INSERT INTO `transferencias` (`id`, `membro`, `departamento_saida`, `departamento_entrada`, `usuario`, `data`, `obs`) VALUES ('2', '53', '4', '3', '6', '2022-11-07', 'devolvido');
INSERT INTO `transferencias` (`id`, `membro`, `departamento_saida`, `departamento_entrada`, `usuario`, `data`, `obs`) VALUES ('3', '51', '3', '4', '6', '2022-11-08', 'fffsdfsdfds');
INSERT INTO `transferencias` (`id`, `membro`, `departamento_saida`, `departamento_entrada`, `usuario`, `data`, `obs`) VALUES ('4', '51', '4', '1', '6', '2023-05-03', 'gn');
INSERT INTO `transferencias` (`id`, `membro`, `departamento_saida`, `departamento_entrada`, `usuario`, `data`, `obs`) VALUES ('5', '48', '4', '1', '6', '2023-05-03', 'gn');
INSERT INTO `transferencias` (`id`, `membro`, `departamento_saida`, `departamento_entrada`, `usuario`, `data`, `obs`) VALUES ('6', '53', '3', '1', '6', '2023-05-03', '');
INSERT INTO `transferencias` (`id`, `membro`, `departamento_saida`, `departamento_entrada`, `usuario`, `data`, `obs`) VALUES ('7', '53', '3', '1', '6', '2023-05-03', '');
INSERT INTO `transferencias` (`id`, `membro`, `departamento_saida`, `departamento_entrada`, `usuario`, `data`, `obs`) VALUES ('8', '52', '3', '1', '6', '2023-05-03', '');
INSERT INTO `transferencias` (`id`, `membro`, `departamento_saida`, `departamento_entrada`, `usuario`, `data`, `obs`) VALUES ('9', '49', '3', '1', '6', '2023-05-03', '');
INSERT INTO `transferencias` (`id`, `membro`, `departamento_saida`, `departamento_entrada`, `usuario`, `data`, `obs`) VALUES ('10', '45', '3', '1', '6', '2023-05-03', '');
INSERT INTO `transferencias` (`id`, `membro`, `departamento_saida`, `departamento_entrada`, `usuario`, `data`, `obs`) VALUES ('11', '41', '3', '1', '6', '2023-05-03', '');
INSERT INTO `transferencias` (`id`, `membro`, `departamento_saida`, `departamento_entrada`, `usuario`, `data`, `obs`) VALUES ('12', '17', '3', '1', '6', '2023-05-03', '');
INSERT INTO `transferencias` (`id`, `membro`, `departamento_saida`, `departamento_entrada`, `usuario`, `data`, `obs`) VALUES ('13', '53', '1', '7', '6', '2023-05-19', '');
INSERT INTO `transferencias` (`id`, `membro`, `departamento_saida`, `departamento_entrada`, `usuario`, `data`, `obs`) VALUES ('14', '52', '1', '6', '6', '2023-05-19', '');

-- TABLE: usuarios
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `nivel` varchar(50) NOT NULL,
  `id_pessoa` int(11) NOT NULL,
  `foto` varchar(150) DEFAULT NULL,
  `departamento` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `email`, `senha`, `nivel`, `id_pessoa`, `foto`, `departamento`) VALUES ('1', 'Super Administrador', '000.000.000-00', 'sistemasparaciapd@gmail.com', '123', 'administrador', '1', 'sem-foto.jpg', '0');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `email`, `senha`, `nivel`, `id_pessoa`, `foto`, `departamento`) VALUES ('2', 'Sulamita DE SOUZA MENDES', '702.563.132-96', 'discipulandorr@gmail.com', '123@mudar', 'pastor', '24', '22-05-2023-17-10-57-sulamita.jpg', '1');

-- TABLE: vendas
CREATE TABLE `vendas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `data` date NOT NULL,
  `usuario` int(11) NOT NULL,
  `igreja` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- TABLE: versiculos
CREATE TABLE `versiculos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `versiculo` varchar(1000) NOT NULL,
  `capitulo` varchar(25) NOT NULL,
  `igreja` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
INSERT INTO `versiculos` (`id`, `versiculo`, `capitulo`, `igreja`) VALUES ('1', 'O amor é paciente, o amor é bondoso. Não inveja, não se vangloria, não se orgulha. Não maltrata, não procura seus interesses, não se ira facilmente, não guarda rancor. O amor não se alegra com a injustiça, mas se alegra com a verdade. Tudo sofre, tudo crê, tudo espera, tudo suporta.', '1 Coríntios 13:4-7', '3');
INSERT INTO `versiculos` (`id`, `versiculo`, `capitulo`, `igreja`) VALUES ('2', 'Não fui eu que ordenei a você? Seja forte e corajoso! Não se apavore nem desanime, pois o Senhor, o seu Deus, estará com você por onde você andar', 'Josué 1:9', '3');
INSERT INTO `versiculos` (`id`, `versiculo`, `capitulo`, `igreja`) VALUES ('3', 'Eu disse essas coisas para que em mim vocês tenham paz. Neste mundo vocês terão aflições; contudo, tenham ânimo! Eu venci o mundo', 'João 16:33', '3');
INSERT INTO `versiculos` (`id`, `versiculo`, `capitulo`, `igreja`) VALUES ('4', 'Nem só de pão viverá o homem mas de toda palavra da boca de Deus.', 'Jo 1.5', '1');

-- TABLE: visitadores
CREATE TABLE `visitadores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `foto` varchar(150) DEFAULT NULL,
  `departamento` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

