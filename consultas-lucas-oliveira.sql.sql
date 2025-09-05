/*Consultar usuários*/
SELECT * FROM users;
/*Consultar empréstimos*/
SELECT * FROM emprestimos;
/*Consultar itens do empréstimo*/
SELECT * FROM itens_emprestimo;
/*Consultar livros*/
SELECT * FROM livros;
/*Quantidade de usuários*/
SELECT count(user_id) AS quantidade_usuarios FROM users;
/*Quantidade de livros*/
SELECT count(book_id) AS quantidade_livros FROM livros;
/*Consultar reservas*/
SELECT * FROM reservas;
/*Listar as reservas do usuário*/
SELECT * FROM reservas WHERE user_id = 1;
/*Nome do usuário, nome do livro, data de empréstimo e devolução*/
SELECT
    u.name, e.data_emprestimo, e.data_devolucao, l.title
FROM users AS u
INNER JOIN emprestimos AS e ON e.user_id = u.user_id
INNER JOIN itens_emprestimo AS i ON i.emprestimo_id = e.emprestimo_id
INNER JOIN livros AS l ON l.book_id = i.livro_id
WHERE u.user_id = 1;