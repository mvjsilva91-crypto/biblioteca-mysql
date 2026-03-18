INSERT INTO Autor (nome) VALUES
('Machado de Assis'),
('Clarice Lispector'),
('George Orwell');

INSERT INTO Livro (titulo, id_autor, ano_publicacao) VALUES
('Dom Casmurro', 1, 1899),
('A Hora da Estrela', 2, 1977),
('1984', 3, 1949);

INSERT INTO Membro (nome, cidade) VALUES
('Ana', 'São Paulo'),
('Carlos', 'Rio de Janeiro'),
('Marina', 'Belo Horizonte');

INSERT INTO Emprestimo (id_livro, id_membro, data_emprestimo, data_devolucao) VALUES
(1, 1, '2024-06-01', '2024-06-10'),
(2, 2, '2024-06-05', NULL),
(3, 3, '2024-06-07', '2024-06-15');
