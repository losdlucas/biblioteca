INSERT INTO users (
    user_id,
    name,
    email
) VALUES (
    1,
    'Joao Ferreira',
    'joaoferreira@gmail.com'
); 
INSERT INTO livros (
    book_id,
    title,
    autor,
    editor,
    ano_publicacao,
    quantidade
) VALUES (
    1,
    'Diario de um banana',
    'Jeff Kinney',
    'Vergara & Riba',
    '2008',
    '15'
);
INSERT INTO emprestimos (
    emprestimo_id,
    user_id,
    data_emprestimo,
    data_devolucao_prevista,
    data_devolucao
) VALUES (
    1,
    1,
    '2025-08-20',
    '2025-09-10',
    '2025-09-15'
);
INSERT INTO itens_emprestimo (
    item_emprestimo_id,
    emprestimo_id,
    livro_id,
    quantidade
) VALUES (
    1,
    1,
    1,
    1
);
INSERT INTO reservas (
    reserva_id,
    user_id,
    livro_id,
    data_reserva,
    status
) VALUES (
    1,
    1,
    1,
    '2026-01-20',
    'pendente'
);