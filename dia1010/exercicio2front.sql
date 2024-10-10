CREATE TABLE Duplicata (
    Nome CHAR(40),
    Numero INTEGER NOT NULL PRIMARY KEY,
    Valor DECIMAL(10,2),
    Vencimento DATE,
    Banco CHAR(10)
);

INSERT INTO Duplicata (Nome, Numero, Valor, Vencimento, Banco) VALUES
('ABC PAPELARIA', 100100, 2500.00, '2017-01-20', 'ITAU'),
('LIVRARIA FERNANDES', 100110, 1500.00, '2016-01-15', 'HAU'),
('LER SABER LIVROS E CIA', 200130, 10500.00, '2018-04-26', 'BANCO DO BRASIL'),
('LER SABER PAPELARIA SILVA', 200125, 11000.00, '2018-09-26', 'ITAU'),
('LIVROS MM', 250360, 500.00, '2018-12-18', 'SANTANDER'),
('PAPELARIA SILVA', 250370, 3400.00, '2013-04-26', 'SANTANDER'),
('LIVROS E CIA', 453365, 5400.00, '2018-06-15', 'BRADESCO'),
('ABC PAPELARIA', 965001, 2500.00, '2016-09-11', 'ITAL'),
('PAPELE AFINS', 9850802, 2500.00, '2016-01-12', 'SANTANDER'),
('LERE SABER', 888132, 2500.00, '2017-03-05', 'SANTANDER');

SELECT Nome, Vencimento, Valor FROM Duplicata;

SELECT Numero FROM Duplicata WHERE Banco = 'ITAU';

SELECT Numero FROM Duplicata WHERE Banco = 'ITAU';

SELECT Numero, Vencimento, Valor, Nome 
FROM Duplicata WHERE YEAR(Vencimento) = 2017;

SELECT Numero, Vencimento, Valor, 
Nome FROM Duplicata WHERE Banco NOT IN ('ITAU', 'SANTANDER');

SELECT SUM(Valor) AS TotalDivida, * 
FROM Duplicata WHERE Nome = 'PAPELARIA SILVA';

DELETE FROM Duplicata WHERE Numero = 770710;

SELECT * FROM Duplicata ORDER BY Nome;

SELECT Nome, Banco, Valor, Vencimento 
FROM Duplicata ORDER BY Vencimento;

UPDATE Duplicata SET Banco = 'SANTANDER' 
WHERE Banco = 'BANCO DO BRASIL';

SELECT DISTINCT Nome FROM Duplicata 
WHERE Banco = 'BRADESCO';
SELECT SUM(Valor) AS TotalPrevisao FROM Duplicata 
WHERE Vencimento BETWEEN '2016-01-01' AND '2016-12-31';

SELECT SUM(Valor) AS TotalReceber FROM Duplicata 
WHERE Vencimento BETWEEN '2016-08-01' AND '2016-08-30';

SELECT * FROM Duplicata WHERE Nome = 'ABC PAPELARIA';

UPDATE Duplicata SET Valor = Valor * 1.15 
WHERE Vencimento < '2017-01-01' AND Vencimento >= '2016-01-01'
;
UPDATE Duplicata SET Valor = Valor * 1.05 
WHERE Vencimento < '2017-06-01' AND Vencimento >= '2017-01-01' 
AND Nome = 'LER USABER';

SELECT Nome, Valor FROM Duplicata WHERE Valor > 10000.00;

SELECT AVG(Valor) AS MediaValores FROM Duplicata 
WHERE YEAR(Vencimento) = 2016;

SELECT SUM(Valor) AS TotalSantander FROM Duplicata 
WHERE Banco = 'SANTANDER';

SELECT DISTINCT Nome FROM Duplicata 
WHERE Banco IN ('BRADESCO', 'ITAU');
