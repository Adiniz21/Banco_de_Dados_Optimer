CREATE TABLE `Usuarios` (
  `id_usuario` integer(2) PRIMARY KEY AUTO_INCREMENT,
  `usuario` varchar(20) UNIQUE,
  `senha` varchar(20),
  `nome` varchar(40),
  `email` varchar(50),
  `telefone` varchar(10),
  `cargo` char(1)
);

CREATE TABLE `Clientes` (
  `id_cliente` integer(2) PRIMARY KEY AUTO_INCREMENT,
  `identidade` varchar(14) UNIQUE,
  `cpfcnpj` varchar(18) UNIQUE,
  `nome` varchar(40),
  `email` varchar(50),
  `inscEst` varchar(30),
  `telefone` varchar(10),
  `genero` char(1),
  `data_nasc` date,
  `data_cadastro` date,
  `observacoes` text
);

CREATE TABLE `Enderecos` (
  `id_endereco` integer(2) PRIMARY KEY AUTO_INCREMENT,
  `id_residente` integer UNIQUE,
  `logradouro` varchar(40),
  `bairro` varchar(40),
  `cep` varchar(8),
  `estado` varchar(2)
);

CREATE TABLE `Documentos` (
  `id_doc` integer(2) PRIMARY KEY AUTO_INCREMENT,
  `id_donoDoc` integer(2),
  `nome` varchar(30),
  `imagem_doc` blob
);

CREATE TABLE `Veiculos` (
  `id_veiculo` integer(2) PRIMARY KEY AUTO_INCREMENT,
  `placa` varchar(7) UNIQUE,
  `chassi` varchar(17) UNIQUE,
  `ano` varchar(4),
  `modelo` varchar(15),
  `cor` varchar(10),
  `capacidadeTanque` integer(2),
  `quilometragem` integer(5),
  `observacoes` varchar(255),
  `dataAquisicao` date,
  `quilometragemAquisicao` integer,
  `quilometragemAtual` integer,
  `modificacoes` text,
  `id_status` integer(2)
);

CREATE TABLE `CheckListVeiculo` (
  `id_checklistVeiculo` integer(2) PRIMARY KEY AUTO_INCREMENT,
  `id_veiculo` integer(2),
  `id_cklVeiculoEssencial` integer(2),
  `id_cklVeiculoAuxiliar` integer(2),
  `id_cklVeiculoOpcional` integer(2)
);

CREATE TABLE `CheckListVeiculoEssencial` (
  `id_cklVeiculoEssencial` integer(2) PRIMARY KEY AUTO_INCREMENT,
  `documentos` varchar(20),
  `obs_documentos` varchar(60),
  `pneus` varchar(20),
  `obsPnseus` varchar(60),
  `setas` varchar(20),
  `obsSetas` varchar(60),
  `buzina` varchar(20),
  `obsBuzina` varchar(60),
  `cintoSeguranca` varchar(20),
  `obsCintoSeguranca` varchar(60),
  `chapaProtecao` varchar(20),
  `obsChapaProtecao` varchar(60),
  `placas` varchar(20),
  `obsPlacas` varchar(60),
  `oleoMotor` varchar(20),
  `obsOleoMotor` varchar(60),
  `luzFreio` varchar(20),
  `obsLuzFreio` varchar(60),
  `luzRe` varchar(20),
  `obsLuzRe` varchar(60),
  `limpadorVidroTras` varchar(20),
  `obsLimpadorVidroTras` varchar(60),
  `aguaParaBrisa` varchar(20),
  `limpadorParaBrisa` varchar(60),
  `parteEletrica` varchar(20),
  `obsParteEletrica` varchar(60)
);

CREATE TABLE `CheckListVeiculoAuxiliar` (
  `id_cklVeiculoAuxiliar` integer(2) PRIMARY KEY AUTO_INCREMENT,
  `pneuEstepe` varchar(20),
  `obsPneuEstepe` varchar(60),
  `funcionamentoBanco` varchar(20),
  `obsFuncionamentoBanco` varchar(60),
  `calotas` varchar(20),
  `obsCalotas` varchar(60),
  `macaco` varchar(20),
  `obsMacaco` varchar(60),
  `chaveRoda` varchar(20),
  `osbChaveRoda` varchar(60),
  `triangulo` varchar(20),
  `obsTriagulo` varchar(60),
  `extintorIncendio` varchar(20),
  `obsExtintorIncendio` varchar(60),
  `controlInternos` varchar(20),
  `obsControlInternos` varchar(60),
  `instrumentosPainel` varchar(20),
  `obsInstrumentosPainel` varchar(60),
  `combustivel` varchar(20),
  `obsCombustivel` varchar(60),
  `kitPrimSocorro` varchar(20),
  `obsKitPrimSocorro` varchar(60)
);

CREATE TABLE `CheckListVeiculoOpcionais` (
  `id_cklVeiculoOpcional` integer(2) PRIMARY KEY AUTO_INCREMENT,
  `somCdRadio` varchar(20),
  `obsSomCdRadio` varchar(60),
  `arCondiconado` varchar(20),
  `obsArCondicionado` varchar(60),
  `acionEletVidro` varchar(20),
  `obsAcionEletVridro` varchar(60),
  `travEletPortas` varchar(20),
  `obsTravEletPortas` varchar(60),
  `estofamentos` varchar(20),
  `obsEstofamento` varchar(60),
  `tapetes` varchar(20),
  `obsTapetes` varchar(60),
  `luzInterna` varchar(20),
  `obsLuzInternas` varchar(60),
  `limpezaInterna` varchar(50),
  `limpezaExterna` varchar(50),
  `limpezaMotor` varchar(50),
  `arranhoes` varchar(60),
  `pintura` varchar(60),
  `amassados` varchar(60)
);

CREATE TABLE `CheckListAluguelEssencial` (
  `id_cklAluguelEssencial` integer(2) PRIMARY KEY AUTO_INCREMENT,
  `documentos` varchar(20),
  `obs_documentos` varchar(60),
  `pneus` varchar(20),
  `obsPnseus` varchar(60),
  `setas` varchar(20),
  `obsSetas` varchar(60),
  `buzina` varchar(20),
  `obsBuzina` varchar(60),
  `cintoSeguranca` varchar(20),
  `obsCintoSeguranca` varchar(60),
  `chapaProtecao` varchar(20),
  `obsChapaProtecao` varchar(60),
  `placas` varchar(20),
  `obsPlacas` varchar(60),
  `oleoMotor` varchar(20),
  `obsOleoMotor` varchar(60),
  `luzFreio` varchar(20),
  `obsLuzFreio` varchar(60),
  `luzRe` varchar(20),
  `obsLuzRe` varchar(60),
  `limpadorVidroTras` varchar(20),
  `obsLimpadorVidroTras` varchar(60),
  `aguaParaBrisa` varchar(20),
  `limpadorParaBrisa` varchar(60),
  `parteEletrica` varchar(20),
  `obsParteEletrica` varchar(60)
);

CREATE TABLE `CheckListAluguelAuxiliar` (
  `id_cklAluguelAuxiliar` integer(2) PRIMARY KEY AUTO_INCREMENT,
  `pneuEstepe` varchar(20),
  `obsPneuEstepe` varchar(60),
  `funcionamentoBanco` varchar(20),
  `obsFuncionamentoBanco` varchar(60),
  `calotas` varchar(20),
  `obsCalotas` varchar(60),
  `macaco` varchar(20),
  `obsMacaco` varchar(60),
  `chaveRoda` varchar(20),
  `osbChaveRoda` varchar(60),
  `triangulo` varchar(20),
  `obsTriagulo` varchar(60),
  `extintorIncendio` varchar(20),
  `obsExtintorIncendio` varchar(60),
  `controlInternos` varchar(20),
  `obsControlInternos` varchar(60),
  `instrumentosPainel` varchar(20),
  `obsInstrumentosPainel` varchar(60),
  `combustivel` varchar(20),
  `obsCombustivel` varchar(60),
  `kitPrimSocorro` varchar(20),
  `obsKitPrimSocorro` varchar(60)
);

CREATE TABLE `CheckListAluguelOpcionais` (
  `id_cklAluguelOpcional` integer(2) PRIMARY KEY AUTO_INCREMENT,
  `somCdRadio` varchar(20),
  `obsSomCdRadio` varchar(60),
  `arCondiconado` varchar(20),
  `obsArCondicionado` varchar(60),
  `acionEletVidro` varchar(20),
  `obsAcionEletVridro` varchar(60),
  `travEletPortas` varchar(20),
  `obsTravEletPortas` varchar(60),
  `estofamentos` varchar(20),
  `obsEstofamento` varchar(60),
  `tapetes` varchar(20),
  `obsTapetes` varchar(60),
  `luzInterna` varchar(20),
  `obsLuzInternas` varchar(60),
  `limpezaInterna` varchar(50),
  `limpezaExterna` varchar(50),
  `limpezaMotor` varchar(50),
  `arranhoes` varchar(60),
  `pintura` varchar(60),
  `amassados` varchar(60)
);

CREATE TABLE `CheckListAluguel` (
  `id_checklistAluguel` integer(2) PRIMARY KEY AUTO_INCREMENT,
  `id_Aluguel` integer(2),
  `id_cklAluguelEssencial` integer(2),
  `id_cklAluguelAuxiliar` integer(2),
  `id_cklAluguelOpcional` integer(2)
);

CREATE TABLE `CheckListAluguelEssencialDev` (
  `id_cklAluguelEssencialDev` integer(2) PRIMARY KEY AUTO_INCREMENT,
  `documentos` varchar(20),
  `obs_documentos` varchar(60),
  `pneus` varchar(20),
  `obsPnseus` varchar(60),
  `setas` varchar(20),
  `obsSetas` varchar(60),
  `buzina` varchar(20),
  `obsBuzina` varchar(60),
  `cintoSeguranca` varchar(20),
  `obsCintoSeguranca` varchar(60),
  `chapaProtecao` varchar(20),
  `obsChapaProtecao` varchar(60),
  `placas` varchar(20),
  `obsPlacas` varchar(60),
  `oleoMotor` varchar(20),
  `obsOleoMotor` varchar(60),
  `luzFreio` varchar(20),
  `obsLuzFreio` varchar(60),
  `luzRe` varchar(20),
  `obsLuzRe` varchar(60),
  `limpadorVidroTras` varchar(20),
  `obsLimpadorVidroTras` varchar(60),
  `aguaParaBrisa` varchar(20),
  `limpadorParaBrisa` varchar(60),
  `parteEletrica` varchar(20),
  `obsParteEletrica` varchar(60)
);

CREATE TABLE `CheckListAluguelAuxiliarDev` (
  `id_cklAluguelAuxiliarDev` integer(2) PRIMARY KEY AUTO_INCREMENT,
  `pneuEstepe` varchar(20),
  `obsPneuEstepe` varchar(60),
  `funcionamentoBanco` varchar(20),
  `obsFuncionamentoBanco` varchar(60),
  `calotas` varchar(20),
  `obsCalotas` varchar(60),
  `macaco` varchar(20),
  `obsMacaco` varchar(60),
  `chaveRoda` varchar(20),
  `osbChaveRoda` varchar(60),
  `triangulo` varchar(20),
  `obsTriagulo` varchar(60),
  `extintorIncendio` varchar(20),
  `obsExtintorIncendio` varchar(60),
  `controlInternos` varchar(20),
  `obsControlInternos` varchar(60),
  `instrumentosPainel` varchar(20),
  `obsInstrumentosPainel` varchar(60),
  `combustivel` varchar(20),
  `obsCombustivel` varchar(60),
  `kitPrimSocorro` varchar(20),
  `obsKitPrimSocorro` varchar(60)
);

CREATE TABLE `CheckListAluguelOpcionaisDev` (
  `id_cklAluguelOpcionalDev` integer(2) PRIMARY KEY AUTO_INCREMENT,
  `somCdRadio` varchar(20),
  `obsSomCdRadio` varchar(60),
  `arCondiconado` varchar(20),
  `obsArCondicionado` varchar(60),
  `acionEletVidro` varchar(20),
  `obsAcionEletVridro` varchar(60),
  `travEletPortas` varchar(20),
  `obsTravEletPortas` varchar(60),
  `estofamentos` varchar(20),
  `obsEstofamento` varchar(60),
  `tapetes` varchar(20),
  `obsTapetes` varchar(60),
  `luzInterna` varchar(20),
  `obsLuzInternas` varchar(60),
  `limpezaInterna` varchar(50),
  `limpezaExterna` varchar(50),
  `limpezaMotor` varchar(50),
  `arranhoes` varchar(60),
  `pintura` varchar(60),
  `amassados` varchar(60)
);

CREATE TABLE `CheckListAluguelDev` (
  `id_checklistAluguelDev` integer(2) PRIMARY KEY AUTO_INCREMENT,
  `id_Aluguel` integer(2),
  `id_cklAluguelEssencialDev` integer(2),
  `id_cklAluguelAuxiliarDev` integer(2),
  `id_cklAluguelOpcionalDev` integer(2)
);

CREATE TABLE `Alugueis` (
  `id_aluguel` integer(2) PRIMARY KEY AUTO_INCREMENT,
  `id_cliente` integer(2),
  `id_veiculo` integer(2),
  `id_usuario` integer(2),
  `id_status` integer(2),
  `kmSaida` integer,
  `kmChegadada` integer,
  `cnh` varchar(11),
  `motorista` varchar(40),
  `regist` varchar(20),
  `dataHoraSaida` datetime,
  `dataHoraChegada` datetime
);

CREATE TABLE `AgendaVeiculos` (
  `id_agendaVeiculo` integer(2) PRIMARY KEY AUTO_INCREMENT,
  `id_veiculo` integer(2),
  `dataInicio` date,
  `dataFim` date,
  `descricao` varchar(150)
);

CREATE TABLE `Status` (
  `id_status` integer(2) PRIMARY KEY,
  `descricao` varchar(255)
);

ALTER TABLE `Enderecos` ADD FOREIGN KEY (`id_residente`) REFERENCES `Clientes` (`id_cliente`);

ALTER TABLE `Documentos` ADD FOREIGN KEY (`id_donoDoc`) REFERENCES `Clientes` (`id_cliente`);

ALTER TABLE `Documentos` ADD FOREIGN KEY (`id_donoDoc`) REFERENCES `Veiculos` (`id_veiculo`);

ALTER TABLE `Documentos` ADD FOREIGN KEY (`id_donoDoc`) REFERENCES `Alugueis` (`id_aluguel`);

ALTER TABLE `Alugueis` ADD FOREIGN KEY (`id_cliente`) REFERENCES `Clientes` (`id_cliente`);

ALTER TABLE `Alugueis` ADD FOREIGN KEY (`id_veiculo`) REFERENCES `Veiculos` (`id_veiculo`);

ALTER TABLE `Alugueis` ADD FOREIGN KEY (`id_usuario`) REFERENCES `Usuarios` (`id_usuario`);

ALTER TABLE `Alugueis` ADD FOREIGN KEY (`id_status`) REFERENCES `Status` (`id_status`);

ALTER TABLE `Veiculos` ADD FOREIGN KEY (`id_status`) REFERENCES `Status` (`id_status`);

ALTER TABLE `CheckListAluguel` ADD FOREIGN KEY (`id_cklAluguelOpcional`) REFERENCES `CheckListAluguelOpcionais` (`id_cklAluguelOpcional`);

ALTER TABLE `CheckListAluguel` ADD FOREIGN KEY (`id_cklAluguelAuxiliar`) REFERENCES `CheckListAluguelAuxiliar` (`id_cklAluguelAuxiliar`);

ALTER TABLE `CheckListAluguel` ADD FOREIGN KEY (`id_cklAluguelEssencial`) REFERENCES `CheckListAluguelEssencial` (`id_cklAluguelEssencial`);

ALTER TABLE `CheckListAluguelDev` ADD FOREIGN KEY (`id_cklAluguelEssencialDev`) REFERENCES `CheckListAluguelEssencialDev` (`id_cklAluguelEssencialDev`);

ALTER TABLE `CheckListAluguelDev` ADD FOREIGN KEY (`id_cklAluguelOpcionalDev`) REFERENCES `CheckListAluguelOpcionaisDev` (`id_cklAluguelOpcionalDev`);

ALTER TABLE `CheckListAluguelDev` ADD FOREIGN KEY (`id_cklAluguelAuxiliarDev`) REFERENCES `CheckListAluguelAuxiliarDev` (`id_cklAluguelAuxiliarDev`);

ALTER TABLE `CheckListVeiculo` ADD FOREIGN KEY (`id_cklVeiculoOpcional`) REFERENCES `CheckListVeiculoOpcionais` (`id_cklVeiculoOpcional`);

ALTER TABLE `CheckListVeiculo` ADD FOREIGN KEY (`id_cklVeiculoAuxiliar`) REFERENCES `CheckListVeiculoAuxiliar` (`id_cklVeiculoAuxiliar`);

ALTER TABLE `CheckListVeiculo` ADD FOREIGN KEY (`id_cklVeiculoEssencial`) REFERENCES `CheckListVeiculoEssencial` (`id_cklVeiculoEssencial`);

ALTER TABLE `CheckListVeiculo` ADD FOREIGN KEY (`id_veiculo`) REFERENCES `Veiculos` (`id_veiculo`);

ALTER TABLE `CheckListAluguel` ADD FOREIGN KEY (`id_Aluguel`) REFERENCES `Alugueis` (`id_aluguel`);

ALTER TABLE `CheckListAluguelDev` ADD FOREIGN KEY (`id_Aluguel`) REFERENCES `Alugueis` (`id_aluguel`);

ALTER TABLE `AgendaVeiculos` ADD FOREIGN KEY (`id_veiculo`) REFERENCES `Veiculos` (`id_veiculo`);
