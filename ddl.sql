DROP DATABASE IF EXISTS loja_eletronicos;
CREATE DATABASE loja_eletronicos;
USE loja_eletronicos;

CREATE TABLE equipamento (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    tipo VARCHAR(50),
    marca VARCHAR(50),
    modelo VARCHAR(50),
    numero_serie VARCHAR(50) UNIQUE,
    data_aquisicao DATE,
    status VARCHAR(20),
    setor VARCHAR(50),
    valor_aquisicao DECIMAL(10, 2)
);
CREATE TABLE tecnico (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100),
    especialidade VARCHAR(100)
);
CREATE TABLE peca (
    id_peca INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    quantidade_estoque INT,
    estoque_minimo INT,
    preco DECIMAL(10, 2)
);
CREATE TABLE ordem_manutencao (
    id_ordem INT PRIMARY KEY,
    id_equipamento INT,
    tipo VARCHAR(30),
    descricao TEXT,
    data_abertura DATE,
    data_inicio DATE,
    data_fim DATE,
    status VARCHAR(20),
    prioridade VARCHAR(20),
    FOREIGN KEY (id_equipamento) REFERENCES equipamento(id)
);
CREATE TABLE manutencao (
    id_manutencao INT PRIMARY KEY,
    id_ordem INT,
    id_tecnico INT,
    descricao_servico TEXT,
    data_execucao DATE,
    horas_trabalhadas VARCHAR(20),
    observacoes TEXT,
    FOREIGN KEY (id_ordem) REFERENCES ordem_manutencao(id_ordem),
    FOREIGN KEY (id_tecnico) REFERENCES tecnico(id)
);
CREATE TABLE pecas_manutencao (
    id_manutencao INT,
    id_peca INT,
    quantidade DECIMAL(10, 2),
    PRIMARY KEY (id_manutencao, id_peca),
    FOREIGN KEY (id_manutencao) REFERENCES manutencao(id_manutencao),
    FOREIGN KEY (id_peca) REFERENCES peca(id_peca)
);