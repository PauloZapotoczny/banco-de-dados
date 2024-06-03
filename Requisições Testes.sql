--Buscar nome e ano dos filmes:
SELECT Nome, Ano FROM Filmes 

--Buscar nome e ano dos filmes, ordenados por ordem crescente pelo ano:
SELECT Nome, Ano FROM Filmes 
ORDER BY Ano 

--Buscar o filme "De Volta para o Futuro" trazendo o nome, ano e duração:
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

--Buscar os filmes lançados em determinada data:
SELECT * FROM Filmes
WHERE Ano = 1997

--Buscar os filmes após uma determinada data:
SELECT * FROM Filmes
WHERE Ano > 2000

--Buscar os filmes com a duração maior que 100 e menor que 150, ordenando pela duração em crescente:
SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao 

--Buscar quantidade de filmes lançados no ano, agrupando por ano:
SELECT  Ano, COUNT(*) as Quantidade
FROM Filmes
GROUP BY Ano

--Buscar atores do gênero masculino, retornando o PrimeiroNome, UltimoNome:
SELECT * FROM Atores
WHERE Genero = 'M'

--Buscar os Atores do gênero feminino, retornando PrimeiroNome, UltimoNome e ordenando pelo PrimeiroNome:
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--Buscar nome do filme e gênero:
SELECT Nome, Genero FROM Filmes, Generos
ORDER BY Nome

--Buscar nome do filme e gênero "Mistério":
SELECT Nome, Genero FROM Filmes, Generos
WHERE Genero = 'Mistério'

--Buscar o nome do filme e os atores trazendo o PrimeiroNome, UltimoNome e seu Papel.
SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM Filmes, Atores, ElencoFilme