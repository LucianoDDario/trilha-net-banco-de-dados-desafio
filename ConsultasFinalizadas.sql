-- 1
SELECT 
Nome, 
Ano 
FROM Filmes

-- 2
SELECT 
Nome,
Ano,
Duracao
FROM Filmes
ORDER BY Ano

--3
SELECT 
Nome,
Ano,
Duracao 
FROM Filmes WHERE Nome = 'de volta para o futuro'

--4
SELECT 
Nome,
Ano,
Duracao 
FROM Filmes WHERE Ano = 1997

--5
SELECT 
Nome,
Ano,
Duracao 
FROM Filmes WHERE Ano > 2000

--6
SELECT 
Nome,
Ano,
Duracao 
FROM Filmes 
WHERE 
Duracao > 100 AND Duracao < 150
ORDER BY Duracao

--7
SELECT
Ano, COUNT(Ano) AS Quantidade
FROM Filmes
GROUP BY Ano 
ORDER BY Quantidade DESC

--8
SELECT 
*
FROM Atores
WHERE Genero = 'M'

--9
SELECT 
*
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10
SELECT
Nome,
Genero
FROM
Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

--11
SELECT
Nome,
Genero
FROM
Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Genero = 'Mist�rio'

--12
SELECT
nome,
PrimeiroNome,
UltimoNome,
Papel
FROM
Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor