CREATE DATABASE JOGORPG
GO

USE JOGORPG
GO

CREATE TABLE Usuarios
(
	IdUsuario INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(125) NOT NULL UNIQUE,
	Senha VARCHAR(125) NOT NULL,
	Email VARCHAR(125) NOT NULL UNIQUE
)
GO

CREATE TABLE Personagens
(
	IdPersonagem INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(125) NOT NULL,
	UsuarioId INT FOREIGN KEY REFERENCES Usuarios(IdUsuario) 
)
GO

CREATE TABLE Classes
(
	IdClasse INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(125) NOT NULL,
	PersonagemId INT FOREIGN KEY REFERENCES Personagens(IdPersonagem) 
)
GO

CREATE TABLE Habilidades
(
	IdHabilidade INT PRIMARY KEY IDENTITY,
	Habilide1 VARCHAR(125) NOT NULL,
	Habilidade2 VARCHAR(125),
	ClasseId INT FOREIGN KEY REFERENCES Classes(IdClasse) 
)
GO

INSERT INTO Usuarios VALUES('TEST', '1234', 'test@gmail.com')

INSERT INTO Usuarios VALUES('TEST2', '1234', 'test2@gmail.com')

INSERT INTO Usuarios VALUES('TEST3', '1234', 'test3@gmail.com')

INSERT INTO Usuarios VALUES('TEST4', '1234', 'test4@gmail.com')

INSERT INTO Usuarios VALUES('TEST5', '1234', 'test5@gmail.com')

INSERT INTO Usuarios VALUES('TEST6', '1234', 'test6@gmail.com')

INSERT INTO Usuarios VALUES('TEST7', '1234', 'test7@gmail.com')

INSERT INTO Usuarios VALUES('TEST8', '1234', 'test8@gmail.com')

INSERT INTO Usuarios VALUES('TEST9', '1234', 'test9@gmail.com')


INSERT INTO Personagens VALUES('DeuBug', 1)

INSERT INTO Personagens VALUES('BitBug', 2)

INSERT INTO Personagens VALUES('Bug', 3)

INSERT INTO Personagens VALUES('Bug', 4)

INSERT INTO Personagens VALUES('BitBug', 5)

INSERT INTO Personagens VALUES('Bug', 6)

INSERT INTO Personagens VALUES('DeuBug', 7)

INSERT INTO Personagens VALUES('BitBug', 8)

INSERT INTO Personagens VALUES('DeuBug', 9)


INSERT INTO Classes VALUES('Bárbaro', 1)

INSERT INTO Classes VALUES('Monge', 2)

INSERT INTO Classes VALUES('Nômade', 3)

INSERT INTO Classes VALUES('Nômade', 4)

INSERT INTO Classes VALUES('Monge', 5)

INSERT INTO Classes VALUES('Nômade', 6)

INSERT INTO Classes VALUES('Bárbaro', 7)

INSERT INTO Classes VALUES('Monge', 8)

INSERT INTO Classes VALUES('Bárbaro', 9)


INSERT INTO Habilidades VALUES('Lança Mortal', 'Escudo Supremo',1)

INSERT INTO Habilidades VALUES('Recuperar vida', 'Escudo Supremo',2)

INSERT INTO Habilidades VALUES('Recuperar vida', 'Lança Mortal',3)

INSERT INTO Habilidades VALUES('Recuperar vida', 'Lança Mortal',4)

INSERT INTO Habilidades VALUES('Recuperar vida', 'Escudo Supremo',5)

INSERT INTO Habilidades VALUES('Recuperar vida', 'Lança Mortal',6)

INSERT INTO Habilidades VALUES('Lança Mortal', 'Escudo Supremo',7)

INSERT INTO Habilidades VALUES('Recuperar vida', 'Escudo Supremo',8)

INSERT INTO Habilidades VALUES('Lança Mortal', 'Escudo Supremo',9)


CREATE PROC VerUsuario @IdUsuario VARCHAR(125)
AS
SELECT * FROM Usuarios WHERE IdUsuario = @IdUsuario;


CREATE PROC VerPersonagem @IdPersonagem VARCHAR(125)
AS
SELECT * FROM Personagens WHERE IdPersonagem = @IdPersonagem;


CREATE PROC VerClasse @IdClasse VARCHAR(125)
AS
SELECT * FROM Classes WHERE IdClasse= @IdClasse;


CREATE PROC VerHabilidade @IdHabilidade VARCHAR(125)
AS
SELECT * FROM Habilidades WHERE IdHabilidade = @IdHabilidade;

EXEC VerUsuario 2

EXEC VerPersonagem 2

EXEC VerClasse 2

EXEC VerHabilidade 2

-->DROP PROC BuscarDados: Deleta os procedimentos

UPDATE Usuarios SET Nome = 'TEST1' WHERE IdUsuario = 1

DELETE FROM Usuarios WHERE IdUsuario = 1