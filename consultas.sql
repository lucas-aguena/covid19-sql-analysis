--Total de casos por país (top 10)
SELECT location, MAX(total_cases) AS total_casos
FROM covid_data
WHERE continent IS NOT NULL AND total_cases IS NOT NULL
GROUP BY location
ORDER BY total_casos DESC
LIMIT 10;

--Casos por milhão (top 10)
SELECT location, MAX(total_cases_per_million) AS casos_por_milhão
FROM covid_data
WHERE
	continent IS NOT NULL AND
	total_cases_per_million IS NOT NULL
GROUP BY location
ORDER BY casos_por_milhão DESC
LIMIT 10;

--Mortalidade (morte / casos) - usando subquery
SELECT location,
       ROUND(MAX(total_deaths) / NULLIF(MAX(total_cases), 0), 4) AS taxa_mortalidade
FROM covid_data
WHERE 
	continent IS NOT NULL AND
	total_deaths IS NOT NULL AND
	total_cases <> 0
GROUP BY location
ORDER BY taxa_mortalidade DESC
LIMIT 10;

--Média móvel de novos casos na última semana de 2022
WITH media_movel AS (
SELECT
	location,
	date,
	new_cases,
	AVG(new_cases) OVER (PARTITION BY location ORDER BY date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS media_7_dias
FROM covid_data
WHERE continent IS NOT NULL AND new_cases IS NOT NULL
)
SELECT *
FROM media_movel
WHERE 
	location = 'Brazil' AND
	EXTRACT(YEAR FROM date) = 2022 AND
	EXTRACT(MONTH FROM date) = 12
ORDER BY date DESC
LIMIT 7

--Comparação entre países vacinados x mais casos
SELECT 
	location,
	MAX(people_vaccinated_per_hundred) AS vacinados_por_cem,
	MAX(total_cases_per_million) AS casos_por_milhao
FROM covid_data
WHERE 
	continent IS NOT NULL AND
	people_vaccinated_per_hundred IS NOT NULL AND
	total_cases_per_million IS NOT NULL
GROUP BY location
ORDER BY vacinados_por_cem DESC
LIMIT 10