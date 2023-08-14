-- Criação do Banco de Dados
CREATE DATABASE oficina;
USE oficina;

-- Tabela de Clientes
CREATE TABLE Clientes (
    cliente_id INT AUTO_INCREMENT PRIMARY KEY,
    primeiro_nome VARCHAR(50),
    nome_do_meio VARCHAR(50),
    ultimo_nome VARCHAR(50),
    CPF CHAR(11) NOT NULL UNIQUE,
    telefone VARCHAR(20),
    email VARCHAR(255),
    endereco VARCHAR(255)
);

-- Tabela de Veículos
CREATE TABLE Veiculos (
    veiculo_id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    marca VARCHAR(50),
    modelo VARCHAR(50),
    ano INT,
    placa VARCHAR(10),
    quilometragem INT,
    CONSTRAINT fk_veiculos_clientes FOREIGN KEY (cliente_id) REFERENCES Clientes(cliente_id)
);

-- Tabela de Serviços
CREATE TABLE Servicos (
    servico_id INT AUTO_INCREMENT PRIMARY KEY,
    veiculo_id INT,
    data_servico DATE,
    descricao VARCHAR(255),
    custo DECIMAL(10, 2),
    CONSTRAINT fk_servicos_veiculos FOREIGN KEY (veiculo_id) REFERENCES Veiculos(veiculo_id)
);

-- Tabela de Peças
CREATE TABLE Pecas (
    peca_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    quantidade_disponivel INT,
    preco_unitario DECIMAL(10, 2)
);

-- Tabela de Serviço -> Peças
CREATE TABLE Servico_Pecas (
    servico_id INT,
    peca_id INT,
    quantidade_utilizada INT,
    PRIMARY KEY (servico_id, peca_id),
    CONSTRAINT fk_servico_pecas_servicos FOREIGN KEY (servico_id) REFERENCES Servicos(servico_id),
    CONSTRAINT fk_servico_pecas_pecas FOREIGN KEY (peca_id) REFERENCES Pecas(peca_id)
);
