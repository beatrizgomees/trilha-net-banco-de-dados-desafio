1 -- 
SELECT Nome, Ano
FROM Filmes;

2 --
SELECT Nome, Ano
FROM Filmes
ORDER BY Ano;

3 --
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

4 -- 
SELECT Nome, Ano
FROM Filmes
WHERE Ano = 1997;

5 -- 
SELECT Nome, Ano
FROM Filmes
WHERE Ano > 2000;

6 --
SELECT Nome, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

7 --
SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

8 --
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'Masculino';

9 --
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'Feminino'
ORDER BY PrimeiroNome;

10 -- 
SELECT Filmes.Nome, Generos.Nome AS Genero
FROM Filmes
INNER JOIN Generos ON Filmes.GeneroID = Generos.ID;

11 -- 
SELECT Filmes.Nome, Generos.Nome AS Genero
FROM Filmes
INNER JOIN Generos ON Filmes.GeneroID = Generos.ID
WHERE Generos.Nome = 'Mistério';

12 --
SELECT Filmes.Nome AS Filme, Atores.PrimeiroNome, Atores.UltimoNome, Elenco.Papel
FROM Filmes
INNER JOIN Elenco ON Filmes.ID = Elenco.FilmeID
INNER JOIN Atores ON Elenco.AtorID = Atores.ID;

