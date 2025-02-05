SELECT nome, ano FROM Filmes

--2
SELECT nome, ano FROM Filmes
ORDER by ano 

--3
SELECT Nome, ano, duracao FROM Filmes
WHERE Nome = 'De volta para o futuro'

--4
SELECT Nome, ano, duracao FROM Filmes
WHERE ano = 1997

--5
SELECT Nome, ano, duracao FROM Filmes
WHERE ano > 2000

--6
SELECT Nome, ano, duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

--7
SELECT ano, COUNT (*) AS Quantidade 
FROM Filmes
GROUP BY Ano
ORDER BY SUM(Duracao) DESC

--8
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'M'

--9
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC

--10
SELECT
 f.Nome,
 g.Genero
 FROM Filmes f
 INNER JOIN FilmesGenero o ON o.IdFilme = f.Id
 INNER JOIN Generos g ON  g.Id = o.IdGenero

 --11
 SELECT
 f.Nome,
 g.Genero
 FROM Filmes f
 INNER JOIN FilmesGenero o ON o.IdFilme = f.Id
 INNER JOIN Generos g ON  g.Id = o.IdGenero
 WHERE g.Genero = 'Mistério'

 --12
 SELECT
 f.Nome,
 a.PrimeiroNome,
 a.UltimoNome,
 e.papel
 FROM Filmes f
 INNER JOIN ElencoFilme e ON e.IdFilme = f.Id
 INNER JOIN Atores a ON  a.Id = e.IdAtor
 