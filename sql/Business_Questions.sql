-- ====================================================
-- Business Questions SQL Queries
-- Vaccination Data Analysis Project
-- ====================================================

USE vaccination_analysis;

-- Easy Level Questions

-- Question 1
-- Year-wise Average Vaccination Coverage
SELECT
    YEAR,
    ROUND(AVG(COVERAGE),2) AS Average_Coverage
FROM coverage_data
WHERE `GROUP`='COUNTRIES'
AND COVERAGE<=100
GROUP BY YEAR
ORDER BY YEAR;

-- Year-wise Average Disease Incidence Rate
SELECT
    YEAR,
    ROUND(AVG(INCIDENCE_RATE),2) AS Average_Incidence_Rate
FROM incidence_rate_data
GROUP BY YEAR
ORDER BY YEAR;

-- Question 2

-- Coverage by WHO Region
SELECT
    CODE,
    ROUND(AVG(COVERAGE),2) AS Avg_Coverage
FROM coverage_data
WHERE COVERAGE IS NOT NULL
AND COVERAGE<=100
GROUP BY CODE
ORDER BY Avg_Coverage DESC;

-- Incidence by WHO Region
SELECT
    CODE,
    ROUND(AVG(INCIDENCE_RATE),2) AS Avg_Incidence
FROM incidence_rate_data
WHERE INCIDENCE_RATE IS NOT NULL
GROUP BY CODE
ORDER BY Avg_Incidence DESC;

-- Medium Level Questions

-- Question 1
-- Query 1 – Year-wise Vaccine Introduction Records
SELECT
    YEAR,
    COUNT(*) AS Vaccine_Introductions
FROM vaccine_introduction_data
WHERE INTRO = 'YES'
GROUP BY YEAR
ORDER BY YEAR;

-- Query 2 – Year-wise Average Reported Cases
SELECT
    YEAR,
    ROUND(AVG(CASES),2) AS Average_Cases
FROM reported_cases_data
WHERE `GROUP`='COUNTRIES'
GROUP BY YEAR
ORDER BY YEAR;

-- Question 2
-- Query 1: Year-wise Vaccine Introduction Trend
SELECT
    YEAR,
    COUNT(*) AS Vaccine_Introductions
FROM vaccine_introduction_data
WHERE INTRO = 'YES'
GROUP BY YEAR
ORDER BY YEAR;
-- Query 2: Year-wise Total Disease Cases
SELECT
    YEAR,
    SUM(CASES) AS Total_Disease_Cases
FROM reported_cases_data
WHERE `GROUP` = 'COUNTRIES'
AND CASES IS NOT NULL
GROUP BY YEAR
ORDER BY YEAR;

-- Question 3

SELECT
    DISEASE_DESCRIPTION,
    MIN(CASES) AS Minimum_Cases,
    MAX(CASES) AS Maximum_Cases,
    (MAX(CASES) - MIN(CASES)) AS Reduction
FROM reported_cases_data
WHERE `GROUP` = 'COUNTRIES'
AND CASES IS NOT NULL
GROUP BY DISEASE_DESCRIPTION
ORDER BY Reduction DESC
LIMIT 10;

-- Question 4

SELECT
    ANTIGEN_DESCRIPTION,
    ROUND(AVG(COVERAGE),2) AS Average_Coverage
FROM coverage_data
WHERE `GROUP` = 'COUNTRIES'
AND COVERAGE IS NOT NULL
AND COVERAGE <=100
GROUP BY ANTIGEN_DESCRIPTION
ORDER BY Average_Coverage DESC;

-- Question 5 
SELECT
    ANTIGEN_DESCRIPTION,
    ROUND(AVG(COVERAGE),2) AS Average_Coverage
FROM coverage_data
WHERE `GROUP` = 'COUNTRIES'
AND ANTIGEN_DESCRIPTION LIKE '%booster%'
AND COVERAGE IS NOT NULL
AND COVERAGE <= 100
GROUP BY ANTIGEN_DESCRIPTION
ORDER BY Average_Coverage DESC;

-- Question 6
SELECT
    WHO_REGION,
    MIN(YEAR) AS First_Introduction_Year,
    MAX(YEAR) AS Latest_Introduction_Year,
    COUNT(*) AS Total_Introductions
FROM vaccine_introduction_data
WHERE INTRO = 'YES'
GROUP BY WHO_REGION
ORDER BY First_Introduction_Year;

-- Question 7 

SELECT
    NAME AS Country,
    COUNT(DISTINCT ANTIGEN) AS Available_Vaccines,
    ROUND(AVG(COVERAGE),2) AS Average_Coverage
FROM coverage_data
WHERE `GROUP` = 'COUNTRIES'
AND COVERAGE IS NOT NULL
AND COVERAGE <= 100
GROUP BY NAME
HAVING COUNT(DISTINCT ANTIGEN) >= 20
ORDER BY Average_Coverage ASC
LIMIT 10;

-- Question 8 
SELECT
    ANTIGEN_DESCRIPTION,
    ROUND(AVG(COVERAGE),2) AS Average_Coverage
FROM coverage_data
WHERE `GROUP` = 'COUNTRIES'
AND COVERAGE IS NOT NULL
AND COVERAGE <= 100
AND (
    ANTIGEN_DESCRIPTION LIKE '%BCG%'
    OR ANTIGEN_DESCRIPTION LIKE '%HepB%'
)
GROUP BY ANTIGEN_DESCRIPTION
ORDER BY Average_Coverage DESC;

-- Question 9 
SELECT
    DISEASE_DESCRIPTION,
    NAME AS Country,
    SUM(CASES) AS Total_Cases
FROM reported_cases_data
WHERE `GROUP` = 'COUNTRIES'
AND CASES IS NOT NULL
GROUP BY DISEASE_DESCRIPTION, NAME
ORDER BY Total_Cases DESC
LIMIT 10;

-- Scenario based Questions 

-- Question 1 
SELECT
    NAME AS Country,
    ROUND(AVG(COVERAGE),2) AS Average_Coverage
FROM coverage_data
WHERE `GROUP`='COUNTRIES'
AND COVERAGE IS NOT NULL
AND COVERAGE<=100
GROUP BY NAME
ORDER BY Average_Coverage ASC
LIMIT 10;

-- Question 2

-- Query 1 – Measles Vaccination Coverage (Last 5 Years)
SELECT
    YEAR,
    ROUND(AVG(COVERAGE),2) AS Average_Measles_Coverage
FROM coverage_data
WHERE `GROUP`='COUNTRIES'
AND ANTIGEN_DESCRIPTION = 'Measles-containing vaccine, 1st dose'
AND COVERAGE IS NOT NULL
AND COVERAGE <= 100
AND YEAR BETWEEN 2019 AND 2023
GROUP BY YEAR
ORDER BY YEAR;

-- Query 2 – Measles Reported Cases (Last 5 Years)
SELECT
    YEAR,
    SUM(CASES) AS Total_Measles_Cases
FROM reported_cases_data
WHERE `GROUP`='COUNTRIES'
AND DISEASE_DESCRIPTION='Measles'
AND YEAR BETWEEN 2019 AND 2023
GROUP BY YEAR
ORDER BY YEAR;

-- Question 3
SELECT
    YEAR,
    ROUND(AVG(COVERAGE),2) AS Average_Measles_Coverage
FROM coverage_data
WHERE `GROUP`='COUNTRIES'
AND ANTIGEN_DESCRIPTION='Measles-containing vaccine, 1st dose'
AND COVERAGE IS NOT NULL
AND COVERAGE<=100
GROUP BY YEAR
ORDER BY YEAR;

-- Question 4
SELECT
    TARGETPOP_DESCRIPTION,
    COUNT(*) AS Total_Vaccine_Schedules
FROM vaccine_schedule_data
WHERE TARGETPOP_DESCRIPTION IS NOT NULL
AND (
    TARGETPOP_DESCRIPTION LIKE '%child%'
    OR TARGETPOP_DESCRIPTION LIKE '%under%'
    OR TARGETPOP_DESCRIPTION LIKE '%elder%'
    OR TARGETPOP_DESCRIPTION LIKE '%older%'
)
GROUP BY TARGETPOP_DESCRIPTION
ORDER BY Total_Vaccine_Schedules DESC;
