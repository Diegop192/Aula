CREATE DATABASE AgendaContatos;
USE AgendaContatos;

CREATE TABLE Contatos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Email VARCHAR(100),
    Telefone VARCHAR(20),
    Grupo ENUM('Trabalho', 'Escola', 'Família', 'Amigo'),
    Favorito BOOLEAN DEFAULT FALSE
);

INSERT INTO Contatos (Nome, Email, Telefone, Grupo) VALUES
('João', 'joao@example.com', '(11) 1234-5678', 'Trabalho'),
('Maria', 'maria@example.com', '(11) 9876-5432', 'Família'),
('Pedro', 'pedro@example.com', '(11) 5555-5555', 'Amigo'),
('Ana', 'ana@example.com', '(11) 9999-9999', 'Escola'),
('Carlos', 'carlos@example.com', '(11) 7777-7777', 'Trabalho'),

SELECT * FROM Contatos;

SELECT * FROM Contatos WHERE Grupo = 'Trabalho';

SELECT * FROM Contatos WHERE Favorito = TRUE;

UPDATE Contatos SET Telefone = '(11) 1111-1111' WHERE Nome = 'João';

UPDATE Contatos SET Favorito = TRUE WHERE Nome = 'Maria';

DELETE FROM Contatos WHERE Nome = 'Pedro';

ALTER TABLE Contatos ADD COLUMN Favorito BOOLEAN DEFAULT FALSE;