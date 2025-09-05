CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE livros (
    book_id INT PRIMARY KEY,
    title VARCHAR(200),
    autor VARCHAR(100),
    editor VARCHAR(100),
    ano_publicacao INT,
    quantidade INT
);

CREATE TABLE emprestimos (
    emprestimo_id INT PRIMARY KEY,
    user_id INT,
    data_emprestimo TIMESTAMP,
    data_devolucao_prevista TIMESTAMP,
    data_devolucao TIMESTAMP
);

CREATE TABLE itens_emprestimo (
    item_emprestimo_id INT PRIMARY KEY,
    emprestimo_id INT,
    livro_id INT,
    quantidade INT,
    FOREIGN KEY (emprestimo_id) REFERENCES emprestimos(emprestimo_id),
    FOREIGN KEY (livro_id) REFERENCES livros(book_id)
);

CREATE TABLE reservas (
    reserva_id SERIAL PRIMARY KEY,
    user_id INT,
    livro_id INT,
    data_reserva TIMESTAMP,
    status VARCHAR(50),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (livro_id) REFERENCES livros(book_id)
);