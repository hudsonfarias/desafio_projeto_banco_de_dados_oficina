-- Recuperações Simples com SELECT:
-- Recupere todos os nomes e e-mails dos clientes
SELECT primeiro_nome, ultimo_nome, email 
FROM Clientes;

-- Filtros com WHERE:
-- Recupere os veículos fabricados após 2020
SELECT * FROM Veiculos 
WHERE ano > 2020;

-- Expressões para Atributos Derivados:
-- Precisam fazer a próxima revisão após percorrerem mais 10.000 km
SELECT c.primeiro_nome, c.ultimo_nome, v.marca, v.modelo, v.quilometragem + 10000 AS proxima_revisao_km
FROM Clientes c
JOIN Veiculos v ON c.cliente_id = v.cliente_id
JOIN Servicos s ON v.veiculo_id = s.veiculo_id
WHERE s.descricao = 'Revisão completa';


-- Ordenação dos Dados com ORDER BY:
-- Recupere os serviços ordenados pelo custo em ordem decrescente
SELECT * FROM Servicos 
ORDER BY custo DESC;

-- Condições de Filtros aos Grupos com HAVING:
-- Recupere as peças com quantidade disponível menor que 50
SELECT * FROM Pecas 
HAVING quantidade_disponivel < 50;

-- Junções entre Tabelas:
-- Recupere os detalhes de um serviço, incluindo o nome do cliente e informações do veículo
SELECT s.servico_id, c.primeiro_nome, c.ultimo_nome, v.marca, v.modelo, s.data_servico, s.descricao, s.custo
FROM Servicos s
JOIN Veiculos v ON s.veiculo_id = v.veiculo_id
JOIN Clientes c ON v.cliente_id = c.cliente_id
WHERE s.servico_id = 1;

-- Consulta com Subconsulta e Filtro:
-- Recupere os clientes que têm veículos com mais de um serviço realizado, junto com o número de serviços por cliente
SELECT c.primeiro_nome, c.ultimo_nome, SUM(s.custo) AS total_custo_servicos
FROM Clientes c
JOIN Veiculos v ON c.cliente_id = v.cliente_id
JOIN Servicos s ON v.veiculo_id = s.veiculo_id
GROUP BY c.cliente_id;

-- Consulta com Subconsulta Escalar:
-- Recupere a média de quilometragem de todos os veículos e liste os veículos que têm quilometragem acima dessa média
SELECT veiculo_id, marca, modelo, quilometragem
FROM Veiculos
WHERE quilometragem > (SELECT AVG(quilometragem) FROM Veiculos);

-- Consulta de Junção com JOIN LEFT:
-- Recupere os veículos e os serviços associados a eles, incluindo aqueles que não têm serviços
SELECT v.marca, v.modelo, s.descricao
FROM Veiculos v
LEFT JOIN Servicos s ON v.veiculo_id = s.veiculo_id;



