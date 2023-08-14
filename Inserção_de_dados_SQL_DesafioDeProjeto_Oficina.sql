USE oficina;

-- inserção dos dados na tabela clientes
INSERT INTO Clientes (primeiro_nome, nome_do_meio, ultimo_nome, CPF, telefone, email, endereco) VALUES 
				('Ana', 'Maria', 'Silva', '12345678901', '(11) 9876-5432', 'ana@example.com', 'Rua A, 123'),
                ('Carlos', 'Henrique', 'Santos', '23456789012', '(21) 5555-1234', 'carlos@example.com', 'Avenida B, 456'),
                ('Mariana', 'Ferreira', 'Oliveira', '34567890123', '(31) 2222-8888', 'mariana@example.com', 'Rua C, 789'),
                ('Ricardo', 'Antonio', 'Pereira', '45678901234', '(41) 7777-1111', 'ricardo@example.com', 'Avenida D, 987'),
                ('Camila', 'Beatriz', 'Ribeiro', '56789012345', '(51) 3333-4444', 'camila@example.com', 'Rua E, 654');

-- Inserção de dados na tabela veiculos
INSERT INTO Veiculos (cliente_id, marca, modelo, ano, placa, quilometragem) VALUES 
				(1, 'Toyota', 'Corolla', 2019, 'ABC1234', 45000),
                (2, 'Ford', 'Focus', 2020, 'DEF5678', 30000),
                (3, 'Chevrolet', 'Onix', 2021, 'GHI7890', 15000),
                (4, 'Honda', 'Civic', 2018, 'JKL1234', 60000),
                (5, 'Volkswagen', 'Golf', 2022, 'MNO5678', 20000);

-- Inserção de dados na tabela serviços
INSERT INTO Servicos (veiculo_id, data_servico, descricao, custo) VALUES 
				(1, '2023-08-10', 'Troca de óleo', 100.00),
                (2, '2023-07-20', 'Revisão completa', 200.00),
                (3, '2023-06-15', 'Alinhamento e balanceamento', 80.00),
                (4, '2023-08-05', 'Substituição de correia dentada', 150.00),
                (5, '2023-07-10', 'Troca de pastilhas de freio', 120.00);
                
-- Inserção de dados na tabela peças
INSERT INTO Pecas (nome, quantidade_disponivel, preco_unitario) VALUES 
				('Filtro de óleo', 100, 15.00),
                ('Pastilhas de freio', 50, 40.00),
                ('Bateria', 30, 180.00),
                ('Vela de ignição', 80, 8.50),
                ('Amortecedor dianteiro', 20, 120.00);
                
-- Inserção de dados na tabela serviço_peças
INSERT INTO Servico_Pecas (servico_id, peca_id, quantidade_utilizada) VALUES 
				(1, 1, 1),
                (2, 2, 2),
                (3, 3, 4),
                (4, 4, 1),
                (5, 5, 2);
