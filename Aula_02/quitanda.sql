-- Query para criação de banco de dados
create database db_quitanda;

-- Query para deletar o banco de dados
drop database db_quitanda;

-- Começar utilizar o banco
USE db_quitanda;

-- Criar tabela e popular
 create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
preco decimal not null,
primary key(id)
);

-- visualizar a tabela
select * from tb_produtos;

-- popular tabela
insert into tb_produtos(nome, quantidade, preco)
values ("tomate", 50, 8.80);
insert into tb_produtos(nome, quantidade, preco)
values ("banana", 200, 12.00);
insert into tb_produtos(nome, quantidade, preco)
values ("uva", 1200, 30.00);
insert into tb_produtos(nome, quantidade, preco)
values ("perâ", 500, 2.99);

-- busca especificas 
select nome, quantidade from tb_produtos;

select * from tb_produtos where id = 2;

-- <> diferente
select * from tb_produtos where preco > 5.00 and quantidade < 100;

-- desabilitar a segurança do sql = 0, = 1 esta habilidado 
set sql_safe_updates = 1;

-- atualizar colunas da tabela
update tb_produtos set preco = 5.00 where id = 2;

-- deletar itens da tabela
delete from tb_produtos where id = 10;

-- atualizar coluna 
alter table tb_produtos modify preco decimal (6,2);

-- adicionou uma coluna
alter table tb_produtos add descricao varchar(255);

-- deletar coluna 
alter table tb_produtos drop descricao;

-- alterar nome da coluna
alter table tb_produtos change nome nomedoproduto varchar(255);




