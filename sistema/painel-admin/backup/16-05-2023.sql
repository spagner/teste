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
INSERT INTO `alertas` (`id`, `titulo`, `descricao`, `link`, `imagem`, `data`, `ativo`, `igreja`, `usuario`) VALUES ('1', 'Site em Manuten��o', 'Nosso site estar� em manuten��o no dia 12 de Julho, acesse o link abaixo para poder entrar em nossa p�gina do facebook caso queira maiores informa��es.', 'http://www.google.com', 'sem-foto.jpg', '2021-07-13', 'N�o', '3', '6');
INSERT INTO `alertas` (`id`, `titulo`, `descricao`, `link`, `imagem`, `data`, `ativo`, `igreja`, `usuario`) VALUES ('2', 'N�o Haver� Culto Domingo', 'Devido ao motivo .... n�o teremos culto este domingo, voltaremos na quarta feira normalmente.', '', '12-07-2021-18-52-20-euepedro.jpeg', '2021-07-12', 'Sim', '3', '6');

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
INSERT INTO `anexos` (`id`, `nome`, `descricao`, `arquivo`, `data`, `usuario`, `igreja`) VALUES ('1', 'Presta��o de Contas', 'Dizimos, Ofertas, Vendas etc', '05-07-2021-13-07-22-pedido.rar', '2021-07-05', '6', '3');
INSERT INTO `anexos` (`id`, `nome`, `descricao`, `arquivo`, `data`, `usuario`, `igreja`) VALUES ('4', 'Relat�rio de Membros', '', '28-07-2021-14-13-41-certificado(1).pdf', '2021-07-28', '6', '3');

-- TABLE: bispos
CREATE TABLE `bispos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `foto` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
INSERT INTO `bispos` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`, `foto`) VALUES ('1', 'Administrador sistema', 'sistemasparaigrejas@gmail.com', '000.000.000-00', '(00)00000-0000', 'Rua Almeida Campos 150 Bairro Serra Verde - Belo Horizonte - MG', '22-06-2021-18-30-33-user.jpg');

-- TABLE: cargos
CREATE TABLE `cargos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
INSERT INTO `cargos` (`id`, `nome`) VALUES ('1', 'Disc�pulo');
INSERT INTO `cargos` (`id`, `nome`) VALUES ('2', 'Di�cono');
INSERT INTO `cargos` (`id`, `nome`) VALUES ('5', 'Discipulador');
INSERT INTO `cargos` (`id`, `nome`) VALUES ('6', 'L�der');

-- TABLE: celulas
CREATE TABLE `celulas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `dias` varchar(150) NOT NULL,
  `hora` varchar(100) NOT NULL,
  `local` varchar(100) DEFAULT NULL,
  `pastor` int(11) NOT NULL,
  `coordenador` int(11) NOT NULL,
  `lider1` int(11) NOT NULL,
  `lider2` int(11) NOT NULL,
  `obs` text DEFAULT NULL,
  `igreja` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
INSERT INTO `celulas` (`id`, `nome`, `dias`, `hora`, `local`, `pastor`, `coordenador`, `lider1`, `lider2`, `obs`, `igreja`) VALUES ('2', 'C�lula das Irm�s', 'Sexta Feira', 'Das 19:00 as 20:00', 'Rua X N�mero 120 Bairro Candel�ria', '2', '4', '8', '0', '', '3');
INSERT INTO `celulas` (`id`, `nome`, `dias`, `hora`, `local`, `pastor`, `coordenador`, `lider1`, `lider2`, `obs`, `igreja`) VALUES ('3', 'C�lula Quarta Feira', 'Quarta Feira', 'Das 20:00 as 20:45', 'Rua Y', '8', '0', '8', '4', 'Essa c�lula est� por enquanto suspensa..', '3');

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
INSERT INTO `config` (`id`, `nome`, `email`, `telefone`, `endereco`, `qtd_tarefas`, `limitar_tesoureiro`, `relatorio_pdf`, `cabecalho_rel_img`, `itens_por_pagina`, `logs`, `dias_excluir_logs`) VALUES ('1', 'Igreja em Roraima', 'sistemasparaigrejas@gmail.com', '(00) 00000-0000', 'Rua A, N�mero 150, Bairro XX - Belo Horizonte - MG', '20', 'Sim', 'Sim', 'Sim', '6', 'Sim', '40');

-- TABLE: cultos
CREATE TABLE `cultos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `dia` varchar(20) NOT NULL,
  `hora` time NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `igreja` int(11) NOT NULL,
  `obs` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
INSERT INTO `cultos` (`id`, `nome`, `dia`, `hora`, `descricao`, `igreja`, `obs`) VALUES ('1', 'Culto de Adora��o', 'Domingo', '19:00:00', '', '4', '');
INSERT INTO `cultos` (`id`, `nome`, `dia`, `hora`, `descricao`, `igreja`, `obs`) VALUES ('2', 'Culto de Louvor', 'Quarta Feira', '19:00:00', 'Culto para adora��o e Louvor...', '4', 'Observa��es do culto ...');
INSERT INTO `cultos` (`id`, `nome`, `dia`, `hora`, `descricao`, `igreja`, `obs`) VALUES ('4', 'Culto da Fam�lia', 'Domingo', '19:30:00', 'Culto da Familia...', '3', '');
INSERT INTO `cultos` (`id`, `nome`, `dia`, `hora`, `descricao`, `igreja`, `obs`) VALUES ('5', 'Culto de Louvor', 'Ter�a Feira', '19:30:00', 'Culto para louvor...', '3', 'Neste Culto ser� passado...');
INSERT INTO `cultos` (`id`, `nome`, `dia`, `hora`, `descricao`, `igreja`, `obs`) VALUES ('6', 'Culto de Revela��o', 'Sexta Feira', '19:30:00', '', '3', '');

-- TABLE: dizimos
CREATE TABLE `dizimos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `membro` int(11) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `data` date NOT NULL,
  `usuario` int(11) NOT NULL,
  `igreja` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
INSERT INTO `dizimos` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('10', '1', '380.00', '2021-06-29', '26', '3');
INSERT INTO `dizimos` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('11', '0', '360.00', '2021-06-27', '26', '3');
INSERT INTO `dizimos` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('12', '4', '460.00', '2021-06-29', '26', '3');
INSERT INTO `dizimos` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('14', '1', '1500.00', '2021-06-30', '27', '4');
INSERT INTO `dizimos` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('15', '1', '650.00', '2021-07-12', '6', '3');
INSERT INTO `dizimos` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('16', '0', '350.00', '2021-07-12', '6', '3');
INSERT INTO `dizimos` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('17', '2', '450.00', '2021-09-15', '6', '3');
INSERT INTO `dizimos` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('18', '4', '1800.00', '2021-09-27', '6', '3');
INSERT INTO `dizimos` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('19', '0', '1200.00', '2021-09-27', '6', '3');
INSERT INTO `dizimos` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('21', '8', '410.00', '2021-09-26', '6', '3');
INSERT INTO `dizimos` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('23', '17', '1250.00', '2021-09-28', '6', '3');
INSERT INTO `dizimos` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('24', '0', '600.00', '2021-10-05', '26', '3');
INSERT INTO `dizimos` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('25', '41', '700.00', '2021-10-05', '26', '3');
INSERT INTO `dizimos` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('26', '0', '1000.00', '2022-10-08', '6', '3');

-- TABLE: doacoes
CREATE TABLE `doacoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `membro` int(11) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `data` date NOT NULL,
  `usuario` int(11) NOT NULL,
  `igreja` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
INSERT INTO `doacoes` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('1', '0', '1500.00', '2021-06-29', '6', '3');
INSERT INTO `doacoes` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('2', '2', '1200.00', '2021-06-29', '6', '3');
INSERT INTO `doacoes` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('4', '0', '3600.00', '2021-07-12', '6', '3');
INSERT INTO `doacoes` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('5', '1', '360.00', '2021-09-15', '6', '3');
INSERT INTO `doacoes` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('7', '11', '160.00', '2021-09-26', '6', '3');
INSERT INTO `doacoes` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('8', '17', '170.00', '2021-09-27', '6', '3');

-- TABLE: documentos
CREATE TABLE `documentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(70) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `arquivo` varchar(150) NOT NULL,
  `data` date NOT NULL,
  `usuario` int(11) NOT NULL,
  `igreja` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
INSERT INTO `documentos` (`id`, `nome`, `descricao`, `arquivo`, `data`, `usuario`, `igreja`) VALUES ('2', 'Contrato de Loca��o', 'Contrato de Loca��o feito em Mar�o de 2021', '05-07-2021-11-17-09-pedido.rar', '2021-07-05', '6', '3');
INSERT INTO `documentos` (`id`, `nome`, `descricao`, `arquivo`, `data`, `usuario`, `igreja`) VALUES ('3', 'Contrato de Mesas', 'Mesas alugadas para evento data dia 20/03/2020', '05-07-2021-11-26-17-pedido.pdf', '2021-07-05', '6', '3');
INSERT INTO `documentos` (`id`, `nome`, `descricao`, `arquivo`, `data`, `usuario`, `igreja`) VALUES ('5', 'Documento XY', 'Descricao do Documento x....', '05-07-2021-11-45-54-logo-igreja2.png', '2021-07-03', '6', '3');
INSERT INTO `documentos` (`id`, `nome`, `descricao`, `arquivo`, `data`, `usuario`, `igreja`) VALUES ('6', 'Contrato X', 'Contrato ...', '05-07-2021-11-52-26-arquivo-teste.docx', '2021-07-05', '6', '3');

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
  `igreja` int(11) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
INSERT INTO `eventos` (`id`, `titulo`, `subtitulo`, `descricao1`, `descricao2`, `descricao3`, `data_cad`, `data_evento`, `usuario`, `imagem`, `video`, `ativo`, `igreja`, `obs`, `banner`, `tipo`, `url`, `pregador`, `data_banner`, `titulo_banner`, `link_banner`, `video_banner`, `subtitulo_banner`) VALUES ('1', 'Encontro de Jovens da Pentecostal', 'A simple magazine WordPress theme suitable for any sort of magazine style website such as fashion, technology, food, lifestyle, new, cars, gamin and much more. Newspaper-X is a free theme that you can use for private and commercial use without any restrictions.', 'A simple magazine WordPress theme suitable for any sort of magazine style website such as fashion, technology, food, lifestyle, new, cars, gamin and much more. Newspaper-X is a free theme that you can use for private and commercial use without any restrictions.A simple magazine WordPress theme suitable for any sort of magazine style website such as fashion, technology, food, lifestyle, new, cars, gamin and much more. Newspaper-X is a free theme that you can use for private and commercial use without any restrictions.', 'A simple magazine WordPress theme suitable for any sort of magazine style website such as fashion, technology, food, lifestyle, new, cars, gamin and much more. Newspaper-X is a free theme that you can use for private and commercial use without any restrictions.A simple magazine WordPress theme suitable for any sort of magazine style website such as fashion, technology, food, lifestyle, new, cars, gamin and much more. Newspaper-X is a free theme that you can use for private and commercial use without any restrictions.A simple magazine WordPress theme suitable for any sort of magazine style website such as fashion, technology, food, lifestyle, new, cars, gamin and much more. Newspaper-X is a free theme that you can use for private and commercial use without any restrictions.', 'A simple magazine WordPress theme suitable for any sort of magazine style website such as fashion, technology, food, lifestyle, new, cars, gamin and much more. Newspaper-X is a free theme that you can use for private and commercial use without any restrictions.A simple magazine WordPress theme suitable for any sort of magazine style website such as fashion, technology, food, lifestyle, new, cars, gamin and much more. Newspaper-X is a free theme that you can use for private and commercial use without any restrictions.A simple magazine WordPress theme suitable for any sort of magazine style website such as fashion, technology, food, lifestyle, new, cars, gamin and much more. Newspaper-X is a free theme that you can use for private and commercial use without any restrictions.A simple magazine WordPress theme suitable for any sort of magazine style website such as fashion, technology, food, lifestyle, new, cars, gamin and much more. Newspaper-X is a free theme that you can use for private and commercial use without any restrictions.', '2021-07-14', '2021-07-12', '6', '14-07-2021-09-59-58-05.jpg', '', 'Sim', '1', 'fdafaf', '13-07-2021-19-24-59-05.jpg', 'Evento', 'encontro-de-jovens-da-pentecostal', '', '', '', '', '', '');
INSERT INTO `eventos` (`id`, `titulo`, `subtitulo`, `descricao1`, `descricao2`, `descricao3`, `data_cad`, `data_evento`, `usuario`, `imagem`, `video`, `ativo`, `igreja`, `obs`, `banner`, `tipo`, `url`, `pregador`, `data_banner`, `titulo_banner`, `link_banner`, `video_banner`, `subtitulo_banner`) VALUES ('3', 'Congresso de Mulheres', 'emper leo. Fusce lectus justo, porta quis felis at, imperdiet elementum libero. Duis nec dignissim lectus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque venenatis purus eget maximus. Fusce dapibus leo sed sem fringilla, nec convallis arcu egestas. Nullam ut', 'emper leo. Fusce lectus justo, porta quis felis at, imperdiet elementum libero. Duis nec dignissim lectus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque venenatis purus eget maximus. Fusce dapibus leo sed sem fringilla, nec convallis arcu egestas. Nullam utemper leo. Fusce lectus justo, porta quis felis at, imperdiet elementum libero. Duis nec dignissim lectus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque venenatis purus eget maximus. Fusce dapibus leo sed sem fringilla, nec convallis arcu egestas. Nullam ut', 'emper leo. Fusce lectus justo, porta quis felis at, imperdiet elementum libero. Duis nec dignissim lectus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque venenatis purus eget maximus. Fusce dapibus leo sed sem fringilla, nec convallis arcu egestas. Nullam uter leo. Fusce lectus justo, porta quis felis at, imperdiet elementum libero. Duis nec dignissim lectus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque venenatis purus eget maximus. Fusce dapibus leo sed sem fringilla, nec convallis arcu egestas. Nullam ut', 'emper leo. Fusce lectus justo, porta quis felis at, imperdiet elementum libero. Duis nec dignissim lectus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque venenatis purus eget maximus. Fusce dapibus leo sed sem fringilla, nec convallis arcu egestas. Nullam utemper leo. Fusce lectus justo, porta quis felis at, imperdiet elementum libero. Duis nec dignissim lectus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque venenatis purus eget maximus. Fusce dapibus leo sed sem fringilla, nec convallis arcu egestas. Nullam utemper leo. Fusce lectus justo, porta quis felis at, imperdiet elementum libero. Duis nec dignissim lectus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque venenatis purus eget maximus. Fusce dapibus leo sed sem fringilla, nec convallis arcu egestas. Nullam utemper leo. Fusce lectus justo, porta quis felis at, imperdiet elementum libero. Duis nec dignissim lectus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque venenatis purus eget maximus. Fusce dapibus leo sed sem fringilla, nec convallis arcu egestas. Nullam ut', '2021-07-14', '2021-07-16', '6', '14-07-2021-09-59-51-04.jpg', '', 'Sim', '1', '', '13-07-2021-19-22-55-04.jpg', 'Evento', 'congresso-de-mulheres', '', '', '', '', '', '');
INSERT INTO `eventos` (`id`, `titulo`, `subtitulo`, `descricao1`, `descricao2`, `descricao3`, `data_cad`, `data_evento`, `usuario`, `imagem`, `video`, `ativo`, `igreja`, `obs`, `banner`, `tipo`, `url`, `pregador`, `data_banner`, `titulo_banner`, `link_banner`, `video_banner`, `subtitulo_banner`) VALUES ('4', 'Culto de Mocidade', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscingLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', '2021-07-14', '2021-07-14', '6', '13-07-2021-19-14-50-01.jpg', 'https://www.youtube.com/embed/Y7sfHr1alEI', 'Sim', '3', '', '13-07-2021-19-14-39-03.jpg', 'Prega��o', 'culto-de-mocidade', 'Pastor C�cero Campos', '', '', '', '', '');
INSERT INTO `eventos` (`id`, `titulo`, `subtitulo`, `descricao1`, `descricao2`, `descricao3`, `data_cad`, `data_evento`, `usuario`, `imagem`, `video`, `ativo`, `igreja`, `obs`, `banner`, `tipo`, `url`, `pregador`, `data_banner`, `titulo_banner`, `link_banner`, `video_banner`, `subtitulo_banner`) VALUES ('5', 'Prega��o de Domingo 24/06', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscingLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscingLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', '2021-07-14', '2021-07-13', '6', '13-07-2021-19-15-36-02.jpg', 'https://www.youtube.com/embed/Y7sfHr1alEI', 'Sim', '3', '', '13-07-2021-19-15-36-04.jpg', 'Prega��o', 'pregacao-de-domingo-24-06', 'Pastor Marcos', '', '', '', '', '');
INSERT INTO `eventos` (`id`, `titulo`, `subtitulo`, `descricao1`, `descricao2`, `descricao3`, `data_cad`, `data_evento`, `usuario`, `imagem`, `video`, `ativo`, `igreja`, `obs`, `banner`, `tipo`, `url`, `pregador`, `data_banner`, `titulo_banner`, `link_banner`, `video_banner`, `subtitulo_banner`) VALUES ('6', 'Culto das Mulheres', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscingLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', '2021-07-14', '2021-07-14', '6', '14-07-2021-11-31-42-06.png', 'https://www.youtube.com/embed/ZCPd_AVmazQ', 'Sim', '3', '', '14-07-2021-11-31-42-02.jpg', 'Evento', 'culto-das-mulheres', '', '', '', '', '', '');
INSERT INTO `eventos` (`id`, `titulo`, `subtitulo`, `descricao1`, `descricao2`, `descricao3`, `data_cad`, `data_evento`, `usuario`, `imagem`, `video`, `ativo`, `igreja`, `obs`, `banner`, `tipo`, `url`, `pregador`, `data_banner`, `titulo_banner`, `link_banner`, `video_banner`, `subtitulo_banner`) VALUES ('7', 'Culto de Ora��o', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscingLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscingLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', '2021-07-14', '2021-07-15', '6', '14-07-2021-11-33-54-08.jpg', 'https://www.youtube.com/embed/oafhBiqRP1I', 'Sim', '3', '', '14-07-2021-11-33-54-04.jpg', 'Prega��o', 'culto-de-oracao', 'Pastor Silva', '', '', '', '', '');
INSERT INTO `eventos` (`id`, `titulo`, `subtitulo`, `descricao1`, `descricao2`, `descricao3`, `data_cad`, `data_evento`, `usuario`, `imagem`, `video`, `ativo`, `igreja`, `obs`, `banner`, `tipo`, `url`, `pregador`, `data_banner`, `titulo_banner`, `link_banner`, `video_banner`, `subtitulo_banner`) VALUES ('8', 'Titulo do evento', 'fdfafasfdsaf fdf fadfa df fsdsfdsa fd fa<br>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscingLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', '2022-11-08', '2022-11-09', '6', '14-07-2021-11-36-38-07.jpg', 'https://www.youtube.com/embed/J4UvFrnD_wk', 'Sim', '3', '', '08-11-2022-10-24-57-01banner.jpg', 'Evento', 'titulo-do-evento', '', 'N�o', 'N�o', '', 'N�o', '');
INSERT INTO `eventos` (`id`, `titulo`, `subtitulo`, `descricao1`, `descricao2`, `descricao3`, `data_cad`, `data_evento`, `usuario`, `imagem`, `video`, `ativo`, `igreja`, `obs`, `banner`, `tipo`, `url`, `pregador`, `data_banner`, `titulo_banner`, `link_banner`, `video_banner`, `subtitulo_banner`) VALUES ('9', 'Anivers�rio da Igreja', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscingLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', '2022-11-08', '2021-07-14', '6', '14-07-2021-11-35-43-09.jpg', '', 'Sim', '3', '', '14-07-2021-11-35-43-01.jpg', 'Evento', 'aniversario-da-igreja', '', '', '', '', '', '');
INSERT INTO `eventos` (`id`, `titulo`, `subtitulo`, `descricao1`, `descricao2`, `descricao3`, `data_cad`, `data_evento`, `usuario`, `imagem`, `video`, `ativo`, `igreja`, `obs`, `banner`, `tipo`, `url`, `pregador`, `data_banner`, `titulo_banner`, `link_banner`, `video_banner`, `subtitulo_banner`) VALUES ('10', 'Congresso de Quarta', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', '2021-07-14', '2021-07-12', '6', '14-07-2021-11-38-10-01.jpg', '', 'Sim', '3', '', '14-07-2021-11-49-03-02.jpg', 'Evento', 'congresso-de-quarta', '', '', '', '', '', '');
INSERT INTO `eventos` (`id`, `titulo`, `subtitulo`, `descricao1`, `descricao2`, `descricao3`, `data_cad`, `data_evento`, `usuario`, `imagem`, `video`, `ativo`, `igreja`, `obs`, `banner`, `tipo`, `url`, `pregador`, `data_banner`, `titulo_banner`, `link_banner`, `video_banner`, `subtitulo_banner`) VALUES ('11', 'Encontro de Jovens', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', '', '2021-07-14', '2021-07-11', '6', '14-07-2021-11-39-16-02.jpg', '', 'Sim', '3', '', '14-07-2021-11-39-16-03.jpg', 'Evento', 'encontro-de-jovens', '', '', '', '', '', '');
INSERT INTO `eventos` (`id`, `titulo`, `subtitulo`, `descricao1`, `descricao2`, `descricao3`, `data_cad`, `data_evento`, `usuario`, `imagem`, `video`, `ativo`, `igreja`, `obs`, `banner`, `tipo`, `url`, `pregador`, `data_banner`, `titulo_banner`, `link_banner`, `video_banner`, `subtitulo_banner`) VALUES ('12', 'Bazar da Igreja', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', '', '2021-07-14', '2021-07-06', '6', '14-07-2021-11-39-49-04.jpg', '', 'Sim', '3', '', 'sem-foto.jpg', 'Evento', 'bazar-da-igreja', '', '', '', '', '', '');
INSERT INTO `eventos` (`id`, `titulo`, `subtitulo`, `descricao1`, `descricao2`, `descricao3`, `data_cad`, `data_evento`, `usuario`, `imagem`, `video`, `ativo`, `igreja`, `obs`, `banner`, `tipo`, `url`, `pregador`, `data_banner`, `titulo_banner`, `link_banner`, `video_banner`, `subtitulo_banner`) VALUES ('13', 'fsdfasfdasfasfasd', 'teste', 'fdafdsf', 'dfdsa', 'fafdas', '2022-11-08', '2022-11-08', '6', 'sem-foto.jpg', 'https://www.youtube.com/embed/OE8Wz0-v5nc', 'Sim', '3', '', '08-11-2022-10-54-27-01banner.jpg', 'Evento', 'fsdfasfdasfasfasd', '', 'N�o', 'N�o', 'N�o', 'N�o', 'N�o');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
INSERT INTO `fechamentos` (`id`, `igreja`, `data_fec`, `data`, `usuario`, `saidas`, `entradas`, `saldo`, `prebenda`, `saldo_final`) VALUES ('2', '3', '2022-10-08', '2022-11-08', '6', '500.00', '1000.00', '500.00', '150.00', '350.00');
INSERT INTO `fechamentos` (`id`, `igreja`, `data_fec`, `data`, `usuario`, `saidas`, `entradas`, `saldo`, `prebenda`, `saldo_final`) VALUES ('3', '3', '2022-09-08', '2022-11-08', '6', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `fechamentos` (`id`, `igreja`, `data_fec`, `data`, `usuario`, `saidas`, `entradas`, `saldo`, `prebenda`, `saldo_final`) VALUES ('4', '1', '2021-11-08', '2022-11-08', '6', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `fechamentos` (`id`, `igreja`, `data_fec`, `data`, `usuario`, `saidas`, `entradas`, `saldo`, `prebenda`, `saldo_final`) VALUES ('5', '1', '2022-10-08', '2022-11-08', '6', '0.00', '0.00', '0.00', '0.00', '0.00');
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
INSERT INTO `fornecedores` (`id`, `nome`, `telefone`, `email`, `endereco`, `produto`, `igreja`) VALUES ('3', 'Matheus Silva', '(32) 15454-5455', 'mateus@hotmail.com', '', 'Servi�o de Pedreiro', '4');
INSERT INTO `fornecedores` (`id`, `nome`, `telefone`, `email`, `endereco`, `produto`, `igreja`) VALUES ('5', 'Marina Silva', '(31) 55555-5556', 'marina@hotmail.com', 'Rua A Numero  Bairro X', 'Limpeza de Cadeiras', '3');
INSERT INTO `fornecedores` (`id`, `nome`, `telefone`, `email`, `endereco`, `produto`, `igreja`) VALUES ('6', 'Roraima Energia', '(95) 32244-6444', 'roraimaenergia@gmail.com', '', 'Energia el�trica', '1');

-- TABLE: frequencias
CREATE TABLE `frequencias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frequencia` varchar(35) NOT NULL,
  `dias` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
INSERT INTO `frequencias` (`id`, `frequencia`, `dias`) VALUES ('1', 'Uma Vez', '0');
INSERT INTO `frequencias` (`id`, `frequencia`, `dias`) VALUES ('2', 'Di�ria', '1');
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
  `pastor` int(11) NOT NULL,
  `tesoureiro` int(11) NOT NULL,
  `secretario` int(11) NOT NULL,
  `regente` int(11) NOT NULL,
  `lider1` int(11) NOT NULL,
  `lider2` int(11) NOT NULL,
  `obs` text DEFAULT NULL,
  `igreja` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
INSERT INTO `grupos` (`id`, `nome`, `dias`, `hora`, `local`, `pastor`, `tesoureiro`, `secretario`, `regente`, `lider1`, `lider2`, `obs`, `igreja`) VALUES ('1', 'Grupo de Ora��o', 'Quinta Feira', 'Das 20:00 as 20:45', 'Rua X N�mero 120 Bairro Candel�ria', '8', '8', '3', '8', '8', '4', 'fsfeferwaeraw', '3');
INSERT INTO `grupos` (`id`, `nome`, `dias`, `hora`, `local`, `pastor`, `tesoureiro`, `secretario`, `regente`, `lider1`, `lider2`, `obs`, `igreja`) VALUES ('2', 'Grupo de Louvor', 'Quinta Feira', 'Das 19:00 as 20:00', 'Rua X N�mero 120 Bairro Candel�ria', '8', '0', '0', '0', '8', '0', '', '3');

-- TABLE: grupos_membros
CREATE TABLE `grupos_membros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `membro` int(11) NOT NULL,
  `grupo` int(11) NOT NULL,
  `data` date NOT NULL,
  `igreja` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
INSERT INTO `grupos_membros` (`id`, `membro`, `grupo`, `data`, `igreja`) VALUES ('1', '8', '1', '2021-07-06', '3');
INSERT INTO `grupos_membros` (`id`, `membro`, `grupo`, `data`, `igreja`) VALUES ('3', '8', '2', '2021-07-06', '3');
INSERT INTO `grupos_membros` (`id`, `membro`, `grupo`, `data`, `igreja`) VALUES ('5', '4', '2', '2021-07-06', '3');
INSERT INTO `grupos_membros` (`id`, `membro`, `grupo`, `data`, `igreja`) VALUES ('13', '17', '1', '2021-09-28', '3');
INSERT INTO `grupos_membros` (`id`, `membro`, `grupo`, `data`, `igreja`) VALUES ('17', '41', '1', '2021-09-28', '3');
INSERT INTO `grupos_membros` (`id`, `membro`, `grupo`, `data`, `igreja`) VALUES ('19', '41', '2', '2021-09-28', '3');
INSERT INTO `grupos_membros` (`id`, `membro`, `grupo`, `data`, `igreja`) VALUES ('20', '11', '1', '2021-09-28', '3');

-- TABLE: igrejas
CREATE TABLE `igrejas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(150) DEFAULT NULL,
  `obs` text DEFAULT NULL,
  `imagem` varchar(150) DEFAULT NULL,
  `matriz` varchar(5) NOT NULL,
  `data_cad` date NOT NULL,
  `pastor` int(11) NOT NULL,
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
INSERT INTO `igrejas` (`id`, `nome`, `telefone`, `endereco`, `obs`, `imagem`, `matriz`, `data_cad`, `pastor`, `logo_rel`, `cab_rel`, `carteirinha_rel`, `video`, `email`, `url`, `youtube`, `instagram`, `facebook`, `descricao`, `prebenda`) VALUES ('1', 'Boa Vista', '(00) 00000-0000', 'Rua A, N�mero 150, Bairro XX - Boa Vista - RR', 'Igreja Matriz Fundada em ...', '12-07-2021-10-33-22-logo-icone.png', 'Sim', '2021-06-23', '22', '12-07-2021-12-21-35-LOGO-IGREJA.jpg', '12-07-2021-12-20-53-CABE�ALHO.jpg', '12-07-2021-12-20-53-carteirinha.jpg', 'https://www.youtube.com/embed/Y7sfHr1alEI', 'sistemasparaigrejas@gmail.com', 'sede', 'https://www.youtube.com/embed/MtTEtbloIjU', 'https://www.google.com', 'https://www.facebook.com/hugo.vasconcelos.940', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscingLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', '0');
INSERT INTO `igrejas` (`id`, `nome`, `telefone`, `endereco`, `obs`, `imagem`, `matriz`, `data_cad`, `pastor`, `logo_rel`, `cab_rel`, `carteirinha_rel`, `video`, `email`, `url`, `youtube`, `instagram`, `facebook`, `descricao`, `prebenda`) VALUES ('3', 'Rorain�polis', '(56) 55545-8555', 'Rua A, N�mero 150, Bairro XX - Boa Vista - RR', '', '12-07-2021-12-08-03-santa-monica.png', 'N�o', '2021-06-23', '21', '12-07-2021-12-17-34-ICONE-IGREJA.jpg', '12-07-2021-13-04-00-CABE�ALHO.jpg', '12-07-2021-13-57-31-carteirinha.jpg', 'https://www.youtube.com/embed/Y7sfHr1alEI', 'pentecserraverde@gmail.com', 'serraverde', 'https://www.youtube.com/embed/MtTEtbloIjU', 'https://www.google.com', 'https://www.facebook.com/hugo.vasconcelos.940', 'Nossa igreja foi fundada em 1976 pelo pastor ..... Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscingLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', '0');
INSERT INTO `igrejas` (`id`, `nome`, `telefone`, `endereco`, `obs`, `imagem`, `matriz`, `data_cad`, `pastor`, `logo_rel`, `cab_rel`, `carteirinha_rel`, `video`, `email`, `url`, `youtube`, `instagram`, `facebook`, `descricao`, `prebenda`) VALUES ('6', 'Caracara�', '(95) 99156-4464', 'Rua D Nove, 209 - Caracara� - RR CEP 69.360-000', '', 'sem-foto.jpg', 'N�o', '2023-05-16', '3', 'sem-foto.jpg', 'sem-foto.jpg', 'sem-foto.jpg', '', 'cararai@hotmail.com', 'caracarai', '', '', '', '', '0');
INSERT INTO `igrejas` (`id`, `nome`, `telefone`, `endereco`, `obs`, `imagem`, `matriz`, `data_cad`, `pastor`, `logo_rel`, `cab_rel`, `carteirinha_rel`, `video`, `email`, `url`, `youtube`, `instagram`, `facebook`, `descricao`, `prebenda`) VALUES ('7', 'Alto Alegre', '(95) 99156-4646', '', '', 'sem-foto.jpg', 'N�o', '2023-05-16', '3', 'sem-foto.jpg', 'sem-foto.jpg', 'sem-foto.jpg', 'https://www.youtube.com/watch?v=noHyZcNym_M', '', 'altoalegre', '', '', '', '', '0');

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
INSERT INTO `informativos` (`id`, `igreja`, `preletor`, `data`, `texto_base`, `tema`, `evento`, `horario`, `obs`, `pastor_responsavel`, `pastores`, `lider_louvor`, `obreiros`, `apoio`, `abertura`, `recado`, `oferta`, `recepcao`, `bercario`, `escolinha`, `membros`, `visitantes`, `conversoes`, `total_ofertas`, `total_dizimos`) VALUES ('2', '3', 'Pastor Silva (Convidado)', '2022-11-09', 'Jo�o 10:15', 'Este � o tema do culto ....', 'Culto de Santa Ceia', '19:00:00', 'Neste culto vamos fazer tamb�m uma confrateniza��o para o final do ano...', '8', 'Pastor Saulo / Pastor Marcos', 'Marcelo Silva', 'M�rcia / Paloma / Camila / M�ria', 'Sandro / Marcos', 'Pastor David', 'Mission�ria Sabrina', 'Di�coniza Paloma', 'Obreira Camila', 'Obreira M�ria', 'Obreira M�rcia', '0', '0', '0', '0.00', '0.00');

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
  `igreja` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8;
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('58', '2023-05-03', '12:48:40', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('59', '2023-05-03', '12:54:30', 'usuarios', 'Logout', '6', '0', 'Logout', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('60', '2023-05-03', '12:55:31', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('61', '2023-05-03', '13:09:16', 'usuarios', 'Logout', '6', '0', 'Logout', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('62', '2023-05-03', '13:21:00', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('63', '2023-05-03', '13:23:44', 'igrejas', 'Exclus�o', '6', '4', 'Pentescoltal Santa M�nica', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('64', '2023-05-03', '13:27:25', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('65', '2023-05-03', '13:29:49', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('66', '2023-05-03', '13:39:22', 'usuarios', 'Logout', '6', '0', 'Logout', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('67', '2023-05-03', '13:40:44', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('68', '2023-05-03', '13:41:07', 'igrejas', 'Edi��o', '6', '1', 'Boa Vista', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('69', '2023-05-03', '13:58:29', 'usuarios', 'Logout', '6', '0', 'Logout', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('70', '2023-05-03', '13:58:33', 'usuarios', 'Login', '18', '0', 'Login', 'Painel Igreja', '1');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('71', '2023-05-03', '14:09:20', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('72', '2023-05-03', '14:15:21', 'pastores', 'Edi��o', '6', '1', 'Super Administrador', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('73', '2023-05-03', '14:16:39', 'cargos', 'Edi��o', '6', '1', 'Disc�pulo', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('74', '2023-05-03', '14:16:57', 'cargos', 'Exclus�o', '6', '3', 'Evangelista', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('75', '2023-05-03', '14:17:00', 'cargos', 'Exclus�o', '6', '4', 'Mission�rio', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('76', '2023-05-03', '14:33:34', 'usuarios', 'Logout', '6', '0', 'Logout', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('77', '2023-05-15', '14:23:55', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('78', '2023-05-15', '14:36:57', 'igrejas', 'Edi��o', '6', '3', '31 de Mar�o', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('79', '2023-05-15', '14:38:04', 'igrejas', 'Edi��o', '6', '1', 'Jardim Floresta', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('80', '2023-05-15', '14:39:20', 'pastores', 'Edi��o', '6', '22', 'Pastor William', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('81', '2023-05-15', '14:39:32', 'pastores', 'Edi��o', '6', '21', 'Pastor Edilberto Medeiros', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('82', '2023-05-15', '14:40:49', 'pastores', 'Edi��o', '6', '22', 'Pastor William', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('83', '2023-05-15', '14:40:56', 'pastores', 'Edi��o', '6', '21', 'Pastor Edilberto Medeiros', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('84', '2023-05-15', '14:41:09', 'pastores', 'Exclus�o', '6', '2', 'Marcos Santos', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('85', '2023-05-15', '14:41:27', 'pastores', 'Exclus�o', '6', '20', 'Pastor David', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('86', '2023-05-15', '14:41:32', 'pastores', 'Exclus�o', '6', '19', 'Pastor Silva', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('87', '2023-05-15', '14:41:35', 'pastores', 'Exclus�o', '6', '18', 'Marcio silva', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('88', '2023-05-15', '14:41:39', 'pastores', 'Exclus�o', '6', '8', 'Antonio Silva', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('89', '2023-05-15', '14:42:41', 'pastores', 'Edi��o', '6', '3', 'Jeferson Antonio', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('90', '2023-05-15', '14:46:13', 'tesoureiros', 'Edi��o', '6', '8', 'Sab�ia', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('91', '2023-05-15', '14:46:53', 'tesoureiros', 'Edi��o', '6', '7', 'Marcio', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('92', '2023-05-15', '14:47:00', 'tesoureiros', 'Exclus�o', '6', '2', 'Tesoureiro Teste', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('93', '2023-05-15', '14:48:44', 'bispos', 'Edi��o', '6', '12', 'Marcos Moraes', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('94', '2023-05-16', '08:46:37', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('95', '2023-05-16', '08:48:55', 'igrejas', 'Edi��o', '6', '1', 'Floresta', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('96', '2023-05-16', '08:49:21', 'igrejas', 'Edi��o', '6', '1', 'Jardim Floresta', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('97', '2023-05-16', '08:51:50', 'cargos', 'Inser��o', '6', '5', 'Discipulador', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('98', '2023-05-16', '08:52:14', 'cargos', 'Inser��o', '6', '6', 'L�der', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('99', '2023-05-16', '08:58:04', 'igrejas', 'Edi��o', '6', '3', 'Boa Vista', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('100', '2023-05-16', '08:58:17', 'igrejas', 'Edi��o', '6', '1', 'Rorain�polis', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('101', '2023-05-16', '08:58:47', 'igrejas', 'Edi��o', '6', '3', 'Rorain�poliss', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('102', '2023-05-16', '08:58:57', 'igrejas', 'Edi��o', '6', '1', 'Boa Vista', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('103', '2023-05-16', '08:59:16', 'igrejas', 'Edi��o', '6', '3', 'Rorain�polis', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('104', '2023-05-16', '09:00:36', 'igrejas', 'Inser��o', '6', '6', 'Caracara�', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('105', '2023-05-16', '09:01:18', 'igrejas', 'Edi��o', '6', '3', 'Rorain�polis', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('106', '2023-05-16', '09:01:39', 'igrejas', 'Edi��o', '6', '3', 'Rorain�polis', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('107', '2023-05-16', '09:02:02', 'pastores', 'Edi��o', '6', '21', 'Pastor Edilberto Medeiros', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('108', '2023-05-16', '09:02:11', 'pastores', 'Edi��o', '6', '22', 'Pastor William', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('109', '2023-05-16', '09:02:24', 'igrejas', 'Edi��o', '6', '1', 'Boa Vista', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('110', '2023-05-16', '09:06:52', 'igrejas', 'Inser��o', '6', '7', 'Alto Alegre', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('111', '2023-05-16', '09:07:05', 'igrejas', 'Edi��o', '6', '6', 'Caracara�', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('112', '2023-05-16', '09:14:02', 'igrejas', 'Edi��o', '6', '6', 'Caracara�', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('113', '2023-05-16', '09:38:09', 'usuarios', 'Logout', '6', '0', 'Logout', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('114', '2023-05-16', '09:38:26', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('115', '2023-05-16', '09:39:27', 'usuarios', 'Logout', '6', '0', 'Logout', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('116', '2023-05-16', '09:39:32', 'usuarios', 'Login', '27', '0', 'Login', 'Painel Igreja', '3');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('117', '2023-05-16', '09:40:17', 'usuarios', 'Logout', '27', '0', 'Logout', 'Painel Igreja', '3');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('118', '2023-05-16', '09:40:18', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('119', '2023-05-16', '09:41:20', 'usuarios', 'Logout', '6', '0', 'Logout', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('120', '2023-05-16', '09:41:24', 'usuarios', 'Login', '33', '0', 'Login', 'Painel Igreja', '3');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('121', '2023-05-16', '09:43:53', 'usuarios', 'Logout', '33', '0', 'Logout', 'Painel Igreja', '3');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('122', '2023-05-16', '09:43:55', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('123', '2023-05-16', '09:44:39', 'patrimonios', 'Edi��o', '6', '19', 'Ativo = N�o', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('124', '2023-05-16', '09:45:02', 'patrimonios', 'Exclus�o', '6', '4', 'Cadeira Branca', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('125', '2023-05-16', '09:49:50', 'bispos', 'Exclus�o', '6', '12', 'Marcos Moraes', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('126', '2023-05-16', '09:51:59', 'usuarios', 'Logout', '6', '0', 'Logout', 'Painel Administrativo', '0');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('127', '2023-05-16', '09:52:04', 'usuarios', 'Login', '34', '0', 'Login', 'Painel Igreja', '3');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('128', '2023-05-16', '09:54:15', 'usuarios', 'Logout', '34', '0', 'Logout', 'Painel Igreja', '3');
INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`, `painel`, `igreja`) VALUES ('129', '2023-05-16', '09:54:17', 'usuarios', 'Login', '6', '0', 'Login', 'Painel Administrativo', '0');

-- TABLE: membros
CREATE TABLE `membros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `foto` varchar(150) NOT NULL,
  `data_cad` date NOT NULL,
  `data_nasc` date NOT NULL,
  `igreja` int(11) NOT NULL,
  `obs` text DEFAULT NULL,
  `data_batismo` date DEFAULT NULL,
  `cargo` varchar(50) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `estado_civil` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
INSERT INTO `membros` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`, `foto`, `data_cad`, `data_nasc`, `igreja`, `obs`, `data_batismo`, `cargo`, `ativo`, `estado_civil`) VALUES ('4', 'Pablo Campos', 'pablo@hotmail.com', '554.415.454-55', '(54) 51545-4545', 'Rua Almeida Campos 150 Bairro Serra Verde - Belo Horizonte - MG', '15-09-2021-20-55-02-curso-de-site-para-delivery.jpeg', '2021-06-28', '1975-06-09', '3', '', '2021-06-08', '2', 'Sim', 'Solteiro');
INSERT INTO `membros` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`, `foto`, `data_cad`, `data_nasc`, `igreja`, `obs`, `data_batismo`, `cargo`, `ativo`, `estado_civil`) VALUES ('5', 'Paola Silva', 'paola@hotmail.com', '687.845.154-54', '(05) 51548-4545', 'Rua Almeida Campos 150 Bairro Serra Verde - Belo Horizonte - MG', 'sem-foto.jpg', '2021-06-28', '2021-06-09', '1', '', '2021-06-02', '1', 'Sim', '');
INSERT INTO `membros` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`, `foto`, `data_cad`, `data_nasc`, `igreja`, `obs`, `data_batismo`, `cargo`, `ativo`, `estado_civil`) VALUES ('6', 'Marcela Silva', 'marcela@hotmail.com', '584.154.558-74', '(65) 21451-5454', 'Rua A, N�mero 150, Bairro XX - Belo Horizonte - MG', 'sem-foto.jpg', '2021-06-28', '1990-06-01', '1', '', '0000-00-00', '1', 'Sim', '');
INSERT INTO `membros` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`, `foto`, `data_cad`, `data_nasc`, `igreja`, `obs`, `data_batismo`, `cargo`, `ativo`, `estado_civil`) VALUES ('7', 'Pablo Silva', 'pablos@hotmail.com', '484.154.545-55', '(21) 15154-5454', 'Rua Almeida Campos 150 Bairro Serra Verde - Belo Horizonte - MG', '28-06-2021-14-56-14-01.jpg', '2021-06-28', '1995-06-01', '1', '', '0000-00-00', '3', 'Sim', '');
INSERT INTO `membros` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`, `foto`, `data_cad`, `data_nasc`, `igreja`, `obs`, `data_batismo`, `cargo`, `ativo`, `estado_civil`) VALUES ('8', 'Marcelo Santos 2', 'marcela@hugocursos.com.br', '455.455.555', '(87) 45445-4544', 'Rua A, N�mero 150, Bairro XX - Belo Horizonte - MG', 'a0f44479-c17b-4efc-9e2e-02b380faa4c0.jpg', '2021-06-28', '1980-07-02', '3', '', '2021-09-19', '1', 'Sim', 'Casado');
INSERT INTO `membros` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`, `foto`, `data_cad`, `data_nasc`, `igreja`, `obs`, `data_batismo`, `cargo`, `ativo`, `estado_civil`) VALUES ('11', 'Hugo Vasconcelos', 'hugo@hotmail.com', '487.451.515-55', '(31) 97527-5084', 'Rua A, N�mero 150, Bairro XX - Belo Horizonte - MG', '15-09-2021-20-54-27-hugo-profile.jpeg', '2021-07-12', '1993-07-12', '3', '', '1993-07-12', '5', 'Sim', 'Casado');
INSERT INTO `membros` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`, `foto`, `data_cad`, `data_nasc`, `igreja`, `obs`, `data_batismo`, `cargo`, `ativo`, `estado_civil`) VALUES ('17', 'Ararinha', 'arara@hotmail.com', '054.102.445-45', '(95) 99115-4612', 'Caran�', '97e1a471-94a6-44db-ae94-790239dd1272.jpg', '2021-07-27', '1995-09-22', '1', '', '0000-00-00', '1', 'Sim', 'Casado');
INSERT INTO `membros` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`, `foto`, `data_cad`, `data_nasc`, `igreja`, `obs`, `data_batismo`, `cargo`, `ativo`, `estado_civil`) VALUES ('41', 'Hayner', 'haner@hotmail.com', '588.887.854', '(95) 99135-7959', '', 'sem-foto.jpg', '2021-09-20', '2021-09-20', '1', '', '2021-09-14', '1', 'Sim', 'Casado');
INSERT INTO `membros` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`, `foto`, `data_cad`, `data_nasc`, `igreja`, `obs`, `data_batismo`, `cargo`, `ativo`, `estado_civil`) VALUES ('45', 'Fredson', 'fred@hotmail.com', '845.458.545-45', '(95) 98415-4944', 'Rorain�polis', 'sem-foto.jpg', '2021-10-04', '2021-10-04', '1', '', '0000-00-00', '1', 'Sim', 'Casado');
INSERT INTO `membros` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`, `foto`, `data_cad`, `data_nasc`, `igreja`, `obs`, `data_batismo`, `cargo`, `ativo`, `estado_civil`) VALUES ('48', 'Ezequias', 'assaaass@hotmail.com', '644.554.545-55', '(95) 98125-8967', '', 'sem-foto.jpg', '2021-10-04', '2021-10-04', '1', '', '0000-00-00', '1', 'Sim', 'Casado');
INSERT INTO `membros` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`, `foto`, `data_cad`, `data_nasc`, `igreja`, `obs`, `data_batismo`, `cargo`, `ativo`, `estado_civil`) VALUES ('49', 'Bruno', 'hhh@hotmail.com', '988.787.587-85', '(95) 98112-3080', 'Tegzd', 'sem-foto.jpg', '2021-10-04', '2021-10-04', '1', '', '0000-00-00', '1', 'Sim', 'Casado');
INSERT INTO `membros` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`, `foto`, `data_cad`, `data_nasc`, `igreja`, `obs`, `data_batismo`, `cargo`, `ativo`, `estado_civil`) VALUES ('51', 'El�o Martini', 'dsssfafsdfa@hotmail.com', '454.545', '(95) 99150-1000', '', 'sem-foto.jpg', '2021-10-05', '2021-10-05', '1', '', '0000-00-00', '1', 'Sim', 'Solteiro');
INSERT INTO `membros` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`, `foto`, `data_cad`, `data_nasc`, `igreja`, `obs`, `data_batismo`, `cargo`, `ativo`, `estado_civil`) VALUES ('52', 'Andr� Cerry', 'Hufsd@hotmail.com', '555.885', '(95) 99971-4345', 'Paraviana', '006466a7-ee12-4ce0-b80e-03404b85bca5.jpg', '2021-10-05', '2021-10-05', '1', '', '0000-00-00', '1', 'Sim', 'Casado');
INSERT INTO `membros` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`, `foto`, `data_cad`, `data_nasc`, `igreja`, `obs`, `data_batismo`, `cargo`, `ativo`, `estado_civil`) VALUES ('53', 'Ac�cio', 'Fsrsdsss@hotmail.com', '585.555.445-45', '(95) 99971-5572', 'Mecejana', '07-11-2022-21-06-20-02.jpg', '2021-10-05', '2021-10-05', '1', '', '0000-00-00', '1', 'Sim', 'Casado');
INSERT INTO `membros` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`, `foto`, `data_cad`, `data_nasc`, `igreja`, `obs`, `data_batismo`, `cargo`, `ativo`, `estado_civil`) VALUES ('54', 'Victor', 'vitor@gmail.com', '123.333.333-33', '(95) 98123-1313', 'Rua D Nove, 209 - Caracara� - RR CEP 69.360-000', 'sem-foto.jpg', '2023-05-16', '1982-03-03', '6', '', '2020-02-03', '5', 'Sim', 'Casado');

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
INSERT INTO `ministerios` (`id`, `nome`, `dias`, `hora`, `pastor`, `secretario`, `lider1`, `lider2`, `obs`, `igreja`) VALUES ('1', 'Minist�rio de Louvor', 'Quarta Feira', 'Das 18:00 as 20:00', '0', '3', '41', '0', 'dfdsafddfsdafdasfsa', '3');
INSERT INTO `ministerios` (`id`, `nome`, `dias`, `hora`, `pastor`, `secretario`, `lider1`, `lider2`, `obs`, `igreja`) VALUES ('2', 'Minist�rio de Casais', 'S�bados', 'Das 15:00 as 16:00', '8', '3', '11', '0', '', '3');

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

-- TABLE: missoes_enviadas
CREATE TABLE `missoes_enviadas` (
  `id` int(11) NOT NULL,
  `membro` varchar(50) DEFAULT NULL,
  `valor` decimal(8,2) NOT NULL,
  `data` date NOT NULL,
  `usuario` int(11) NOT NULL,
  `igreja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `missoes_enviadas` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('1', 'Miss�o na �ndia', '1200.00', '2021-11-16', '6', '3');

-- TABLE: missoes_recebidas
CREATE TABLE `missoes_recebidas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `membro` varchar(50) DEFAULT NULL,
  `valor` decimal(8,2) NOT NULL,
  `data` date NOT NULL,
  `usuario` int(11) NOT NULL,
  `igreja` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
INSERT INTO `missoes_recebidas` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('1', 'Doado por Empresa C', '1650.00', '2021-11-16', '6', '3');
INSERT INTO `missoes_recebidas` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('2', 'Membro Carlos Silva', '2200.00', '2021-11-16', '6', '3');
INSERT INTO `missoes_recebidas` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('3', 'N�o Membro', '1400.00', '2021-11-15', '6', '3');

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
  `igreja` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('5', 'Sa�da', 'Conta � Pagar', 'Produtos de Limpeza', '680.00', '2021-06-29', '26', '3', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('6', 'Sa�da', 'Conta � Pagar', 'Conta diaria', '50.00', '2021-06-29', '26', '15', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('7', 'Sa�da', 'Conta � Pagar', 'Conta diaria', '50.00', '2021-06-29', '26', '16', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('8', 'Sa�da', 'Conta � Pagar', 'Conta teste 2', '350.00', '2021-06-29', '26', '18', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('15', 'Entrada', 'D�zimo', 'F�bio Silva', '380.00', '2021-06-29', '26', '10', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('16', 'Entrada', 'D�zimo', 'Membro N�o Informado', '360.00', '2021-06-27', '26', '11', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('17', 'Entrada', 'D�zimo', 'Pablo Campos', '460.00', '2021-06-29', '26', '12', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('22', 'Entrada', 'Oferta', 'Paola Silva', '600.00', '2021-06-29', '26', '4', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('23', 'Entrada', 'Oferta', 'Membro N�o Informado', '50.00', '2021-06-29', '26', '5', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('24', 'Entrada', 'Oferta', 'F�bio Silva', '199.00', '2021-06-29', '26', '6', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('27', 'Entrada', 'Oferta', 'Membro N�o Informado', '240.00', '2021-06-29', '33', '9', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('29', 'Entrada', 'Doa��o', 'Membro N�o Informado', '1500.00', '2021-06-29', '6', '1', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('30', 'Entrada', 'Doa��o', 'Marta Silva', '1200.00', '2021-06-29', '6', '2', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('33', 'Entrada', 'Venda', 'Vendas da Cantina', '950.00', '2021-06-28', '6', '2', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('34', 'Entrada', 'Venda', 'Conta de Luz', '550.00', '2021-06-29', '6', '0', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('35', 'Entrada', 'Venda', 'Conta de Luz', '550.00', '2021-06-29', '6', '0', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('36', 'Entrada', 'Venda', 'Cantina', '55.00', '2021-06-29', '6', '0', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('37', 'Sa�da', 'Conta � Pagar', 'Produtos de Limpeza', '500.00', '2021-06-30', '6', '22', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('38', 'Sa�da', 'Conta � Pagar', 'Aluguel', '1600.00', '2021-06-30', '6', '11', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('40', 'Entrada', 'Venda', 'Vendas da Cantina', '1600.00', '2021-06-30', '6', '4', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('41', 'Entrada', 'D�zimo', 'F�bio Silva', '1500.00', '2021-06-30', '27', '14', '4');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('42', 'Sa�da', 'Conta � Pagar', 'Conta de �gua', '980.00', '2021-07-12', '6', '4', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('43', 'Sa�da', 'Conta � Pagar', 'Compra de Microfone', '360.00', '2021-07-12', '6', '19', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('44', 'Sa�da', 'Conta � Pagar', 'Telefone', '690.00', '2021-07-12', '6', '20', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('45', 'Sa�da', 'Conta � Pagar', 'Conta de Agua', '260.00', '2021-07-12', '6', '24', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('46', 'Entrada', 'Venda', 'Cantina', '30.55', '2021-07-12', '6', '0', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('47', 'Entrada', 'D�zimo', 'F�bio Silva', '650.00', '2021-07-12', '6', '15', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('48', 'Entrada', 'D�zimo', 'Pablo Campos', '175.00', '2021-09-26', '6', '16', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('49', 'Entrada', 'Oferta', 'Membro N�o Informado', '1200.00', '2021-07-12', '6', '11', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('50', 'Entrada', 'Doa��o', 'Membro N�o Informado', '3600.00', '2021-07-12', '6', '4', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('51', 'Entrada', 'Venda', 'Vendas da Cantina', '160.00', '2021-07-12', '6', '5', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('52', 'Sa�da', 'Conta � Pagar', 'Compra de Fios', '540.00', '2021-09-15', '6', '21', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('53', 'Entrada', 'Doa��o', 'F�bio Silva', '360.00', '2021-09-15', '6', '5', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('54', 'Entrada', 'Oferta', 'Marta Silva', '1200.00', '2021-09-15', '6', '12', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('55', 'Entrada', 'D�zimo', 'Marta Silva', '450.00', '2021-09-15', '6', '17', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('56', 'Sa�da', 'Conta � Pagar', 'Conta de �gua', '260.00', '2021-09-27', '6', '27', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('57', 'Sa�da', 'Conta � Pagar', 'Alugu�l', '1300.00', '2021-09-27', '6', '30', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('58', 'Entrada', 'Venda', 'Cantina', '35.00', '2021-09-27', '6', '0', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('63', 'Entrada', 'Venda', 'Vendas da Cantina', '90.50', '2021-09-27', '6', '10', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('66', 'Entrada', 'Venda', 'Vendas da Cantina', '49.99', '2021-09-27', '6', '15', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('67', 'Entrada', 'Venda', 'Vendas da Cantina', '135.00', '2021-09-27', '6', '16', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('68', 'Entrada', 'Venda', 'Vendas da Cantina', '50.00', '2021-09-27', '6', '17', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('72', 'Entrada', 'Venda', 'Vendas da Cantina', '60.00', '2021-09-28', '6', '21', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('73', 'Entrada', 'Venda', 'Vendas da Cantina', '58.90', '2021-09-26', '6', '22', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('74', 'Entrada', 'D�zimo', 'Pablo Campos', '1800.00', '2021-09-27', '6', '18', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('75', 'Entrada', 'D�zimo', 'Membro N�o Informado', '1200.00', '2021-09-27', '6', '19', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('77', 'Entrada', 'D�zimo', 'Marcelo Santos 2', '410.00', '2021-09-26', '6', '21', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('79', 'Entrada', 'D�zimo', 'Membro N�o Informado', '120.00', '2021-09-27', '6', '13', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('80', 'Entrada', 'D�zimo', 'Pablo Campos', '130.00', '2021-09-27', '6', '14', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('82', 'Entrada', 'Oferta', 'Carlos da Silva', '175.00', '2021-09-26', '6', '16', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('84', 'Entrada', 'Doa��o', 'Hugo Vasconcelos', '160.00', '2021-09-26', '6', '7', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('85', 'Entrada', 'Doa��o', 'Paola Santos 3', '170.00', '2021-09-27', '6', '8', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('88', 'Sa�da', 'Conta � Pagar', 'Conta diaria', '50.00', '2021-09-28', '6', '17', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('89', 'Entrada', 'Venda', 'Cantina', '85.00', '2021-09-28', '6', '0', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('90', 'Entrada', 'D�zimo', 'Paola Santos 3', '1250.00', '2021-09-28', '6', '23', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('91', 'Sa�da', 'Conta � Pagar', 'Conta de luz', '560.00', '2021-09-28', '6', '39', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('92', 'Sa�da', 'Conta � Pagar', 'Conta de luz', '680.00', '2021-10-04', '6', '40', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('93', 'Sa�da', 'Conta � Pagar', 'Conta de agua', '690.00', '2021-10-05', '26', '42', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('94', 'Entrada', 'Venda', 'Cantina', '60.00', '2021-10-05', '26', '0', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('95', 'Entrada', 'D�zimo', 'Membro N�o Informado', '600.00', '2021-10-05', '26', '24', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('96', 'Entrada', 'D�zimo', 'Carlos da Silva', '700.00', '2021-10-05', '26', '25', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('97', 'Entrada', 'D�zimo', 'Membro N�o Informado', '1000.00', '2022-10-08', '6', '26', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('98', 'Sa�da', 'Conta � Pagar', 'Teste', '500.00', '2022-10-08', '6', '43', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('100', 'Entrada', 'Saldo', 'Saldo M�s', '350.00', '2022-11-01', '6', '2', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('101', 'Entrada', 'Saldo', 'Saldo M�s', '0.00', '2022-10-01', '6', '3', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('102', 'Entrada', 'Saldo', 'Saldo M�s', '0.00', '2021-12-01', '6', '4', '1');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('103', 'Entrada', 'Saldo', 'Saldo M�s', '0.00', '2022-11-01', '6', '5', '1');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('104', 'Entrada', 'Saldo', 'Saldo M�s', '0.00', '2022-11-01', '6', '6', '4');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('105', 'Sa�da', 'Conta � Pagar', 'Comprar Cadeiras', '200.00', '2022-11-08', '6', '44', '3');
INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `descricao`, `valor`, `data`, `usuario`, `id_mov`, `igreja`) VALUES ('106', 'Entrada', 'Saldo', 'Saldo M�s', '0.00', '2022-08-01', '6', '7', '3');

-- TABLE: ofertas
CREATE TABLE `ofertas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `membro` varchar(50) DEFAULT NULL,
  `valor` decimal(8,2) NOT NULL,
  `data` date NOT NULL,
  `usuario` int(11) NOT NULL,
  `igreja` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
INSERT INTO `ofertas` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('4', '5', '600.00', '2021-06-29', '26', '3');
INSERT INTO `ofertas` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('5', '0', '50.00', '2021-06-29', '26', '3');
INSERT INTO `ofertas` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('6', '1', '199.00', '2021-06-29', '26', '3');
INSERT INTO `ofertas` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('9', '0', '240.00', '2021-06-29', '33', '3');
INSERT INTO `ofertas` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('11', '0', '1200.00', '2021-07-12', '6', '3');
INSERT INTO `ofertas` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('12', '2', '1200.00', '2021-09-15', '6', '3');
INSERT INTO `ofertas` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('14', '4', '130.00', '2021-09-27', '6', '3');
INSERT INTO `ofertas` (`id`, `membro`, `valor`, `data`, `usuario`, `igreja`) VALUES ('16', '41', '175.00', '2021-09-26', '6', '3');

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
  `igreja` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
INSERT INTO `pagar` (`id`, `descricao`, `fornecedor`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `frequencia`, `pago`, `arquivo`, `igreja`) VALUES ('1', 'Conta de Luz', '0', '550.00', '2021-06-29', '2021-06-29', '6', '6', '2021-06-29', '0', 'Sim', 'sem-foto.jpg', '3');
INSERT INTO `pagar` (`id`, `descricao`, `fornecedor`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `frequencia`, `pago`, `arquivo`, `igreja`) VALUES ('2', 'Compra de Cadeira', '1', '890.00', '2021-06-29', '2021-06-30', '6', '26', '2021-06-29', '0', 'Sim', '29-06-2021-13-20-41-pedido.pdf', '3');
INSERT INTO `pagar` (`id`, `descricao`, `fornecedor`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `frequencia`, `pago`, `arquivo`, `igreja`) VALUES ('3', 'Produtos de Limpeza', '2', '680.00', '2021-06-29', '2021-07-01', '6', '26', '2021-06-29', '0', 'Sim', '29-06-2021-13-21-28-pedido.rar', '3');
INSERT INTO `pagar` (`id`, `descricao`, `fornecedor`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `frequencia`, `pago`, `arquivo`, `igreja`) VALUES ('4', 'Conta de �gua', '0', '980.00', '2021-06-29', '2021-06-28', '6', '6', '2021-07-12', '0', 'Sim', '29-06-2021-13-32-34-conta3.jpg', '3');
INSERT INTO `pagar` (`id`, `descricao`, `fornecedor`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `frequencia`, `pago`, `arquivo`, `igreja`) VALUES ('5', 'Conta Vencida', '1', '200.00', '2021-06-29', '2021-06-27', '6', '6', '2021-06-29', '7', 'Sim', '29-06-2021-13-39-40-conta3.jpg', '3');
INSERT INTO `pagar` (`id`, `descricao`, `fornecedor`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `frequencia`, `pago`, `arquivo`, `igreja`) VALUES ('10', 'Aluguel', '3', '1600.00', '2021-06-29', '2021-06-24', '6', '26', '2021-06-29', '30', 'Sim', 'sem-foto.jpg', '3');
INSERT INTO `pagar` (`id`, `descricao`, `fornecedor`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `frequencia`, `pago`, `arquivo`, `igreja`) VALUES ('11', 'Aluguel', '3', '1600.00', '2021-06-29', '2021-07-24', '26', '6', '2021-06-30', '30', 'Sim', 'sem-foto.jpg', '3');
INSERT INTO `pagar` (`id`, `descricao`, `fornecedor`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `frequencia`, `pago`, `arquivo`, `igreja`) VALUES ('12', 'Limpeza da Igreja', '2', '250.00', '2021-06-29', '2021-06-29', '26', '26', '2021-06-29', '7', 'Sim', 'sem-foto.jpg', '3');
INSERT INTO `pagar` (`id`, `descricao`, `fornecedor`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `frequencia`, `pago`, `arquivo`, `igreja`) VALUES ('13', 'Limpeza da Igreja', '2', '250.00', '2021-06-29', '2021-07-06', '26', '0', '', '7', 'N�o', 'sem-foto.jpg', '3');
INSERT INTO `pagar` (`id`, `descricao`, `fornecedor`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `frequencia`, `pago`, `arquivo`, `igreja`) VALUES ('14', 'Conta diaria', '0', '50.00', '2021-06-29', '2021-06-29', '26', '26', '2021-06-29', '1', 'Sim', 'sem-foto.jpg', '3');
INSERT INTO `pagar` (`id`, `descricao`, `fornecedor`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `frequencia`, `pago`, `arquivo`, `igreja`) VALUES ('15', 'Conta diaria', '0', '50.00', '2021-06-29', '2021-06-30', '26', '26', '2021-06-29', '1', 'Sim', 'sem-foto.jpg', '3');
INSERT INTO `pagar` (`id`, `descricao`, `fornecedor`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `frequencia`, `pago`, `arquivo`, `igreja`) VALUES ('16', 'Conta diaria', '0', '50.00', '2021-06-29', '2021-07-01', '26', '26', '2021-06-29', '1', 'Sim', 'sem-foto.jpg', '3');
INSERT INTO `pagar` (`id`, `descricao`, `fornecedor`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `frequencia`, `pago`, `arquivo`, `igreja`) VALUES ('17', 'Conta diaria', '0', '50.00', '2021-06-29', '2021-07-02', '26', '6', '2021-09-28', '1', 'Sim', 'sem-foto.jpg', '3');
INSERT INTO `pagar` (`id`, `descricao`, `fornecedor`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `frequencia`, `pago`, `arquivo`, `igreja`) VALUES ('18', 'Conta teste 2', '1', '350.00', '2021-06-29', '2021-06-29', '26', '26', '2021-06-29', '0', 'Sim', 'sem-foto.jpg', '3');
INSERT INTO `pagar` (`id`, `descricao`, `fornecedor`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `frequencia`, `pago`, `arquivo`, `igreja`) VALUES ('19', 'Compra de Microfone', '1', '360.00', '2021-06-29', '2021-06-29', '6', '6', '2021-07-12', '0', 'Sim', '05-07-2021-11-46-22-logo-igreja3.png', '3');
INSERT INTO `pagar` (`id`, `descricao`, `fornecedor`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `frequencia`, `pago`, `arquivo`, `igreja`) VALUES ('20', 'Telefone', '0', '690.00', '2021-06-30', '2021-06-30', '33', '6', '2021-07-12', '0', 'Sim', '30-06-2021-09-59-57-pedido.pdf', '3');
INSERT INTO `pagar` (`id`, `descricao`, `fornecedor`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `frequencia`, `pago`, `arquivo`, `igreja`) VALUES ('21', 'Compra de Fios', '3', '540.00', '2021-06-30', '2021-06-30', '33', '6', '2021-09-15', '0', 'Sim', 'sem-foto.jpg', '3');
INSERT INTO `pagar` (`id`, `descricao`, `fornecedor`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `frequencia`, `pago`, `arquivo`, `igreja`) VALUES ('22', 'Produtos de Limpeza', '1', '500.00', '2021-06-30', '2021-07-02', '6', '6', '2021-06-30', '0', 'Sim', '30-06-2021-10-34-56-pedido.rar', '3');
INSERT INTO `pagar` (`id`, `descricao`, `fornecedor`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `frequencia`, `pago`, `arquivo`, `igreja`) VALUES ('23', 'Aluguel', '3', '1600.00', '2021-06-30', '2021-08-24', '6', '0', '', '30', 'N�o', 'sem-foto.jpg', '3');
INSERT INTO `pagar` (`id`, `descricao`, `fornecedor`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `frequencia`, `pago`, `arquivo`, `igreja`) VALUES ('24', 'Conta de Agua', '0', '260.00', '2021-07-12', '2021-07-12', '6', '6', '2021-07-12', '0', 'Sim', '12-07-2021-22-09-33-conta3.jpg', '3');
INSERT INTO `pagar` (`id`, `descricao`, `fornecedor`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `frequencia`, `pago`, `arquivo`, `igreja`) VALUES ('25', 'Conta de Luz', '0', '650.00', '2021-09-27', '2021-09-27', '6', '0', '', '0', 'N�o', '27-09-2021-10-32-52-comprovante(1).pdf', '3');
INSERT INTO `pagar` (`id`, `descricao`, `fornecedor`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `frequencia`, `pago`, `arquivo`, `igreja`) VALUES ('26', 'Compra de Janelas', '1', '1200.00', '2021-09-27', '2021-09-27', '6', '0', '', '0', 'N�o', '27-09-2021-10-33-45-Hugo.zip', '3');
INSERT INTO `pagar` (`id`, `descricao`, `fornecedor`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `frequencia`, `pago`, `arquivo`, `igreja`) VALUES ('27', 'Conta de �gua', '0', '260.00', '2021-09-27', '2021-09-27', '6', '6', '2021-09-27', '0', 'Sim', '27-09-2021-15-42-00-conta3.jpg', '3');
INSERT INTO `pagar` (`id`, `descricao`, `fornecedor`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `frequencia`, `pago`, `arquivo`, `igreja`) VALUES ('30', 'Alugu�l', '0', '1300.00', '2021-09-27', '2021-09-27', '6', '6', '2021-09-27', '30', 'Sim', 'sem-foto.jpg', '3');
INSERT INTO `pagar` (`id`, `descricao`, `fornecedor`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `frequencia`, `pago`, `arquivo`, `igreja`) VALUES ('31', 'Alugu�l', '0', '1300.00', '2021-09-27', '2021-10-27', '6', '0', '', '30', 'N�o', 'sem-foto.jpg', '3');
INSERT INTO `pagar` (`id`, `descricao`, `fornecedor`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `frequencia`, `pago`, `arquivo`, `igreja`) VALUES ('35', 'Conta teste 2', '1', '35.00', '2021-09-27', '2021-09-27', '6', '0', '', '0', 'N�o', '3ffc6066-6ede-4c49-bb86-7c2694ad5fb3.jpg', '3');
INSERT INTO `pagar` (`id`, `descricao`, `fornecedor`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `frequencia`, `pago`, `arquivo`, `igreja`) VALUES ('38', 'Conta diaria', '0', '50.00', '2021-09-28', '2021-07-03', '6', '0', '', '1', 'N�o', 'sem-foto.jpg', '3');
INSERT INTO `pagar` (`id`, `descricao`, `fornecedor`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `frequencia`, `pago`, `arquivo`, `igreja`) VALUES ('39', 'Conta de luz', '0', '560.00', '2021-09-28', '2021-09-28', '6', '6', '2021-09-28', '0', 'Sim', '95452c83-1179-4f29-8e59-ffe8bb52f88d.jpg', '3');
INSERT INTO `pagar` (`id`, `descricao`, `fornecedor`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `frequencia`, `pago`, `arquivo`, `igreja`) VALUES ('40', 'Conta de luz', '0', '680.00', '2021-10-04', '2021-10-04', '6', '6', '2021-10-04', '0', 'Sim', '1c3a9828-dba9-413b-a6de-7a187478f3cb.jpg', '3');
INSERT INTO `pagar` (`id`, `descricao`, `fornecedor`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `frequencia`, `pago`, `arquivo`, `igreja`) VALUES ('41', 'Teste', '0', '70.00', '2021-10-04', '2021-10-04', '33', '0', '', '0', 'N�o', 'sem-foto.jpg', '3');
INSERT INTO `pagar` (`id`, `descricao`, `fornecedor`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `frequencia`, `pago`, `arquivo`, `igreja`) VALUES ('42', 'Conta de agua', '0', '690.00', '2021-10-05', '2021-10-05', '26', '26', '2021-10-05', '0', 'Sim', 'sem-foto.jpg', '3');
INSERT INTO `pagar` (`id`, `descricao`, `fornecedor`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `frequencia`, `pago`, `arquivo`, `igreja`) VALUES ('43', 'Teste', '0', '500.00', '2022-11-08', '2022-10-08', '6', '6', '2022-11-08', '0', 'Sim', 'sem-foto.jpg', '3');
INSERT INTO `pagar` (`id`, `descricao`, `fornecedor`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `frequencia`, `pago`, `arquivo`, `igreja`) VALUES ('44', 'Comprar Cadeiras', '1', '200.00', '2022-11-08', '2022-11-08', '6', '6', '2022-11-08', '0', 'Sim', 'sem-foto.jpg', '3');

-- TABLE: pastores
CREATE TABLE `pastores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `foto` varchar(150) DEFAULT NULL,
  `data_cad` date DEFAULT NULL,
  `data_nasc` date DEFAULT NULL,
  `igreja` int(11) NOT NULL,
  `obs` text DEFAULT NULL,
  `prebenda` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
INSERT INTO `pastores` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`, `foto`, `data_cad`, `data_nasc`, `igreja`, `obs`, `prebenda`) VALUES ('1', 'Super Administrador', 'sistemasparaigrejas@gmail.com', '000.000.000-00', '(00)00000-0000', '', 'sem-foto.jpg', '2021-06-28', '2021-06-28', '1', '', '0');
INSERT INTO `pastores` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`, `foto`, `data_cad`, `data_nasc`, `igreja`, `obs`, `prebenda`) VALUES ('3', 'Jeferson Antonio', 'pastor@hotmail.com', '587.855.555-55', '(52) 12021-1555', 'Rua Almeida Campos 150 Bairro Canarinho - Boa Vista - RR', '28-06-2021-11-31-49-02.jpg', '2021-06-28', '1980-06-01', '3', '', '4');
INSERT INTO `pastores` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`, `foto`, `data_cad`, `data_nasc`, `igreja`, `obs`, `prebenda`) VALUES ('21', 'Pastor Edilberto Medeiros', 'edilberto@hotmail.com', '313.113.131-11', '(95) 99112-0183', '', 'sem-foto.jpg', '2023-05-03', '2002-01-12', '1', '', '40');
INSERT INTO `pastores` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`, `foto`, `data_cad`, `data_nasc`, `igreja`, `obs`, `prebenda`) VALUES ('22', 'Pastor William', 'will@gmail.com', '231.131.311-13', '(95) 99122-9900', 'Jardim Floresta', 'sem-foto.jpg', '2023-05-03', '2022-01-01', '1', '', '40');

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
  `igreja_cad` int(11) NOT NULL,
  `igreja_item` int(11) NOT NULL,
  `usuario_emprestou` int(11) NOT NULL,
  `data_emprestimo` date DEFAULT NULL,
  `ativo` varchar(5) NOT NULL,
  `obs` text DEFAULT NULL,
  `entrada` varchar(15) NOT NULL,
  `doador` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
INSERT INTO `patrimonios` (`id`, `codigo`, `nome`, `descricao`, `valor`, `foto`, `usuario_cad`, `data_cad`, `igreja_cad`, `igreja_item`, `usuario_emprestou`, `data_emprestimo`, `ativo`, `obs`, `entrada`, `doador`) VALUES ('2', '01234', 'Microfone X573', 'Microfone Preto com cabo ...', '380.00', '05-07-2021-15-03-59-microfone.jpg', '6', '2021-07-05', '4', '4', '0', '', 'N�o', 'Este microfone deu defeito e parou de funcionar na data x.', 'Compra', '');
INSERT INTO `patrimonios` (`id`, `codigo`, `nome`, `descricao`, `valor`, `foto`, `usuario_cad`, `data_cad`, `igreja_cad`, `igreja_item`, `usuario_emprestou`, `data_emprestimo`, `ativo`, `obs`, `entrada`, `doador`) VALUES ('5', '0145', 'Caixa de Som', 'Caixa de Som amperagem ...', '890.00', '05-07-2021-15-26-48-caixa-som.jpg', '6', '2021-07-05', '4', '4', '6', '2023-05-03', 'Sim', '', 'Compra', '');
INSERT INTO `patrimonios` (`id`, `codigo`, `nome`, `descricao`, `valor`, `foto`, `usuario_cad`, `data_cad`, `igreja_cad`, `igreja_item`, `usuario_emprestou`, `data_emprestimo`, `ativo`, `obs`, `entrada`, `doador`) VALUES ('6', '08412', 'Microfone X8751', 'Microfone Prata...', '650.00', '05-07-2021-18-17-38-microfone.jpg', '26', '2021-06-05', '3', '3', '6', '2021-07-06', 'N�o', 'Microfone estragado, precisa de reparo pois n�o est� funcionando bem', 'Compra', '');
INSERT INTO `patrimonios` (`id`, `codigo`, `nome`, `descricao`, `valor`, `foto`, `usuario_cad`, `data_cad`, `igreja_cad`, `igreja_item`, `usuario_emprestou`, `data_emprestimo`, `ativo`, `obs`, `entrada`, `doador`) VALUES ('7', '187467', 'Cadeira para Festa', 'Cadeira para Festa', '65.00', '05-07-2021-18-18-25-cadeira.jpg', '6', '2021-07-05', '3', '4', '26', '2021-07-05', 'Sim', 'Cadeira comprada para complementar as cadeiras de festas da igreja, esta cadeira est� ....', 'Compra', '');
INSERT INTO `patrimonios` (`id`, `codigo`, `nome`, `descricao`, `valor`, `foto`, `usuario_cad`, `data_cad`, `igreja_cad`, `igreja_item`, `usuario_emprestou`, `data_emprestimo`, `ativo`, `obs`, `entrada`, `doador`) VALUES ('8', '054845', 'Banco de Couro', 'Banco de Couro do Altar', '0.00', 'sem-foto.jpg', '6', '2021-07-28', '1', '4', '6', '2023-05-03', 'Sim', '', 'Doa��o', 'Marta Silva');
INSERT INTO `patrimonios` (`id`, `codigo`, `nome`, `descricao`, `valor`, `foto`, `usuario_cad`, `data_cad`, `igreja_cad`, `igreja_item`, `usuario_emprestou`, `data_emprestimo`, `ativo`, `obs`, `entrada`, `doador`) VALUES ('9', '012365', 'Caixa de Som', 'Caixa de Som com amperagem 1200', '1300.00', '21-09-2021-15-07-39-caixa-som.jpg', '6', '2021-09-21', '3', '3', '0', '', 'Sim', '', 'Compra', '');
INSERT INTO `patrimonios` (`id`, `codigo`, `nome`, `descricao`, `valor`, `foto`, `usuario_cad`, `data_cad`, `igreja_cad`, `igreja_item`, `usuario_emprestou`, `data_emprestimo`, `ativo`, `obs`, `entrada`, `doador`) VALUES ('11', '048515', 'Banco de Madeira', 'Banco Revestido de Madeira MDF 2 Metros', '1400.00', '21-09-2021-19-01-08-�ndice.jpg', '6', '2021-09-21', '3', '1', '6', '2021-09-21', 'Sim', '', 'Compra', '');
INSERT INTO `patrimonios` (`id`, `codigo`, `nome`, `descricao`, `valor`, `foto`, `usuario_cad`, `data_cad`, `igreja_cad`, `igreja_item`, `usuario_emprestou`, `data_emprestimo`, `ativo`, `obs`, `entrada`, `doador`) VALUES ('13', '098754', 'Notebook acer', 'Notebook 8 gb de ram, 1 ter� de hd', '2400.00', '71e5c740-88e2-4d0b-a563-1b5d0a8c0cb1.jpg', '6', '2021-09-21', '3', '4', '6', '2021-09-21', 'Sim', 'Produto novo', 'Compra', '');
INSERT INTO `patrimonios` (`id`, `codigo`, `nome`, `descricao`, `valor`, `foto`, `usuario_cad`, `data_cad`, `igreja_cad`, `igreja_item`, `usuario_emprestou`, `data_emprestimo`, `ativo`, `obs`, `entrada`, `doador`) VALUES ('18', '7564543', 'Microfone Grava��o ', 'Microfone para PC', '95.00', 'eff0f19c-d0a6-48ae-892d-cb43fc4864ac.jpg', '6', '2021-09-21', '4', '3', '6', '2021-09-21', 'Sim', '', 'Compra', '');
INSERT INTO `patrimonios` (`id`, `codigo`, `nome`, `descricao`, `valor`, `foto`, `usuario_cad`, `data_cad`, `igreja_cad`, `igreja_item`, `usuario_emprestou`, `data_emprestimo`, `ativo`, `obs`, `entrada`, `doador`) VALUES ('19', '9765644', 'Monitor PC', 'Monitor 22 polegadas ', '700.00', '6dc89886-1348-46f4-a469-9f6c35332292.jpg', '6', '2021-09-21', '3', '4', '26', '2021-10-05', 'N�o', '', 'Compra', '');
INSERT INTO `patrimonios` (`id`, `codigo`, `nome`, `descricao`, `valor`, `foto`, `usuario_cad`, `data_cad`, `igreja_cad`, `igreja_item`, `usuario_emprestou`, `data_emprestimo`, `ativo`, `obs`, `entrada`, `doador`) VALUES ('20', '03544', 'Panel�o', 'Alum�nio Inox de 150 Litros', '350.00', 'sem-foto.jpg', '6', '2023-05-03', '1', '1', '0', '', 'Sim', '', 'Compra', '');

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
  `igreja` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
INSERT INTO `receber` (`id`, `descricao`, `membro`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `pago`, `igreja`) VALUES ('1', 'Cantina', '2', '55.00', '2021-06-29', '2021-06-30', '6', '6', '2021-06-29', 'Sim', '3');
INSERT INTO `receber` (`id`, `descricao`, `membro`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `pago`, `igreja`) VALUES ('2', 'Cantina', '5', '30.55', '2021-06-29', '2021-06-27', '6', '6', '2021-07-12', 'Sim', '3');
INSERT INTO `receber` (`id`, `descricao`, `membro`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `pago`, `igreja`) VALUES ('4', 'Cantina', '1', '65.00', '2021-06-29', '2021-06-29', '6', '0', '', 'N�o', '3');
INSERT INTO `receber` (`id`, `descricao`, `membro`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `pago`, `igreja`) VALUES ('5', 'Cantina', '5', '85.00', '2021-06-30', '2021-06-30', '33', '6', '2021-09-28', 'Sim', '3');
INSERT INTO `receber` (`id`, `descricao`, `membro`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `pago`, `igreja`) VALUES ('6', 'Cantina', '5', '65.00', '2021-06-30', '2021-07-07', '6', '0', '', 'N�o', '3');
INSERT INTO `receber` (`id`, `descricao`, `membro`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `pago`, `igreja`) VALUES ('7', 'Cantina', '8', '35.00', '2021-09-27', '2021-09-27', '6', '6', '2021-09-27', 'Sim', '3');
INSERT INTO `receber` (`id`, `descricao`, `membro`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `pago`, `igreja`) VALUES ('10', 'Cantina', '4', '68.00', '2021-09-27', '2021-09-27', '6', '0', '', 'N�o', '3');
INSERT INTO `receber` (`id`, `descricao`, `membro`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `pago`, `igreja`) VALUES ('11', 'Compra na Cantina', '41', '65.00', '2021-09-27', '2021-09-28', '6', '0', '', 'N�o', '3');
INSERT INTO `receber` (`id`, `descricao`, `membro`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `pago`, `igreja`) VALUES ('12', 'Compra', '4', '50.00', '2021-09-27', '2021-09-26', '6', '0', '', 'N�o', '3');
INSERT INTO `receber` (`id`, `descricao`, `membro`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `pago`, `igreja`) VALUES ('13', 'Cantina', '4', '60.00', '2021-10-05', '2021-10-05', '26', '26', '2021-10-05', 'Sim', '3');
INSERT INTO `receber` (`id`, `descricao`, `membro`, `valor`, `data`, `vencimento`, `usuario_cad`, `usuario_baixa`, `data_baixa`, `pago`, `igreja`) VALUES ('14', 'teste', '4', '100.00', '2022-11-07', '2022-11-07', '6', '0', '', 'N�o', '3');

-- TABLE: secretarios
CREATE TABLE `secretarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `foto` varchar(150) DEFAULT NULL,
  `igreja` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
INSERT INTO `secretarios` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`, `foto`, `igreja`) VALUES ('2', 'Secret�rio Teste', 'secretario@hotmail.com', '258.105.184-54', '(54) 12102-5545', 'Rua Almeida Campos 150', '23-06-2021-13-18-58-01.jpg', '1');
INSERT INTO `secretarios` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`, `foto`, `igreja`) VALUES ('3', 'Secret�rio Teste', 'secretarioteste@hotmail.com', '545.254.512-12', '(82) 04545-455', 'Rua Almeida Campos 150 Bairro Serra Verde - Belo Horizonte - MG', '28-06-2021-13-59-07-hugo-profile.jpeg', '3');
INSERT INTO `secretarios` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`, `foto`, `igreja`) VALUES ('4', 'Secretario 2', 'sec@hotmail.com', '365.925.451-20', '(64) 51545-4545', 'Rua A, N�mero 150, Bairro XX - Belo Horizonte - MG', 'sem-foto.jpg', '4');

-- TABLE: tarefas
CREATE TABLE `tarefas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(25) NOT NULL,
  `descricao` varchar(75) DEFAULT NULL,
  `hora` time NOT NULL,
  `data` date NOT NULL,
  `igreja` int(11) NOT NULL,
  `status` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `igreja`, `status`) VALUES ('2', 'Visita Membro', 'Paula Dos Santos fdsafd afdsaf fad affadf adfsafds', '10:40:00', '2021-06-28', '3', 'Conclu�da');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `igreja`, `status`) VALUES ('3', 'Limpeza da Igreja', 'Paloma Silva', '13:00:00', '2021-09-15', '3', 'Conclu�da');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `igreja`, `status`) VALUES ('4', 'Contabilidade', 'Controle Financeiro', '09:00:00', '2021-06-28', '3', 'Conclu�da');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `igreja`, `status`) VALUES ('5', 'Visitar Membro', 'Marcos Souza', '10:10:00', '2021-06-27', '3', 'Conclu�da');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `igreja`, `status`) VALUES ('6', 'Visitar Membro', 'Diacono Santos', '20:30:00', '2021-06-28', '3', 'Conclu�da');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `igreja`, `status`) VALUES ('8', 'Visitar Membro', 'Paloma Santos', '12:30:00', '2021-06-29', '4', 'Agendada');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `igreja`, `status`) VALUES ('9', 'Regulagem de Som', 'Regular os aparelhos de som', '12:00:00', '2021-06-29', '3', 'Conclu�da');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `igreja`, `status`) VALUES ('10', 'Visitar Membro', 'Thiago Silva', '15:30:00', '2021-06-29', '3', 'Conclu�da');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `igreja`, `status`) VALUES ('11', 'Visitar Membro', 'Visita ao Membro Santos', '21:00:00', '2021-09-15', '3', 'Conclu�da');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `igreja`, `status`) VALUES ('12', 'Visitar Membro', 'Visita ao Membro Santos', '13:00:00', '2021-07-13', '1', 'Agendada');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `igreja`, `status`) VALUES ('13', 'Comprar Microfones', 'Receber Fornecedor', '15:00:00', '2021-09-15', '3', 'Conclu�da');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `igreja`, `status`) VALUES ('15', 'Conserto de Equipamentos', 'Levar Equipamentos para o Conserto', '12:30:00', '2021-09-20', '3', 'Conclu�da');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `igreja`, `status`) VALUES ('18', 'Visitar Membro', 'Marcio Silva', '21:30:00', '2021-09-21', '3', 'Conclu�da');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `igreja`, `status`) VALUES ('32', 'Visitar Membro ', 'Paula silva', '20:29:00', '2021-09-21', '4', 'Agendada');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `igreja`, `status`) VALUES ('33', 'Visitar Membro ', 'Marcia Souza ', '15:10:00', '2021-09-22', '3', 'Conclu�da');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `igreja`, `status`) VALUES ('34', 'Visitar Membro ', 'Carlos souza', '15:46:00', '2021-09-28', '3', 'Conclu�da');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `igreja`, `status`) VALUES ('38', 'Visitar Membro ', 'Marcos ', '11:48:00', '2021-10-04', '3', 'Agendada');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `igreja`, `status`) VALUES ('39', 'Visitar Membro', 'Paula Silva', '19:30:00', '2021-10-04', '3', 'Agendada');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `igreja`, `status`) VALUES ('46', 'Visitar Membro', 'Carlos Silva', '11:37:00', '2021-10-05', '3', 'Conclu�da');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `igreja`, `status`) VALUES ('47', 'Reuni�o ', 'Diaconos', '11:39:00', '2021-10-05', '3', 'Conclu�da');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `igreja`, `status`) VALUES ('48', 'Visitar Membro', 'Marcia', '11:41:00', '2021-10-05', '3', 'Agendada');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `igreja`, `status`) VALUES ('51', 'Visitar Membro ', 'Aaaa', '13:53:00', '2021-10-05', '3', 'Agendada');
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `hora`, `data`, `igreja`, `status`) VALUES ('52', 'Reuni�o com o pastor', 'Teste', '14:05:00', '2021-10-05', '3', 'Conclu�da');

-- TABLE: tesoureiros
CREATE TABLE `tesoureiros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `foto` varchar(150) DEFAULT NULL,
  `igreja` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
INSERT INTO `tesoureiros` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`, `foto`, `igreja`) VALUES ('7', 'Marcio', 'maciocaixa@hotmail.com', '685.151.121-22', '(58) 78451-4554', 'Rua Almeida Campos 150 Bairro Centen�rio - Boa Vista - RR', '28-06-2021-13-54-41-hugo-profile.jpeg', '4');
INSERT INTO `tesoureiros` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`, `foto`, `igreja`) VALUES ('8', 'Sab�ia', 'saboia@hotmail.com', '451.258.451-22', '(56) 78411-2121', 'Rua Almeida Campos 150 Bairro Serra Verde - Boa Vista - RR', '28-06-2021-13-57-44-hugo-profile.jpeg', '3');

-- TABLE: token
CREATE TABLE `token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nivel` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `igreja` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `token` (`id`, `token`, `nivel`, `igreja`) VALUES ('8', 'ExponentPushToken[7Ipy54KH49T9O7JXSIPNu_]', 'tesoureiro', '3');
INSERT INTO `token` (`id`, `token`, `nivel`, `igreja`) VALUES ('9', 'ExponentPushToken[hgIJgcO3bEaqnLNCViaYfv]', 'pastor', '3');

-- TABLE: transferencias
CREATE TABLE `transferencias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `membro` int(11) NOT NULL,
  `igreja_saida` int(11) NOT NULL,
  `igreja_entrada` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `data` date NOT NULL,
  `obs` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
INSERT INTO `transferencias` (`id`, `membro`, `igreja_saida`, `igreja_entrada`, `usuario`, `data`, `obs`) VALUES ('1', '53', '3', '4', '6', '2022-11-07', 'teste ');
INSERT INTO `transferencias` (`id`, `membro`, `igreja_saida`, `igreja_entrada`, `usuario`, `data`, `obs`) VALUES ('2', '53', '4', '3', '6', '2022-11-07', 'devolvido');
INSERT INTO `transferencias` (`id`, `membro`, `igreja_saida`, `igreja_entrada`, `usuario`, `data`, `obs`) VALUES ('3', '51', '3', '4', '6', '2022-11-08', 'fffsdfsdfds');
INSERT INTO `transferencias` (`id`, `membro`, `igreja_saida`, `igreja_entrada`, `usuario`, `data`, `obs`) VALUES ('4', '51', '4', '1', '6', '2023-05-03', 'gn');
INSERT INTO `transferencias` (`id`, `membro`, `igreja_saida`, `igreja_entrada`, `usuario`, `data`, `obs`) VALUES ('5', '48', '4', '1', '6', '2023-05-03', 'gn');
INSERT INTO `transferencias` (`id`, `membro`, `igreja_saida`, `igreja_entrada`, `usuario`, `data`, `obs`) VALUES ('6', '53', '3', '1', '6', '2023-05-03', '');
INSERT INTO `transferencias` (`id`, `membro`, `igreja_saida`, `igreja_entrada`, `usuario`, `data`, `obs`) VALUES ('7', '53', '3', '1', '6', '2023-05-03', '');
INSERT INTO `transferencias` (`id`, `membro`, `igreja_saida`, `igreja_entrada`, `usuario`, `data`, `obs`) VALUES ('8', '52', '3', '1', '6', '2023-05-03', '');
INSERT INTO `transferencias` (`id`, `membro`, `igreja_saida`, `igreja_entrada`, `usuario`, `data`, `obs`) VALUES ('9', '49', '3', '1', '6', '2023-05-03', '');
INSERT INTO `transferencias` (`id`, `membro`, `igreja_saida`, `igreja_entrada`, `usuario`, `data`, `obs`) VALUES ('10', '45', '3', '1', '6', '2023-05-03', '');
INSERT INTO `transferencias` (`id`, `membro`, `igreja_saida`, `igreja_entrada`, `usuario`, `data`, `obs`) VALUES ('11', '41', '3', '1', '6', '2023-05-03', '');
INSERT INTO `transferencias` (`id`, `membro`, `igreja_saida`, `igreja_entrada`, `usuario`, `data`, `obs`) VALUES ('12', '17', '3', '1', '6', '2023-05-03', '');

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
  `igreja` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `email`, `senha`, `nivel`, `id_pessoa`, `foto`, `igreja`) VALUES ('6', 'Administrador sistema', '000.000.000-00', 'sistemasparaigrejas@gmail.com', '123', 'bispo', '1', '22-06-2021-18-30-33-user.jpg', '0');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `email`, `senha`, `nivel`, `id_pessoa`, `foto`, `igreja`) VALUES ('19', 'Secret�rio Teste', '258.105.184-54', 'secretario@hotmail.com', '123', 'secretario', '2', '23-06-2021-13-18-58-01.jpg', '1');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `email`, `senha`, `nivel`, `id_pessoa`, `foto`, `igreja`) VALUES ('27', 'Jeferson Antonio', '587.855.555-55', 'pastor@hotmail.com', '123', 'pastor', '3', '28-06-2021-11-31-49-02.jpg', '3');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `email`, `senha`, `nivel`, `id_pessoa`, `foto`, `igreja`) VALUES ('32', 'Marcio', '685.151.121-22', 'maciocaixa@hotmail.com', '123', 'tesoureiro', '7', '28-06-2021-13-54-41-hugo-profile.jpeg', '4');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `email`, `senha`, `nivel`, `id_pessoa`, `foto`, `igreja`) VALUES ('33', 'Sab�ia', '451.258.451-22', 'saboia@hotmail.com', '123', 'tesoureiro', '8', '28-06-2021-13-57-44-hugo-profile.jpeg', '3');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `email`, `senha`, `nivel`, `id_pessoa`, `foto`, `igreja`) VALUES ('34', 'Secret�rio Teste', '545.254.512-12', 'secretarioteste@hotmail.com', '123', 'secretario', '3', '28-06-2021-13-59-07-hugo-profile.jpeg', '3');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `email`, `senha`, `nivel`, `id_pessoa`, `foto`, `igreja`) VALUES ('35', 'Secretario 2', '365.925.451-20', 'sec@hotmail.com', '123', 'secretario', '4', 'sem-foto.jpg', '4');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `email`, `senha`, `nivel`, `id_pessoa`, `foto`, `igreja`) VALUES ('46', 'ffasf', '154.454.5', 'aasfdsfsssaaa@hugocursos.com.br', '123', 'pastor', '17', 'sem-foto.jpg', '3');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `email`, `senha`, `nivel`, `id_pessoa`, `foto`, `igreja`) VALUES ('48', 'Pastor Edilberto Medeiros', '313.113.131-11', 'edilberto@hotmail.com', '123', 'pastor', '21', 'sem-foto.jpg', '1');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `email`, `senha`, `nivel`, `id_pessoa`, `foto`, `igreja`) VALUES ('49', 'Pastor William', '231.131.311-13', 'will@gmail.com', '123', 'pastor', '22', 'sem-foto.jpg', '1');

-- TABLE: vendas
CREATE TABLE `vendas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `data` date NOT NULL,
  `usuario` int(11) NOT NULL,
  `igreja` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
INSERT INTO `vendas` (`id`, `descricao`, `valor`, `data`, `usuario`, `igreja`) VALUES ('2', 'Vendas da Cantina', '950.00', '2021-06-28', '6', '3');
INSERT INTO `vendas` (`id`, `descricao`, `valor`, `data`, `usuario`, `igreja`) VALUES ('4', 'Vendas da Cantina', '1600.00', '2021-06-30', '6', '3');
INSERT INTO `vendas` (`id`, `descricao`, `valor`, `data`, `usuario`, `igreja`) VALUES ('5', 'Vendas da Cantina', '160.00', '2021-07-12', '6', '3');
INSERT INTO `vendas` (`id`, `descricao`, `valor`, `data`, `usuario`, `igreja`) VALUES ('10', 'Vendas da Cantina', '90.50', '2021-09-27', '6', '3');
INSERT INTO `vendas` (`id`, `descricao`, `valor`, `data`, `usuario`, `igreja`) VALUES ('15', 'Vendas da Cantina', '49.99', '2021-09-27', '6', '3');
INSERT INTO `vendas` (`id`, `descricao`, `valor`, `data`, `usuario`, `igreja`) VALUES ('16', 'Vendas da Cantina', '135.00', '2021-09-27', '6', '3');
INSERT INTO `vendas` (`id`, `descricao`, `valor`, `data`, `usuario`, `igreja`) VALUES ('17', 'Vendas da Cantina', '50.00', '2021-09-27', '6', '3');
INSERT INTO `vendas` (`id`, `descricao`, `valor`, `data`, `usuario`, `igreja`) VALUES ('21', 'Vendas da Cantina', '60.00', '2021-09-28', '6', '3');
INSERT INTO `vendas` (`id`, `descricao`, `valor`, `data`, `usuario`, `igreja`) VALUES ('22', 'Vendas da Cantina', '58.90', '2021-09-26', '6', '3');

-- TABLE: versiculos
CREATE TABLE `versiculos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `versiculo` varchar(1000) NOT NULL,
  `capitulo` varchar(25) NOT NULL,
  `igreja` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
INSERT INTO `versiculos` (`id`, `versiculo`, `capitulo`, `igreja`) VALUES ('1', 'O amor � paciente, o amor � bondoso. N�o inveja, n�o se vangloria, n�o se orgulha. N�o maltrata, n�o procura seus interesses, n�o se ira facilmente, n�o guarda rancor. O amor n�o se alegra com a injusti�a, mas se alegra com a verdade. Tudo sofre, tudo cr�, tudo espera, tudo suporta.', '1 Cor�ntios 13:4-7', '3');
INSERT INTO `versiculos` (`id`, `versiculo`, `capitulo`, `igreja`) VALUES ('2', 'N�o fui eu que ordenei a voc�? Seja forte e corajoso! N�o se apavore nem desanime, pois o Senhor, o seu Deus, estar� com voc� por onde voc� andar', 'Josu� 1:9', '3');
INSERT INTO `versiculos` (`id`, `versiculo`, `capitulo`, `igreja`) VALUES ('3', 'Eu disse essas coisas para que em mim voc�s tenham paz. Neste mundo voc�s ter�o afli��es; contudo, tenham �nimo! Eu venci o mundo', 'Jo�o 16:33', '3');

-- TABLE: visitantes
CREATE TABLE `visitantes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `desejo` varchar(255) DEFAULT NULL,
  `igreja` int(11) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
INSERT INTO `visitantes` (`id`, `nome`, `telefone`, `endereco`, `email`, `desejo`, `igreja`, `data`) VALUES ('2', 'Marcelo Campos', '(55) 68656-5656', 'Rua 5', 'marcelo@hotmail.com', 'Receber Visita', '3', '2021-11-16');
INSERT INTO `visitantes` (`id`, `nome`, `telefone`, `endereco`, `email`, `desejo`, `igreja`, `data`) VALUES ('3', 'Kamila Santos', '(59) 54545-4545', 'fdfsdafd', 'kamila@hotmail.com', 'Receber Ora�ao', '3', '2021-11-16');

