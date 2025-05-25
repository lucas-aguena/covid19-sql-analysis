# Análise de Dados COVID-19 com SQL (PostgreSQL)

Este projeto foi desenvolvido com o objetivo de praticar e demonstrar habilidades com SQL aplicadas a dados reais e públicos. Os dados foram retirados do repositório da Our World in Data (OWID) e tratam da pandemia de COVID-19 no mundo.

## 🔍 Objetivos

- Explorar o uso de consultas SQL reais
- Trabalhar com agregações, subqueries e CTEs
- Analisar tendências e métricas importantes de saúde pública
- Praticar modelagem de dados e importação de .csv no PostgreSQL

## 🗂️ Estrutura do projeto

- `criar_tabela.sql`  
  Script de criação da tabela `covid_data`, contendo colunas relacionadas a casos, óbitos, testes, vacinação, hospitalizações e indicadores sociais.
- `consultas.sql`  
  Conjunto de queries exploratórias que analisam a evolução da pandemia ao longo do tempo, por país e por diferentes métricas.

## 📥 Fonte dos dados

Os dados foram obtidos da base pública da **Our World in Data (OWID)**:  
🔗 [Download CSV direto](https://covid.ourworldindata.org/data/owid-covid-data.csv)

## ⚙️ Ferramentas Utilizadas

- PostgreSQL
- pgAdmin

## 🧪 Como usar

1. Faça o download do arquivo CSV acima e coloque-o na raiz do projeto
2. Crie a tabela com o script `criar_tabela.sql`
3. Importe os dados no seu banco (PostgreSQL, SQLite ou outro)
4. Execute as queries do arquivo `consultas.sql` para explorar os dados

## 📊 Consultas Realizadas

- Total de casos por país
- Casos por milhão de habitantes
- Taxa de mortalidade por país
- Média móvel de novos casos na última semana de 2022 (CTE)
- Comparação entre vacinação e número de casos

## 👨‍💻 Autor

**Lucas Hideki Aguena**  
Analista de Dados Júnior | SQL • Power BI • Automação
