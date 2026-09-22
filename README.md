"# sesi_bcd_vps01_estoqueloja_2026" 

# Manutenção de equipamentos
| Neste desafio, é abordado uma elaboração de um banco de dados em vista de manutenção de equipamentos em uma fábrica, onde o objetivo é controlar os equipamentos, seu histórico de manutenção, os técnicos responsáveis, peças utilizadas e as ordens de serviço. |

# MER DER 
## MER DER lógico
``` img ```

## MER DER conceitual
``` img ```

# Dicionário de Dados (markdown)

| Entidade | Atribuição | Tipo | Tamanho | Descrição |
| --- | --- | --- | --- | --- |
| equipamento | id | inteiro | 11 | identificador, PRIMARY KEY |
| equipamento | nome | texto | 100 | nome do aparelho |
| equipamento | tipo | texto | 50 | tipo de uso do item |
| equipamento | marca | texto | 50 | fabricante do equipamento |
| equipamento | modelo | texto | 50 | modelo do equipamento |
| equipamento | numero_serie | texto | 50 | número de série, valor único |
| equipamento | data_aquisicao | data | - | data de compra do ativo |
| equipamento | status | texto | 20 | status atual do equipamento |
| equipamento | setor | texto | 50 | setor onde o item fica alocado |
| equipamento | valor_aquisicao | decimal | 10,2 | preço pago pelo equipamento |
| técnico | id | inteiro | 11 | identificador, PRIMARY KEY |
| técnico | nome | texto | 100 | nome do técnico |
| técnico | telefone | texto | 20 | telefone do técnico |
| técnico | email | texto | 100 | e-mail do técnico |
| técnico | especialidade | texto | 100 | especialidade principal |
| peça | id_peca | inteiro | 11 | identificador, PRIMARY KEY |
| peça | nome | texto | 100 | nome da peça |
| peça | descricao | texto | - | para que serve o componente |
| peça | quantidade_estoque | inteiro | 11 | quantidade atual no estoque |
| peça | estoque_minimo | inteiro | 11 | estoque mínimo aceitável |
| peça | preco | decimal | 10,2 | preço unitário da peça |
| ordem_manutencao | id_ordem | inteiro | 11 | identificador, PRIMARY KEY |
| ordem_manutencao | id_equipamento | inteiro | 11 | FOREIGN KEY referenciando equipamento (id) |
| ordem_manutencao | tipo | texto | 30 | preventiva ou corretiva |
| ordem_manutencao | descricao | texto | - | defeito ou problema relatado |
| ordem_manutencao | data_abertura | data | - | data de abertura do chamado |
| ordem_manutencao | data_inicio | data | - | data do começo do conserto |
| ordem_manutencao | data_fim | data | - | data de término do serviço |
| ordem_manutencao | status | texto | 20 | situação da ordem de serviço |
| ordem_manutencao | prioridade | texto | 20 | urgência (baixa/média/alta) |
| manutencao | id_manutencao | inteiro | 11 | identificador, PRIMARY KEY |
| manutencao | id_ordem | inteiro | 11 | FOREIGN KEY referenciando ordem_manutencao (id_ordem) |
| manutencao | id_tecnico | inteiro | 11 | FOREIGN KEY referenciando tecnico (id) |
| manutencao | descricao_servico | texto | - | relatório do que foi feito |
| manutencao | data_execucao | data | - | data do reparo real |
| manutencao | horas_trabalhadas | texto | 20 | tempo total gasto no serviço |
| manutencao | observacoes | texto | - | notas extras sobre o resultado |
| pecas_manutencao | id_manutencao | inteiro | 11 | PRIMARY KEY, FOREIGN KEY referenciando manutencao (id_manutencao) |
| pecas_manutencao | id_peca | inteiro | 11 | PRIMARY KEY, FOREIGN KEY referenciando peca (id_peca) |
| pecas_manutencao | quantidade | decimal | 10,2 | quantidade de peças utilizada |

---

# Links das tabelas estilo CSV

### link para [equipamento.csv](./equipamento.csv)
```csv
id | nome | tipo | marca | modelo | numero_serie | data_aquisicao | status | setor | valor_aquisicao
1 | notebook | escritório/trabalho | dell | latitude 5440 | br7x91w80 | 2026-09-22 | ativo | administrativo | 5200.00
2 | ar condicionado | climatização | consul | jet pro | cnb1k2c304 | 2026-09-22 | ativo | sala | 2100.00
3 | impressora | escritório/trabalho | hp | ecoinverter | mn9785576 | 2026-09-23 | ativo | administrativo | 1480.00
```

### link para [tecnico.csv](./tecnico.csv)
```csv
id | nome | telefone | email | especialidade
1 | bruno | (19)99999-8888 | bruno@gmail.com | informatica
2 | gustavo | (19)99999-8889 | gustavo@gmail.com | refrigeracao
3 | henrique | (19)99999-8890 | henrique@gmail.com | mecanica
```

### link para [peca.csv](./peca.csv)
```csv
id_peca | nome | descricao | quantidade_estoque | estoque_minimo | preco
1 | pasta termica | composto para reajuste de calor em notebooks | 15 | 5 | 35.00
2 | capacitador de partida | componente para motor de ar condicionado | 4 | 3 | 28.00
3 | fusor | reposicao da impressora e reajuste da funcao | 2 | 1 | 450.00
```

### link para [ordem_manutencao.csv](./ordem_manutencao.csv)
```csv
id_ordem | id_equipamento | tipo | descricao | data_abertura | data_inicio | data_fim | status | prioridade
52 | 1 | prevencao | limpeza interna | 2026-09-16 | 2026-09-19 | 2026-09-22 | em andamento | baixa
53 | 2 | correcao | vazamento de água na ventilacao | 2026-09-15 | 2026-09-16 | 2026-09-20 | concluida | media
54 | 3 | correcao | impressora travando folhas de papel | 2026-09-14 | 2026-09-15 | 2026-09-18 | concluida | alta
```

### link para [manutencao.csv](./manutencao.csv)
```csv
id_manutencao | id_ordem | id_tecnico | descricao_servico | data_execucao | horas_trabalhadas | observacoes
1 | 53 | 2 | realizado testes e troca do motor | 2026-09-16 | 4 horas | equipamento testado e pronto
2 | 54 | 3 | substituicao do fusor e limpeza da impressora | 2026-09-15 | 2 horas | equipamento testado e pronto
```

### link para [pecas_manutencao.csv](./pecas_manutencao.csv)
```csv
id_manutencao | id_peca | quantidade
1 | 1 | 1.0
1 | 2 | 1.2
2 | 3 | 1.0
```
