BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "habilidades" (
	"id"	INTEGER NOT NULL,
	"nome"	TEXT NOT NULL,
	"nivel"	INTEGER NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "info_pessoal" (
	"id"	INTEGER NOT NULL,
	"nome"	TEXT NOT NULL,
	"idade"	NUMERIC NOT NULL,
	"email"	TEXT NOT NULL,
	"endereco"	TEXT NOT NULL,
	"tel"	NUMERIC NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "formacao" (
	"id"	INTEGER NOT NULL,
	"diploma"	TEXT NOT NULL,
	"curso"	TEXT NOT NULL,
	"intituicao"	TEXT NOT NULL,
	"ano_inicio"	INTEGER NOT NULL,
	"ano_fim"	INTEGER NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "realizacoe" (
	"id"	INTEGER NOT NULL,
	"nome"	TEXT NOT NULL,
	"ano"	INTEGER NOT NULL,
	"desc"	TEXT NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "curso" (
	"id"	INTEGER NOT NULL,
	"nome_curso"	TEXT NOT NULL,
	"organizacao"	TEXT NOT NULL,
	"ano"	INTEGER NOT NULL,
	"competencia"	TEXT NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO "habilidades" VALUES (1,'Logica',4);
INSERT INTO "habilidades" VALUES (2,'Liderança',3);
INSERT INTO "habilidades" VALUES (3,'Programação',3);
INSERT INTO "habilidades" VALUES (4,'Inglês',3);
INSERT INTO "info_pessoal" VALUES (1,'Kaleb Carvalho',17,'KiscStudies@gmail.com','Rua M.M.D.C, 80 - Butantã, São Paulo - SP, 05510-021',21977446030);
INSERT INTO "formacao" VALUES (1,'Graduação','Engenharia de Software','Inteli',2023,2026);
INSERT INTO "formacao" VALUES (2,'Ensino Médio','Ensino Médio','Polo Educacional Sesc',2020,2022);
INSERT INTO "realizacoe" VALUES (1,'Projeto no Inteli',2023,'O projeto do primeiro modulo no inteli foi uma gamificação de um treinamento sobre colaboração em parceria com a Cia de Talentos');
INSERT INTO "curso" VALUES (1,'PCAP: Programming Essentials in Python course','Cisco Networking Academy',2023,'Python e programação');
INSERT INTO "curso" VALUES (2,'IT Essentials','Cisco Networking Academy',2022,'Manutenção de computadores');
COMMIT;
