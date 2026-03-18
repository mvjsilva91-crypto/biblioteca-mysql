-- LISTAR TODOS OS LIVROS COM AUTORES
SELECT L.titulo, A.nome AS autor
FROM Livro L
JOIN Autor A ON L.id_autor = A.id_autor;

-- LIVROS EMPRESTADOS
SELECT L.titulo, M.nome, E.data_emprestimo
FROM Emprestimo E
JOIN Livro L ON E.id_livro = L.id_livro
JOIN Membro M ON E.id_membro = M.id_membro;

-- LIVROS NÃO DEVOLVIDOS
SELECT L.titulo, M.nome
FROM Emprestimo E
JOIN Livro L ON E.id_livro = L.id_livro
JOIN Membro M ON E.id_membro = M.id_membro
WHERE E.data_devolucao IS NULL;

-- MEMBROS COM MAIS EMPRÉSTIMOS
SELECT M.nome, COUNT(*) AS total_emprestimos
FROM Emprestimo E
JOIN Membro M ON E.id_membro = M.id_membro
GROUP BY M.nome;

-- LIVROS MAIS ANTIGOS
SELECT titulo, ano_publicacao
FROM Livro
ORDER BY ano_publicacao ASC;
