Create database msc;
use msc;
 
CREATE TABLE TB_BANDAS_E_CANTORES(
id_bc int primary key auto_increment,
nm_nome varchar(45)
);
 
CREATE TABLE TB_ALBUNS(
id_album int primary key auto_increment,
nm_nome varchar(45),
dt_lancamento date,
fk_id_bc int,
genero_album varchar(45),
foreign key (fk_id_bc)references TB_BANDAS_E_CANTORES (id_bc)
);
 
CREATE TABLE TB_MUSICAS(
id_musica int primary key auto_increment,
nm_musicas varchar(45),
fk_id_album int,
foreign key (fk_id_album) references TB_ALBUNS (id_album)
);
 
INSERT INTO TB_BANDAS_E_CANTORES
VALUES (3,'Djonga'), (4,'Costa Gold'), (1,'Alee'), (2,'Travis Scott'),(10,'Bk'), (11,'Matuê'),(13,'Artic Monkeys'), (6,'Sabotage'), (5,'Racionais'), (8,'Pablo do Arrocha'), (9,'Brandao085'), (7,'Natiruts'), (12,'Eazy-E'), (15,'Notorious Big'), (14,'2PAC');
 
INSERT INTO TB_ALBUNS (id_album, nm_nome, dt_lancamento, genero_album, fk_id_bc) VALUES
(null, 'DIAS ANTES DO CAOS', '2024-02-01', 'Rap/Trap', 1),
(null, 'CAOS', '2024-09-01', 'Rap/Trap', 1),
(null, 'CAOS DLX', '2025-07-24', 'Rap/Trap/R&B/Afrobeats', 1),
(null, 'Rodeo', '2015-09-04', 'Hip Hop/Trap', 2),
(null, 'Birds in the Trap Sing McKnight', '2016-09-02', 'Hip Hop/Trap', 2),
(null, 'Astroworld', '2018-08-03', 'Hip Hop/Trap', 2),
(null, 'Utopia', '2023-07-28', 'Hip Hop/Trap', 2),

 
(null, 'Heresia', '2017-03-17', 'Rap', 3),
(null, 'O Menino Que Queria Ser Deus', '2018-03-13', 'Rap', 3),
(null, 'Ladrão', '2019-03-13', 'Rap', 3),
(null, 'Histórias da Minha Área', '2020-03-13', 'Rap', 3),
(null, 'Nu', '2021-03-13', 'Rap', 3),
(null, 'O Dono do Lugar', '2022-03-13', 'Rap', 3),

 
(null, '155', '2013-01-01', 'Rap', 4),
(null, 'Epiphany', '2016-01-01', 'Rap', 4),
(null, 'Auge', '2018-08-31', 'Rap', 4),
(null, 'Sobrevivendo no Inferno', '1997-12-20', 'Rap', 5),
(null, 'Nada Como um Dia Após o Outro Dia', '2002-10-27', 'Rap', 5),
(null, 'Cores & Valores', '2014-01-01', 'Rap', 5),

 
(null, 'Rap é Compromisso!', '2001-10-01', 'Rap', 6),
(null, 'Nativus', '1997-01-01', 'Reggae', 7),
(null, 'Qu4tro', '2002-01-01', 'Reggae', 7),
(null, 'Índigo Cristal', '2017-08-04', 'Reggae', 7),

 
(null, 'É Só Dizer Que Sim', '2016-01-01', 'Arrocha', 8),
(null, 'Desculpe Aí', '2018-01-01', 'Arrocha', 8),

 
(null, 'Doce Veneno', '2022-01-01', 'Trap', 9),
 
(null, 'Castelos & Ruínas', '2016-01-01', 'Rap', 10),
(null, 'Gigantes', '2018-01-01', 'Rap', 10),
(null, 'ICARUS', '2021-01-01', 'Rap', 10),
(null, 'Noviembre', '2022-01-01', 'Rap', 10),
(null, 'Máquina do Tempo', '2020-09-10', 'Trap', 11),
 
 
(null, 'Eazy-Duz-It', '1988-09-13', 'Gangsta Rap', 12),
 
(null, 'Whatever People Say I Am, That''s What I''m Not', '2006-01-23', 'Indie Rock', 13),
(null, 'Favourite Worst Nightmare', '2007-04-23', 'Indie Rock', 13),
(null, 'AM', '2013-09-09', 'Indie Rock', 13),
(null, 'The Car', '2022-10-21', 'Indie Rock', 13),

 
(null, '2Pacalypse Now', '1991-11-12', 'Rap', 14),
(null, 'Me Against the World', '1995-03-14', 'Rap', 14),
(null, 'All Eyez on Me', '1996-02-13', 'Rap', 14),
(null, 'The Don Killuminati: The 7 Day Theory', '1996-11-05', 'Rap', 14),
 
(null, 'Ready to Die', '1994-09-13', 'Rap', 15),
(null, 'Life After Death', '1997-03-25', 'Rap', 15);

INSERT INTO TB_MUSICAS (id_musica, nm_musicas, fk_id_album) VALUES

(NULL, '11:11 (ft. MC Cabelinho)', 1),
(NULL, 'SÓ PRA LEMBRAR (ft. Luccas Carlos)', 1),
(NULL, 'O JOGO VIROU (ft. Baco Exu do Blues)', 1),
(NULL, 'DIAS ANTES DO CAOS', 1),
(NULL, 'EASY', 1),
(NULL, 'CAOS', 2),
(NULL, 'DEPOIS DE VOCÊ (ft. Don L)', 2),
(NULL, 'JUNTOS DE NOVO', 2),
(NULL, 'ESQUECI DE VOCÊ', 2),
(NULL, 'MUITO OBRIGADO', 2),
(NULL, 'Cinderela', 3),
(NULL, 'Amor Platônico', 3),
(NULL, 'A Luta (Acústico)', 3),
(NULL, 'Dias Antes Do Caos (Acústico)', 3),
(NULL, 'O Jogo Virou (Acústico)', 3),
 

(NULL, 'Pornography', 4),
(NULL, 'Oh My Dis Side (feat. Quavo)', 4),
(NULL, '3500 (feat. Future & 2 Chainz)', 4),
(NULL, '90210', 4),
(NULL, 'Antidote', 4),
(NULL, 'Goosebumps (feat. Kendrick Lamar)', 5),
(NULL, 'Beibs in the Trap (feat. NAV)', 5),
(NULL, 'Through the Late Night ', 5),
(NULL, 'Way Back', 5),
(NULL, 'Coordinate', 5),
(NULL, 'SICKO MODE (feat. Drake)', 6),
(NULL, 'Stargazing', 6),
(NULL, 'STOP TRYING TO BE GOD', 6),
(NULL, 'Carousel (feat. Frank Ocean)', 6),
(NULL, 'NO BYSTANDERS', 6),
(NULL, 'HYAENA', 7),
(NULL, 'FE!N (feat. Playboi Carti)', 7),
(NULL, 'MY EYES', 7),
(NULL, 'I KNOW ?', 7),
(NULL, 'MELTDOWN (feat. Drake)', 7),

(NULL, 'Heresia', 8),
(NULL, 'Hat Trick', 8),
(NULL, 'O Sol Está Brilhando', 8),
(NULL, 'Leal', 8),
(NULL, 'Esquimó', 8),
(NULL, 'O Menino Que Queria Ser Deus', 9),
(NULL, 'Solto', 9),
(NULL, 'Deus da Guerra', 9),
(NULL, 'Vozes', 9),
(NULL, 'Efeito Borboleta', 9),
(NULL, 'Ladrão', 10),
(NULL, 'Tipo', 10),
(NULL, 'Não Seria Nada', 10),
(NULL, 'Hat Trick (Acústico)', 10),
(NULL, 'Leal (Acústico)', 10),
(NULL, 'Histórias da Minha Área', 11),
(NULL, 'O Mundo É Nosso', 11),
(NULL, 'Falcão', 11),
(NULL, 'Pipa', 11),
(NULL, 'SÓ QUER UM TRAP', 11),
(NULL, 'NU', 12),
(NULL, 'Pecado', 12),
(NULL, 'Deus e o Diabo na Terra do Sol', 12),
(NULL, 'A Última Vez', 12),
(NULL, 'A Voz do Silêncio', 12),
(NULL, 'O Dono do Lugar', 13),
(NULL, 'Sessão do Descarrego', 13),
(NULL, 'Penhasco', 13),
(NULL, 'O Sonho', 13),
(NULL, 'O que você conhece', 13),
 

(NULL, '155', 14),
(NULL, 'A Goma', 14),
(NULL, 'Sonhador', 14),
(NULL, 'Meu Bem', 14),
(NULL, 'Luz', 14),
(NULL, 'Epiphany', 15),
(NULL, 'Ninguém Entende', 15),
(NULL, 'Eu Sou', 15),
(NULL, 'Sensacional', 15),
(NULL, 'Missão', 15),
(NULL, 'Auge', 16),
(NULL, 'Doce Veneno', 16),
(NULL, 'Sexy de Ouro', 16),
(NULL, 'Eu Mudei', 16),
(NULL, 'Ainda To Vivo', 16),
 

(NULL, 'Jorge da Capadócia', 17),
(NULL, 'Mágico de Oz', 17),
(NULL, 'Fim de Semana no Parque', 17),
(NULL, 'Sobrevivendo no Inferno', 17),
(NULL, 'Diário de um Detento', 17),
(NULL, 'Jesus Chorou', 18),
(NULL, 'A Vítima', 18),
(NULL, 'Vida Loka I', 18),
(NULL, 'Vida Loka II', 18),
(NULL, 'O Calibre', 18),
(NULL, 'Cores & Valores', 19),
(NULL, 'A Praça', 19),
(NULL, 'O Peso da Canção', 19),
(NULL, 'O Preço da Cana', 19),
(NULL, 'Um Brinde ao Morro', 19),
 

(NULL, 'Rap é Compromisso!', 20),
(NULL, 'Um Bom Lugar', 20),
(NULL, 'Respeito É Lei', 20),
(NULL, 'Cantando Pro Morro', 20),
(NULL, 'No Brooklin', 20),
 

(NULL, 'Natiruts Reggae Power', 21),
(NULL, 'Liberdade pra Dentro da Cabeça', 21),
(NULL, 'Meu Reggae É Roots', 21),
(NULL, 'Presente de um Beija-Flor', 21),
(NULL, 'O Carcará e a Rosa', 21),
(NULL, 'Qu4tro', 22),
(NULL, 'Beija-Flor', 22),
(NULL, 'Andei Só', 22),
(NULL, 'Desenho de Deus', 22),
(NULL, 'Au de Cabeça', 22),
(NULL, 'Indigo Cristal', 23),
(NULL, 'Povo do Amor', 23),
(NULL, 'Me Namora', 23),
(NULL, 'Serei pra Sempre', 23),
(NULL, 'Não Vá', 23),
 

(NULL, 'É Só Dizer Que Sim', 24),
(NULL, 'Tá Fazendo Falta', 24),
(NULL, 'Quase Me Perdi', 24),
(NULL, 'Pode Chorar', 24),
(NULL, 'Tudo Certo', 24),
(NULL, 'Desculpe Aí', 25),
(NULL, 'Nao Demore', 25),
(NULL, 'Desapeguei', 25),
(NULL, 'Um Novo Dia', 25),
(NULL, 'Vou Te Fazer Feliz', 25),
 

(NULL, 'Doce Veneno', 26),
(NULL, 'Cura', 26),
(NULL, 'Não Dói Mais', 26),
(NULL, 'Pra Sempre', 26),
(NULL, 'Noite de Sol', 26),
 

(NULL, 'Castelos & Ruínas', 27),
(NULL, 'Coração de Gelo', 27),
(NULL, 'Vivos', 27),
(NULL, 'Universo', 27),
(NULL, 'Amores, Vícios e Ilusões', 27),
(NULL, 'Gigantes', 28),
(NULL, 'Louco e Sóbrio', 28),
(NULL, 'Amores, Vícios e Ilusões (Remix)', 28),
(NULL, 'Vivos (Remix)', 28),
(NULL, 'Se o Mundo Fosse Meu', 28),
(NULL, 'ICARUS', 29),
(NULL, 'Sigo na Batalha', 29),
(NULL, 'Mais Um Dia', 29),
(NULL, 'Duvido', 29),
(NULL, 'Não Me Lembro de Te Ver', 29),
(NULL, 'Noviembre', 30),
(NULL, 'Luz', 30),
(NULL, 'Sem Limites', 30),
(NULL, 'Pode Me Ligar', 30),
(NULL, 'O Poder', 30),
 

(NULL, 'Máquina do Tempo', 31),
(NULL, '777-666', 31),
(NULL, 'Kenny G', 31),
(NULL, 'É Sal', 31),
(NULL, 'Antes', 31),


(NULL, 'Eazy-Duz-It', 32),
(NULL, 'We Want Eazy (feat. Dr. Dre)', 32),
(NULL, 'Radio', 32),
(NULL, 'Boyz-n-the-Hood', 32),
(NULL, 'Still Talkin''', 32),
 

(NULL, 'I Bet You Look Good on the Dancefloor', 33),
(NULL, 'The View from the Afternoon', 33),
(NULL, 'When the Sun Goes Down', 33),
(NULL, 'Mardy Bum', 33),
(NULL, 'Fake Tales of San Francisco', 33),
(NULL, 'Brianstorm', 34),
(NULL, 'Fluorescent Adolescent', 34),
(NULL, 'Teddy Picker', 34),
(NULL, 'Do Me a Favour', 34),
(NULL, '505', 34),
(NULL, 'Do I Wanna Know?', 35),
(NULL, 'R U Mine?', 35),
(NULL, 'Why''d You Only Call Me When You''re High?', 35),
(NULL, 'Arabella', 35),
(NULL, 'I Wanna Be Yours', 35),
(NULL, 'There''d Better Be A Mirrorball', 36),
(NULL, 'Body Paint', 36),
(NULL, 'I Ain''t Quite Where I Think I Am', 36),
(NULL, 'The Car', 36),
(NULL, 'Mr Schwartz', 36),
 

(NULL, 'Brenda''s Got a Baby', 37),
(NULL, 'Trapped', 37),
(NULL, 'Part Time Mutha', 37),
(NULL, 'I Don''t Give a Fuck', 37),
(NULL, 'Violent', 37),
(NULL, 'Me Against the World', 38),
(NULL, 'So Many Tears', 38),
(NULL, 'Dear Mama', 38),
(NULL, 'Temptations', 38),
(NULL, 'Lord Knows', 38),
(NULL, 'All Eyez on Me', 39),
(NULL, 'I Ain''t Mad at Cha', 39),
(NULL, 'California Love ', 39),
(NULL, '2 of Amerikaz Most Wanted ', 39),
(NULL, 'Ambitionz Az a Ridah', 39),
(NULL, 'The Don Killuminati: The 7 Day Theory', 40),
(NULL, 'Toss It Up', 40),
(NULL, 'To Live & Die in L.A.', 40),
(NULL, 'Hail Mary', 40),
(NULL, 'Me and My Girlfriend', 40),
 

(NULL, 'Ready to Die', 41),
(NULL, 'Juicy', 41),
(NULL, 'Big Poppa', 41),
(NULL, 'Gimme the Loot', 41),
(NULL, 'Unbelievable', 41),
(NULL, 'Hypnotize', 42),
(NULL, 'Mo Money Mo Problems ', 42),
(NULL, 'Ten Crack Commandments', 42),
(NULL, 'Niggas Bleed', 42),
(NULL, 'Notorious Thugs', 42);