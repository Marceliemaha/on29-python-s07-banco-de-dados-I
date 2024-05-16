
-- Criar a tabela 'livros'
CREATE TABLE livros (
    id INTEGER PRIMARY KEY,
    titulo TEXT,
    autor TEXT,
    ano_publicacao INTEGER,
    preco REAL
);

-- Inserir os registros de livros
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('Dom Quixote', 'Miguel de Cervantes', 1605, 29.90);
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('Orgulho e Preconceito', 'Jane Austen', 1813, 25.50);
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('1984', 'George Orwell', 1949, 35.75);



-- create table estoque 
CREATE TABLE estoque (
    id INTEGER PRIMARY KEY,
    livro_id INTEGER,
    quantidade_estoque INTEGER,
    FOREIGN KEY (livro_id) REFERENCES livros(id)
);



INSERT INTO estoque (livro_id, quantidade_estoque) VALUES (1, 22);  
INSERT INTO estoque (livro_id, quantidade_estoque) VALUES (2, 18);  
INSERT INTO estoque (livro_id, quantidade_estoque) VALUES (3, 10);  



-- Obtenha a quantidade disponível em estoque para um determinado livro.

select quantidade_estoque from estoque;

-- Adicionar unidades ao estoque de um livro específico.

UPDATE estoque SET quantidade_estoque = 19 WHERE id = 2;

-- Remove unidades do estoque de um livro específico.

UPDATE estoque SET quantidade_estoque = 18 WHERE id = 2;






