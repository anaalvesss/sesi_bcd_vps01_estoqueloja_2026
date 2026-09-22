INSERT INTO equipamento (id, nome, tipo, marca, modelo, numero_serie, data_aquisicao, status, setor, valor_aquisicao) VALUES
(1, 'notebook', 'escritório/trabalho', 'dell', 'latitude 5440', 'BR7X91W80', '2026-09-22', 'ativo', 'administrativo', 5200.00),
(2, 'ar condicionado', 'climatização', 'consul', 'jet pro', 'CNB1K2C304', '2026-09-22', 'ativo', 'sala', 2100.00),
(3, 'impressora', 'escritório/trabalho', 'HP', 'ecoinverter', 'MN9785576', '2026-09-23', 'ativo', 'administrativo', 1480.00);

select * from equipamento;

INSERT INTO tecnico (id, nome, telefone, email, especialidade) VALUES
(1, 'Bruno', '(19)99999-8888', 'bruno@gmail.com', 'informatica'),
(2, 'Gustavo', '(19)99999-8889', 'gustavo@gmail.com', 'refrigeracao'),
(3, 'Henrique', '(19)99999-8890', 'henrique@gmail.com', 'mecanica');

select * from tecnico;

INSERT INTO peca (id_peca, nome, descricao, quantidade_estoque, estoque_minimo, preco) VALUES
(1, 'pasta termica', 'composto para reajuste de calor em notebooks', 15, 5, 35.00),
(2, 'capacitador de partida', 'componente para motor de ar condicionado', 4, 3, 28.00),
(3, 'fusor', 'reposicao da impressora e reajuste da funcao', 2, 1, 450.00);

select * from peca;

INSERT INTO ordem_manutencao (id_ordem, id_equipamento, tipo, descricao, data_abertura, data_inicio, data_fim, status, prioridade) VALUES
(52, 1, 'prevencao', 'limpeza interna', '2026-09-16', '2026-09-19', '2026-09-22', 'em andamento', 'baixa'),
(53, 2, 'correcao', 'vazamento de água na ventilacao', '2026-09-15', '2026-09-16', '2026-09-20', 'concluida', 'media'),
(54, 3, 'correcao', 'impressora travando folhas de papel', '2026-09-14', '2026-09-15', '2026-09-18', 'concluida', 'alta');

select * from ordem_manutencao;

INSERT INTO manutencao (id_manutencao, id_ordem, id_tecnico, descricao_servico, data_execucao, horas_trabalhadas, observacoes) VALUES
(1, 53, 2, 'realizado testes e troca do motor', '2026-09-16', '4 horas', 'equipamento testado e pronto'),
(2, 54, 3, 'substituicao do fusor e limpeza da impressora', '2026-09-15', '2 horas', 'equipamento testado e pronto');

select * from manutencao;

INSERT INTO pecas_manutencao (id_manutencao, id_peca, quantidade) VALUES
(1, 1, 1.0),
(1, 2, 1.2),
(2, 3, 1.0);

select * from pecas_manutencao;