USE FeriasDB;

INSERT INTO Sexo (descricao)
VALUES
('Feminino'),
('Masculino'),
('Outro');

INSERT INTO NecessidadeEspecial (tipoNecessidade)
VALUES
('Criança de colo'),
('Deficiência Auditiva'),
('Deficiência Visual'),
('Gestante'),
('Mobilidade Reduzida'),
('Outro');

INSERT INTO tipoPontoTuristico (tipo)
VALUES
('Bar'),
('Cinema'),
('Estádio/Evento Esportivo'),
('Monumento'),
('Museu'),
('Parque/Natureza'),
('Restaurante'),
('Evento/Teatro/Palestra');

INSERT INTO TipoDespesa (tipoDespesa)
VALUES
('Alimentação/Bebida'),
('Aluguel de Carro'),
('Cultural/Ingressos'),
('Hospedagem'),
('Mobilidade'),
('Passagem');

INSERT INTO Cidade (nome, estado, pais)
VALUES
('Barcelona', null, 'Espanha'),
('Madrid', null, 'Espanha'),
('Paris', null, 'França'),
('Amstredã', 'Holanda do Norte', 'Holanda'),
('Lisboa', 'Estremadura', 'Portugal'),
('Porto', 'Porto', 'Portugal'),
('Fortaleza', 'Ceará', 'Brasil'),
('Jericoacoara', 'Ceará', 'Brasil'),
('Paracuru', 'Ceará', 'Brasil'),
('Rio de Janeiro', 'Rio de Janeiro', 'Brasil'),
('São Paulo', 'São Paulo', 'Brasil'),
('Belo Horizonte', 'Minas Gerais', 'Brasil');

INSERT INTO PontoTuristico (nome, horaAbertura, horaFechamento, precoEntrada, linkGoogleMaps, idadeMinima, Cidade_idCidade, tipoPontoTuristico_idtipoPontoTuristico)
VALUES
-- Paris 3
-- ('Da Giuseppe', '11:00', '22:00', 150.00, 'http://maps.google.com/giuseppe', 0, 3, 7);
('Torre Eiffel', '09:00', '19:00', 134.83, 'http://maps.google.com/eiffel', 0, 3, 4),
('Rio Sena Plate', '17:00', '22:00', 507.56, 'http://maps.google.com/senaplate', 0, 3, 7),
('Parque dos Príncipes', '09:00', '15:00', 76.40, 'http://maps.google.com/parqueprincipe', 0, 3, 3),
('Frog XVI', '11:00', '21:00', 100.00, 'http://maps.google.com/frogxvi', 0, 3, 7),
('Ópera da Bastilha', '19:00', '23:00', 300.00, 'http://maps.google.com/bastilha', 0, 3, 8),
('Museu do Louvre', '09:00', '21:00', 88.00, 'http://maps.google.com/louvre', 0, 3, 5),
('Zia Pub', '16:00', '23:59', 80.00, 'http://maps.google.com/zia', 18, 3, 1),
-- Barcelona 1
('Las Ramblas', '00:00', '23:59', 0.00, 'http://maps.google.com/lasramblas', 0, 1, 6),
('Praia Bogatell', '00:00', '23:59', 0.00, 'http://maps.google.com/bogatell', 0, 1, 6),
('Sagrada Família', '09:00', '18:00', 50.00, 'http://maps.google.com/sagradafamilia', 3, 1, 4),
('Museu Picasso', '10:00', '18:00', 55.00, 'http://maps.google.com/picasso', 0, 1, 5),
('Park Güell', '09:00', '22:00', 0.00, 'http://maps.google.com/parkguell', 0, 1, 6),
('Matica Taberna', '11:15', '23:59', 150.00, 'http://maps.google.com/mtaberna', 0, 1, 7),
-- Madrid 2
('Palácio Real', '09:00', '18:00', 0.00, 'http://maps.google.com/palaciomadrid', 3, 2, 5),
('Las Tapas', '12:00', '23:59', 88.00, 'http://maps.google.com/lastapas', 0, 2, 7),
-- Fortaleza 7
('Beira-Mar', '00:00', '23:59', 0.00, 'http://maps.google.com/beiramarfortaleza', 0, 7, 6),
('Coco Bambu', '11:00', '23:59', 200.00, 'http://maps.google.com/cocobambu', 0, 7, 7),
('Teatro José de Alencar', '16:00', '22:00', 30.00, 'http://maps.google.com/josedalencar', 3, 7, 8),
-- Paracuru 9
('Praia Bela', '00:00', '23:59', 0.00, 'http://maps.google.com/praiabela', 0, 9, 6),
('Barraca Principal', '09:00', '17:30', 120.00, 'http://maps.google.com/barracaprinc', 0, 9, 7),
('Kite Surf Champions', '08:00', '17:30', 0.00, 'http://maps.google.com/kiteparacuru', 0, 9, 3),
('Surf School', '08:00', '17:30', 50.00, 'http://maps.google.com/surfparacuru', 10, 9, 3),
('Comida da Pesca', '10:30', '16:30', 80.00, 'http://maps.google.com/pescafood', 0, 9, 7),
('Hotel Gastro Restro', '17:00', '23:00', 350.00, 'http://maps.google.com/gastrorestro', 0, 9, 7),
-- Jeri 8
('Lagoa Azul', '09:00', '16:00', 30.00, 'http://maps.google.com/lagoaazul', 0, 8, 6),
('Casa de Comida', '10:00', '16:00', 70.00, 'http://maps.google.com/casacomida', 0, 8, 7),
-- Sao Paulo 11
('Cold Play Concert', '20:00', '23:59', 990.00, 'http://maps.google.com/alianzparque', 16, 11, 8),
('Museu do Futebol', '08:00', '14:00', 0.00, 'http://maps.google.com/museufutebol', 0, 11, 5),
('Cão Véio', '11:00', '23:00', 140.00, 'http://maps.google.com/caoveio', 0, 11, 7),
('Rooftop', '18:00', '23:59', 0.00, 'http://maps.google.com/rooftopsp', 18, 11, 1),
('Ibirapuera', '08:00', '15:00', 0.00, 'http://maps.google.com/ibirapuera', 0, 11, 6),
('President', '12:00', '23:59', 300.00, 'http://maps.google.com/president', 0, 11, 7),
('Calçadão Urbanoide', '13:00', '23:59', 60.00, 'http://maps.google.com/calcadaourb', 16, 11, 1),
-- Rio de Janeiro 10
('Praia de Copacabana', '00:00', '23:59', 0.00, 'http://maps.google.com/copacabana', 0, 10, 6),
('Arpoador', '80:00', '19:00', 30.00, 'http://maps.google.com/arpoador', 3, 10, 6),
('Bar da Praia', '08:00', '22:00', 120.00, 'http://maps.google.com/bardapraia', 18, 10, 1),
('Pão de Açúcar', '08:00', '20:00', 50.00, 'http://maps.google.com/paodeacucar', 0, 10, 4),
('Cristo Redentor', '08:00', '20:00', 66.00, 'http://maps.google.com/cristoredentor', 0, 10, 4),
-- Belo Horizonte 12
('Padaria Central', '08:00', '20:00', 35.00, 'http://maps.google.com/padariacentral', 0, 12, 7),
('Mineirão', '10:00', '16:00', 50.00, 'http://maps.google.com/mineirao', 0, 12, 3),
('O Barreto Pub', '17:30', '23:59', 120.00, 'http://maps.google.com/obarreto', 18, 12, 1),
-- Amsterdã 4
('Queijos do Norte', '08:00', '23:59', 60.00, 'http://maps.google.com/queijosams', 0, 4, 7),
('Casa da Annie Frank', '07:30', '12:00', 100.00, 'http://maps.google.com/anniefrank', 6, 4, 5),
('Almoço da Mama', '10:30', '16:00', 140.00, 'http://maps.google.com/almocomama', 0, 4, 7),
('Vondelpark', '08:00', '16:00', 0.00, 'http://maps.google.com/vondelpark', 0, 4, 6),
('Adam Lookout', '08:00', '16:00', 70.00, 'http://maps.google.com/adamlookout', 6, 4, 4),
('Heineken Experience', '14:00', '22:00', 99.00, 'http://maps.google.com/heinekenexp', 14, 4, 5),
-- Porto 6
('Casa Perini', '10:00', '18:00', 80.00, 'http://maps.google.com/casaperini', 8, 6, 5),
('Catedral do Porto', '08:00', '18:00', 0.00, 'http://maps.google.com/catedralporto', 0, 6, 4),
('Peixe do Rio', '11:00', '22:00', 150.00, 'http://maps.google.com/peixerio', 0, 6, 7),
('Estádio do Porto', '15:00', '22:00', 150.00, 'http://maps.google.com/estadioporto', 3, 6, 3),
-- Lisboa 5
('Torre de Belém', '08:30', '15:00', 45.00, 'http://maps.google.com/torrebelem', 0, 5, 4);


INSERT INTO PontoTuristico_has_NecessidadeEspecial (PontoTuristico_idPontoTuristico, NecessidadeEspecial_idNecessidadeEspecial) 
VALUES
-- Da Giuseppe 1
(1, 1),
(1, 4),
(1, 5),
-- Torre Eiffel 2
(2, 1),
-- Rio Sena Plate 3
(3, 1),
(3, 4),
(3, 5),
-- Parque dos Principes 4
(4, 5),
-- Frog XVI 5
(5, 1),
(5, 4),
(5, 5),
-- Ópera da Bastilha 6
(6, 1),
(6, 4),
(6, 5),
-- Museu do Louvre 7
(7, 4),
(7, 5),
-- Las Ramblas 9
(9, 3),
-- Museu Picasso 12
(12, 1),
(12, 2),
(12, 3),
(12, 4),
(12, 5),
(12, 6),
-- Park Guell 13
(13, 5),
-- Matica Taberna 14
(14, 1),
(14, 4),
(14, 5),
-- Palacio Real 15
(15,2),
(15,3),
(15,5),
-- Las Tapas 16
(16, 1),
(16, 4),
(16, 5),
-- Beira-Mar 17
(17, 3),
(17, 5),
-- Coco Bambu 18
(18, 1),
(18, 4),
(18, 5),
-- Teatro Jose de Alencar 19
(19, 5),
-- Barraca Principal 21
(21, 1),
-- Hotel Gastro Restro 25
(25, 1),
(25, 4),
(25, 5),
-- Cold Play 28
(28, 5),
-- Museu do Futebol 29
(29, 3),
(29, 5),
-- Cao Veio 30
(30, 1),
(30, 4),
(30, 5),
-- President 33
(33, 1),
(33, 4),
(33, 5),
-- Cristo Redentor 39
(39, 5),
-- Almoço da Mama 45
(45, 1),
(45, 4),
(45, 5),
-- Vondelpark 46
(46, 3),
(46, 5),
-- Catedral do Porto 50
(50, 3),
(50, 5),
-- Estádio do Porto 52
(52, 5);

INSERT INTO Ferias (nomeFerias, dataInicio, dataFim)
VALUES
('Tour França/Espanha', '2022-07-14', '2022-07-21'),
('Praias do Ceará', '2022-08-03', '2022-08-07'),
('Sudeste do Brasil', '2021-02-02', '2021-02-08'),
('Holanda e Portugal', '2022-10-20', '2022-10-25');

INSERT INTO Ferias_has_Cidade (Ferias_idFerias, Cidade_idCidade)
VALUES
-- Paris 3, Barcelona 1 e Madrid 2
(1, 3),
(1, 1),
(1, 2),
-- Fortaleza 7, Paracuru 9 e Jeri 8
(2, 7),
(2, 9),
(2, 8),
-- Sao Paulo 11, Rio 10 e BH 12
(3, 11),
(3, 10),
(3, 12),
-- Amsterdã 4, Porto 6 e Lisboa 5
(4, 4),
(4, 6),
(4, 5);


INSERT INTO Despesa (PontoTuristico_idPontoTuristico, descricao, dataCompra, dataHoraEvento, bufferChegada, siteFornecedor, linkVoucher, valor, TipoDespesa_idTipoDespesa, Ferias_idFerias)
VALUES
-- Tour França/Espanha 1
(null, 'Passagem FOR-CDG', '2022-01-01', '2022-07-14 20:00:00', '2022-07-14 18:00:00', 'www.voegol.com', 'voegol.com/hxvgsh', 2000.00, 6, 1),
(null, 'Passe Metrô Paris', '2022-01-01', '2022-07-15 08:00:00', '2022-07-15 08:00:00', 'www.metroparis.com', 'metroparis.com/34245', 100.00, 5, 1),
(null, 'Hotel Ritz', '2022-01-01', '2022-07-15 14:00:00', '2022-07-15 14:00:00', 'www.ritz.com', 'ritz.com/asda', 3000.00, 4, 1),
(1, 'Almoço Da Giuseppe', '2022-01-01', '2022-07-15 15:00:00', '2022-07-15 15:00:00', null, null, 150.00, 1, 1),
(2, 'Ingresso Torre Eiffel', '2022-01-01', '2022-07-15 17:30:00', '2022-07-15 17:00:00', 'www.eiffel.com', 'eiffel.com/jjsksd', 134.83, 3, 1),
(3, 'Jantar no Barco', '2022-01-01', '2022-07-15 20:00:00', '2022-07-15 19:30:00', 'www.riosena.com', 'riosena.com/ihfdk', 507.56, 1, 1),
(4, 'Tour Parque dos Príncipes', '2022-01-01', '2022-07-16 09:00:00', '2022-07-16 08:30:00', 'www.psg.com', 'psg.com/ihfdk', 76.40, 3, 1),
(5, 'Almoço Frog XVI', '2022-01-01', '2022-07-16 12:00:00', '2022-07-16 11:45:00', null, null, 100.00, 1, 1),
(6, 'Ópera da Bastilha', '2022-01-01', '2022-07-16 20:00:00', '2022-07-16 19:30:00', 'www.opera.com', 'opera.com/ccss', 300.00, 3, 1),
(7, 'Museu do Louvre', '2022-01-01', '2022-07-17 09:00:00', '2022-07-17 08:30:00', 'www.louvre.com', 'louvre.com/llkjhg', 88.00, 3, 1),
(8, 'Zia Pub bar', '2022-01-01', '2022-07-17 20:00:00', '2022-07-17 20:00:00', null, null, 80.00, 1, 1),
(null, 'Passagem CDG-BCN', '2022-01-01', '2022-07-18 07:00:00', '2022-07-18 06:00:00', 'www.ryanair.com', 'ryanair.com/ldkdk', 500.00, 6, 1),
(null, 'Hertz', '2022-01-01', '2022-07-18 12:00:00', '2022-07-18 12:00:00', 'www.hertz.com', 'hertz.com/kkdjs', 500.00, 2, 1),
(9, 'Passeio Las Ramblas', '2022-01-01', '2022-07-18 12:30:00', '2022-07-18 12:30:00', null, null, 0.00, 3, 1),
(null, 'Hilton Barcelona', '2022-01-01', '2022-07-18 13:00:00', '2022-07-18 13:00:00', 'www.hilton.com', 'hilton.com/heydk', 1000.00, 4, 1),
(10, 'Passeio na Praia Bogatell', '2022-01-01', '2022-07-18 14:00:00', '2022-07-18 14:00:00', null, null, 0.00, 3, 1),
(11, 'Sagrada Familia', '2022-01-01', '2022-07-19 09:00:00', '2022-07-19 08:30:00', 'www.sfamilia.com', 'sfamilia/45678', 50.00, 3, 1),
(12, 'Museu do Picasso', '2022-01-01', '2022-07-19 14:00:00', '2022-07-19 13:45:00', 'www.picasso.com', 'picasso/ldsjhr', 55.00, 3, 1),
(13, 'Park Güell', '2022-01-01', '2022-07-19 16:00:00', '2022-07-19 16:00:00', null, null, 0.00, 3, 1),
(14, 'Jantar Matica Taberna', '2022-01-01', '2022-07-19 20:00:00', '2022-07-19 19:30:00', null, null, 150.00, 1, 1),
(null, 'Combustível para Madrid', '2022-01-01', '2022-07-20 08:00:00', '2022-07-20 08:00:00', null, null, 300.00, 5, 1),
(15, 'Palácio Real', '2022-01-01', '2022-07-20 10:00:00', '2022-07-20 09:00:00', 'royalpalace.com', 'royalpalace.com/45678', 53.00, 3, 1),
(null, 'Hospedagem La Cabana', '2022-01-01', '2022-07-20 13:00:00', '2022-07-20 13:00:00', 'lacabana.com', 'lacabana.com/3434', 388.00, 4, 1),
(16, 'Jantar Las Tapas', '2022-01-01', '2022-07-20 19:30:00', '2022-07-20 19:10:00', null, null, 88.00, 1, 1),
(null, 'Passagem MAD-FOR', '2022-01-01', '2022-07-21 09:00:00', '2022-07-21 07:00:00', 'latam.com', 'latam.com/45644', 1750.00, 6, 1),
-- Praias do Ceará 2
(null, 'Localiza Carro', '2021-10-25', '2022-08-03 08:00:00', '2022-08-03 07:30:00', 'localiza.com', 'localiza.com/2282', 1500.00, 2, 2),
(17, 'Passeio na Beira-Mar', '2021-10-25', '2022-08-03 09:00:00', '2022-08-03 09:00:00', null, null, 0.00, 3, 2),
(18, 'Almoço Coco Bambu', '2021-10-25', '2022-08-03 12:00:00', '2022-08-03 11:50:00', null, null, 200.00, 1, 2),
(19, 'Teatro José de Alencar', '2021-10-25', '2022-08-03 18:00:00', '2022-08-03 17:30:00', null, null, 30.00, 3, 2),
(null, 'Combustível Paracuru', '2021-10-25', '2022-08-04 08:00:00', '2022-08-04 08:00:00', null, null, 150.00, 5, 2),
(null, 'Hotel da Praia', '2021-10-25', '2022-08-04 12:00:00', '2022-08-04 12:00:00', 'hotel.com', 'hotel.com/jjshjd', 300.00, 4, 2),
(20, 'Passeio na Praia', '2021-10-25', '2022-08-04 13:00:00', '2022-08-04 13:00:00', null, null, 0.00, 3, 2),
(21, 'Almoço na Barraca', '2021-10-25', '2022-08-04 14:00:00', '2022-08-04 14:00:00', null, null, 120.00, 1, 2),
(22, 'Campeonato de Kite Surf', '2021-10-25', '2022-08-04 15:00:00', '2022-08-04 15:00:00', null, null, 0.00, 3, 2),
(23, 'Aula de Surf', '2021-10-25', '2022-08-05 09:00:00', '2022-08-05 08:30:00', null, null, 50.00, 3, 2),
(24, 'Almoço Pescaria', '2021-10-25', '2022-08-05 12:00:00', '2022-08-05 12:00:00', null, null, 80.00, 1, 2),
(null, 'Combustível para Jeri', '2021-10-25', '2022-08-05 18:00:00', '2022-08-05 18:00:00', null, null, 150.00, 5, 2),
(null, 'Hospedagem Jeri', '2021-10-25', '2022-08-05 20:00:00', '2022-08-05 20:00:00', 'essenza.com', 'essenza.com/fgyunf', 2000.00, 4, 2),
(25, 'Jantar no Hotel', '2021-10-25', '2022-08-05 20:30:00', '2022-08-05 20:15:00', null, null, 350.00, 1, 2),
(null, 'Passeio de Buggy', '2021-10-25', '2022-08-06 09:30:00', '2022-08-06 09:00:00', null, null, 100.00, 3, 2),
(26, 'Lagoa Azul', '2021-10-25', '2022-08-06 10:00:00', '2022-08-06 10:00:00', null, null, 30.00, 3, 2),
(27, 'Almoço na Casa da Comida', '2021-10-25', '2022-08-06 14:00:00', '2022-08-06 14:00:00', null, null, 70.00, 1, 2),
(null, 'Combustível para Fortaleza', '2021-10-25', '2022-08-07 09:00:00', '2022-08-07 09:00:00', null, null, 300.00, 5, 2),
-- Sudeste do Brasil 3
(null, 'Passagem FOR-GRU', '2020-11-03', '2021-02-02 08:00:00', '2021-02-02 07:00:00', 'voeazul.com', 'voeazul.com/lishjk', 880.00, 6, 3),
(null, 'Passe de Metrô 2 dias', '2020-11-03', '2021-02-02 11:00:00', '2021-02-02 11:00:00', 'metrosp.com', 'metrosp.com/hhdgs', 100.00, 5, 3),
(null, 'Hotel Pinheiros', '2020-11-03', '2021-02-02 14:00:00', '2021-02-02 14:00:00', 'pinhotel.com', 'pinhotel.com/0039', 450.00, 4, 3),
(28, 'Show Cold Play', '2020-11-03', '2021-02-02 20:00:00', '2021-02-02 18:30:00', 'ingresso.com', 'ingresso.com/kkshd', 990.00, 3, 3),
(29, 'Museu do Futebol', '2020-11-03', '2021-02-03 08:00:00', '2021-02-03 08:00:00', null, null, 0.00, 3, 3),
(30, 'Almoço Cão Véio', '2020-11-03', '2021-02-03 12:00:00', '2021-02-03 11:30:00', null, null, 140.00, 1, 3),
(31, 'Rooftop SP', '2020-11-03', '2021-02-03 20:00:00', '2021-02-03 19:45:00', null, null, 0.00, 1, 3),
(32, 'Ibirapuera', '2020-11-03', '2021-02-04 10:00:00', '2021-02-04 10:00:00', null, null, 0.00, 3, 3),
(33, 'Almoço President', '2020-11-03', '2021-02-04 13:30:00', '2021-02-04 13:00:00', null, null, 300.00, 1, 3),
(34, 'Calçadão Urbanoide', '2020-11-03', '2021-02-04 19:00:00', '2021-02-04 19:00:00', null, null, 60.00, 1, 3),
(null, 'Passagem GRU-SDO', '2020-11-03', '2021-02-05 10:00:00', '2021-02-05 09:00:00', 'voegol.com', 'voegol.com/567skj', 200.00, 6, 3),
(null, 'Hospedagem Copacabana', '2020-11-03', '2021-02-05 14:00:00', '2021-02-05 13:30:00', 'copahotel.com', 'copahotel.com/poiued', 320.00, 4, 3),
(36, 'Por do Sol no Arpoador', '2020-11-03', '2021-02-05 17:00:00', '2021-02-05 16:30:00', null, null, 30.00, 3, 3),
(37, 'Jantar no Bar da Praia', '2020-11-03', '2021-02-05 19:30:00', '2021-02-05 19:30:00', null, null, 120.00, 1, 3),
(38, 'Passeio Pão de Açúcar', '2020-11-03', '2021-02-06 09:00:00', '2021-02-06 08:30:00', null, null, 50.00, 3, 3),
(39, 'Visita Cristo Redentor', '2020-11-03', '2021-02-06 12:30:00', '2021-02-06 12:00:00', null, null, 66.00, 3, 3),
(null, 'Passagem SDO-CNF', '2020-11-03', '2021-02-06 18:00:00', '2021-02-06 17:00:00', 'voegol.com', 'voegol.com/kkdjhs', 400.00, 6, 3),
(null, 'Traslado Aeroporto Hotel', '2020-11-03', '2021-02-06 20:40:00', '2021-02-06 20:30:00', null, null, 50.00, 5, 3),
(null, 'Hotel Caipira Hospedagem BH', '2020-11-03', '2021-02-06 21:00:00', '2021-02-06 21:00:00', null, null, 300.00, 4, 3),
(40, 'Café na Padaria Central', '2020-11-03', '2021-02-07 08:00:00', '2021-02-07 08:00:00', null, null, 35.00, 1, 3),
(41, 'Tour no Mineirão', '2020-11-03', '2021-02-07 12:00:00', '2021-02-07 11:45:00', null, null, 50.00, 3, 3),
(42, 'Noite no Barreto Pub', '2020-11-03', '2021-02-07 20:00:00', '2021-02-07 20:00:00', null, null, 120.00, 1, 3),
(null, 'Passagem CNF-FOR', '2020-11-03', '2021-02-08 10:00:00', '2021-02-08 09:00:00', 'voegol.com', 'voegol.com/rtyuis', 980.00, 6, 3),
-- Holanda e Portugal 4
(null, 'Passagem FOR-AMS', '2022-05-05', '2022-10-20 08:00:00', '2022-10-20 06:00:00', 'klm.com', 'klm.com/uusy', 2500.00, 6, 4),
(null, 'Passe metrô 4 dias', '2022-05-05', '2022-10-20 16:00:00', '2022-10-20 16:00:00', null, null, 250.00, 5, 4),
(null, 'Hospedagem Amsterdã', '2022-05-05', '2022-10-20 17:00:00', '2022-10-20 17:00:00', 'booking.com', 'bookin.com/77493', 900.00, 4, 4),
(43, 'Jantar no Queijos do Norte', '2022-05-05', '2022-10-20 20:00:00', '2022-10-20 19:00:00', null, null, 60.00, 1, 4),
(44, 'Visita à Casa da Annie Frank', '2022-05-05', '2022-10-21 08:00:00', '2022-10-21 07:00:00', null, null, 100.00, 3, 4),
(45, 'Almoço na Mama', '2022-05-05', '2022-10-21 11:00:00', '2022-10-21 10:45:00', null, null, 140.00, 1, 4),
(46, 'Vondelpark', '2022-05-05', '2022-10-21 13:00:00', '2022-10-21 13:00:00', null, null, 0.00, 3, 4),
(47, 'Adam Lookout', '2022-05-05', '2022-10-22 10:00:00', '2022-10-22 09:30:00', null, null, 70.00, 3, 4),
(null, 'Transporte Adam - Heineken', '2022-05-05', '2022-10-22 13:30:00', '2022-10-22 13:00:00', null, null, 40.00, 5, 4),
(48, 'Heineken Experience', '2022-05-05', '2022-10-22 19:00:00', '2022-10-22 18:30:00', 'heineken.com', 'heineken.com/567', 99.00, 3, 4),
(null, 'Passagem AMS-POR', '2022-05-05', '2022-10-23 09:00:00', '2022-10-23 08:00:00', 'ryanair.com', 'ryanair.com/dhjs', 550.00, 6, 4),
(null, 'Aluguel de Bike', '2022-05-05', '2022-10-23 11:00:00', '2022-10-23 11:00:00', null, null, 30.00, 5, 4),
(null, 'Hospedagem no Porto Inn', '2022-05-05', '2022-10-23 15:00:00', '2022-10-23 15:00:00', 'portoinn.com', 'portoinn.com/56sd', 400.00, 4, 4),
(49, 'Vinícula Casa Perini', '2022-05-05', '2022-10-23 16:00:00', '2022-10-23 15:50:00', null, null, 80.00, 3, 4),
(50, 'Visita à Catedral do Porto', '2022-05-05', '2022-10-24 09:00:00', '2022-10-24 09:00:00', null, null, 0.00, 3, 4),
(51, 'Almoço no Peixe do Rio', '2022-05-05', '2022-10-24 12:45:00', '2022-10-24 12:30:00', null, null, 150.00, 1, 4),
(52, 'Jogo de Futebol time do Porto', '2022-05-05', '2022-10-24 16:00:00', '2022-10-24 15:30:00', null, null, 150.00, 3, 4),
(null, 'Passagem de trem Porto -> Lisboa', '2022-05-05', '2022-10-24 21:00:00', '2022-10-24 20:40:00', 'trem.pt', 'trem.pt/663', 250.00, 6, 4),
(null, 'Hospedagem em O Explorador', '2022-05-05', '2022-10-24 23:30:00', '2022-10-24 23:30:00', 'oexplorador.com.pt', 'oexplorador.com.pt/hdss', 650.00, 4, 4),
(53, 'Torre de Belém', '2022-05-05', '2022-10-25 09:00:00', '2022-10-25 09:00:00', null, null, 45.00, 3, 4),
(null, 'Tour de Ônibus', '2022-05-05', '2022-10-25 10:30:00', '2022-10-25 10:15:00', null, null, 200.00, 3, 4),
(null, 'Passagem LIS-FOR', '2022-05-05', '2022-10-25 19:00:00', '2022-10-25 17:00:00', null, null, 1989.00, 6, 4);

INSERT INTO EmailFornecedor (Despesa_idDespesa, email)
VALUES
(92, 'contato@ritz.com'),
(92, 'hotel@ritz.com'),
(124, 'theo@surfclass.com.br'),
(129, 'buggy_jeri@gmail.com');

INSERT INTO TelefoneFornecedor (Despesa_idDespesa, telefone)
VALUES
(92, '+6299837409082'),
(92, '+6299335568093'),
(124, '+558533527391'),
(129, '+558389037460');

-- SET SQL_SAFE_UPDATES = 1;

INSERT INTO Pessoa (nomePessoa, dataNascimento, rua, numeroRua, cidade, UF, CEP, Sexo_idSexo)
VALUES
('Miguel Almeida', '1965-05-13', 'Rua Madeira', '15', 'Fortaleza', 'CE', '60123334', 2),
('Alice Almeida', '1969-02-04', 'Rua Madeira', '15', 'Fortaleza', 'CE', '60123334', 1),
('Arthur Mendes', '1977-10-10', 'Av Jose Carlos', '998', 'Sao Paulo', 'SP', '65444000', 2),
('Maria Medeiros', '1999-02-28', 'Av Jose Carlos', '998', 'Sao Paulo', 'SP', '65444000', 1),
('Laura Medeiros', '2010-12-21', 'Av Jose Carlos', '998', 'Sao Paulo', 'SP', '65444000', 1),
('Heitor Silva', '1985-07-12', 'Rua 14', '23 B', 'Fortaleza', 'CE', '60112334', 2),
('Laura Silva', '1983-04-12', 'Rua 14', '23 B', 'Fortaleza', 'CE', '60112334', 1),
('Gabriel Pinheiro', '1996-01-14', 'Rua 14', '23 B', 'Fortaleza', 'CE', '60112334', 1),
('Bernardo Filho', '1949-11-23', 'Rua da Curva', '3', 'Fortaleza', 'CE', '60120160', 2),
('Patrícia Ferreira', '1955-04-04',  'Rua da Curva', '3', 'Fortaleza', 'CE', '60120160', 1),
('João Miguel Lopes', '1989-08-21', 'Rua do Trapézio', '303', 'Salvador', 'BA', '67321321', 2),
('Paulo Lopes', '1985-03-12', 'Rua do Trapézio', '303', 'Salvador', 'BA', '67321321', 2),
('Pedro Alcantra', '1979-09-02', 'Av Principal', '500', 'Salvador', 'BD', '67434565', 2),
('Júlia Alcantra', '1979-02-11', 'Av Principal', '500', 'Salvador', 'BD', '67434565', 1),
('Márcia Alcantra', '2018-12-12', 'Av Principal', '500', 'Salvador', 'BD', '67434565', 1);

INSERT INTO Pessoa_has_NecessidadeEspecial (Pessoa_idPessoa, NecessidadeEspecial_idNecessidadeEspecial)
VALUES
(29, 4),
(29, 1),
(24, 5);

INSERT INTO Telefone (Pessoa_idPessoa, numeroTelefone)
VALUES
(16, '8532342714'),
(17, '8532342714'),
(17, '8599991234'),
(18, '85987142233'),
(19, '85987142233'),
(20, '85987142233'),
(28, '83999272211');

select idPessoa, nomePessoa, dataNascimento from Pessoa;

INSERT INTO Email (Pessoa_idPessoa, email)
VALUES
(16, 'miguel.almeida@gmail.com'),
(17, 'alice.almeida@gmail.com'),
(18, 'arthur.medeiros@hotmail.com'),
(18, 'arthur.medeiros@gmail.com'),
(18, 'arthur.medeiros@yahoo.com'),
(22, 'laura.silva@email.com'),
(26, 'jmiguel12@gmail.com');

INSERT INTO Pessoa_has_Ferias (Pessoa_idPessoa, Ferias_idFerias)
VALUES
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(24, 1),
(25, 1),
(26, 1),
(28, 1),
(29, 1),
(30, 1),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(16, 4),
(17, 4),
(28, 4),
(29, 4),
(30, 4),
(24, 4),
(25, 4);
