-- ==========================================
-- COVERAGE DATA ANALYSIS
-- ==========================================

-- Query 1: Total Coverage Records
SELECT COUNT(*) AS Total_Coverage_Records
FROM coverage_data;

-- Query 2: Total Number of Countries
SELECT COUNT(DISTINCT NAME) AS Total_Countries
FROM coverage_data
WHERE `GROUP` = 'COUNTRIES';

-- Query 3: Number of Vaccination Records by Year
SELECT
    YEAR,
    COUNT(*) AS Total_Records
FROM coverage_data
GROUP BY YEAR
ORDER BY YEAR;

-- Query 4: Year-wise Average Vaccination Coverage
SELECT
    YEAR,
    ROUND(AVG(COVERAGE),2) AS Average_Coverage
FROM coverage_data
WHERE `GROUP`='COUNTRIES'
AND COVERAGE IS NOT NULL
GROUP BY YEAR
ORDER BY YEAR;

-- Query 5: Top 10 Countries by Average Vaccination Coverage
SELECT
    NAME AS Country,
    ROUND(AVG(COVERAGE), 2) AS Average_Coverage
FROM coverage_data
WHERE `GROUP` = 'COUNTRIES'
AND COVERAGE IS NOT NULL
AND COVERAGE <= 100
GROUP BY NAME
ORDER BY Average_Coverage DESC
LIMIT 10;

-- Query 6: Bottom 10 Countries by Average Vaccination Coverage
SELECT
    NAME AS Country,
    ROUND(AVG(COVERAGE), 2) AS Average_Coverage
FROM coverage_data
WHERE `GROUP` = 'COUNTRIES'
      AND COVERAGE IS NOT NULL
      AND COVERAGE <= 100
GROUP BY NAME
ORDER BY Average_Coverage ASC
LIMIT 10;

-- Query 7: Top 10 Antigens by Average Coverage
SELECT
    ANTIGEN_DESCRIPTION,
    ROUND(AVG(COVERAGE),2) AS Average_Coverage
FROM coverage_data
WHERE `GROUP`='COUNTRIES'
AND COVERAGE IS NOT NULL
AND COVERAGE <= 100
GROUP BY ANTIGEN_DESCRIPTION
ORDER BY Average_Coverage DESC
LIMIT 10;

-- Query 8: Top 10 Antigens by Number of Records

SELECT
    ANTIGEN_DESCRIPTION,
    COUNT(*) AS Total_Records
FROM coverage_data
WHERE `GROUP` = 'COUNTRIES'
GROUP BY ANTIGEN_DESCRIPTION
ORDER BY Total_Records DESC
LIMIT 10;

-- Query 9: Coverage Category-wise Record Count
SELECT
    COVERAGE_CATEGORY,
    COUNT(*) AS Total_Records
FROM coverage_data
GROUP BY COVERAGE_CATEGORY
ORDER BY Total_Records DESC;

-- Query 10: Top 10 Countries by Number of Records
SELECT
    NAME AS Country,
    COUNT(*) AS Total_Records
FROM coverage_data
WHERE `GROUP` = 'COUNTRIES'
GROUP BY NAME
ORDER BY Total_Records DESC
LIMIT 10;

 -- ==========================================
-- REPORTED CASES DATA ANALYSIS
-- ==========================================

-- Query 1: Total Reported Cases Records
SELECT COUNT(*) AS Total_Reported_Case_Records
FROM reported_cases_data;

-- Query 2: Total Number of Diseases
SELECT
    COUNT(DISTINCT DISEASE) AS Total_Diseases
FROM reported_cases_data;

-- Query 3: Year-wise Average Reported Cases
SELECT
    YEAR,
    ROUND(AVG(CASES), 2) AS Average_Cases
FROM reported_cases_data
WHERE `GROUP` = 'COUNTRIES'
AND CASES IS NOT NULL
GROUP BY YEAR
ORDER BY YEAR;

-- Query 4: Top 10 Diseases by Average Reported Cases
SELECT
    DISEASE_DESCRIPTION,
    ROUND(AVG(CASES), 2) AS Average_Cases
FROM reported_cases_data
WHERE `GROUP` = 'COUNTRIES'
AND CASES IS NOT NULL
GROUP BY DISEASE_DESCRIPTION
ORDER BY Average_Cases DESC
LIMIT 10;

-- Query 5: Top 10 Countries by Average Reported Cases
SELECT
    NAME,
    ROUND(AVG(CASES), 2) AS Average_Cases
FROM reported_cases_data
WHERE `GROUP` = 'COUNTRIES'
AND CASES IS NOT NULL
GROUP BY NAME
ORDER BY Average_Cases DESC
LIMIT 10;


-- ==========================================
-- INCIDENCE RATE DATA ANALYSIS
-- ==========================================

-- Query 1: Total Incidence Rate Records
SELECT COUNT(*) AS Total_Incidence_Rate_Records
FROM incidence_rate_data;

-- Query 2: Total Number of Diseases
SELECT
    COUNT(DISTINCT DISEASE) AS Total_Diseases
FROM incidence_rate_data;

-- Query 3: Year-wise Average Incidence Rate
SELECT
    YEAR,
    ROUND(AVG(INCIDENCE_RATE), 2) AS Average_Incidence_Rate
FROM incidence_rate_data
WHERE INCIDENCE_RATE IS NOT NULL
GROUP BY YEAR
ORDER BY YEAR;

-- Query 4: Top 10 Countries by Average Incidence Rate
SELECT
    NAME AS Country,
    ROUND(AVG(INCIDENCE_RATE), 2) AS Average_Incidence_Rate
FROM incidence_rate_data
WHERE INCIDENCE_RATE IS NOT NULL
GROUP BY NAME
ORDER BY Average_Incidence_Rate DESC
LIMIT 10;

-- Query 5: Bottom 10 Countries by Average Incidence Rate
SELECT
    NAME AS Country,
    ROUND(AVG(INCIDENCE_RATE), 2) AS Average_Incidence_Rate
FROM incidence_rate_data
WHERE INCIDENCE_RATE IS NOT NULL
GROUP BY NAME
ORDER BY Average_Incidence_Rate ASC
LIMIT 10;

-- ==========================================
-- VACCINATION INTRODUCTION DATA ANALYSIS
-- ==========================================

-- Query 1: Total Vaccination Introduction Records
SELECT COUNT(*) AS Total_Vaccination_Introduction_Records
FROM vaccine_introduction_data;

-- Query 2: Total Number of Countries
SELECT
    COUNT(DISTINCT COUNTRYNAME) AS Total_Countries
FROM vaccine_introduction_data;

-- Query 3: Number of Vaccine Introduction Records by Year
SELECT
    YEAR,
    COUNT(*) AS Total_Records
FROM vaccine_introduction_data
GROUP BY YEAR
ORDER BY YEAR;

-- Query 4: Top 10 Vaccine Types by Number of Introduction Records
SELECT
    DESCRIPTION,
    COUNT(*) AS Total_Records
FROM vaccine_introduction_data
GROUP BY DESCRIPTION
ORDER BY Total_Records DESC
LIMIT 10;

-- Query 5: Top 10 Countries by Number of Vaccine Introduction Records
SELECT
    COUNTRYNAME,
    COUNT(*) AS Total_Records
FROM vaccine_introduction_data
GROUP BY COUNTRYNAME
ORDER BY Total_Records DESC
LIMIT 10;