-- Create Database
CREATE DATABASE vaccination_analysis;

USE vaccination_analysis;
-- ==========================================
-- Table 1 : Coverage Data
-- ==========================================
CREATE TABLE coverage_data (
    `GROUP` VARCHAR(50),
    CODE VARCHAR(10),
    NAME VARCHAR(150),
    YEAR INT,
    ANTIGEN VARCHAR(50),
    ANTIGEN_DESCRIPTION VARCHAR(255),
    COVERAGE_CATEGORY VARCHAR(50),
    COVERAGE_CATEGORY_DESCRIPTION VARCHAR(255),
    TARGET_NUMBER BIGINT,
    DOSES BIGINT,
    COVERAGE DECIMAL(10,2)
);
-- ==========================================
-- Table 2 : Incidence Rate Data
-- ==========================================

CREATE TABLE incidence_rate_data (
    `GROUP` VARCHAR(50),
    CODE VARCHAR(10),
    NAME VARCHAR(150),
    YEAR INT,
    DISEASE VARCHAR(100),
    DISEASE_DESCRIPTION VARCHAR(255),
    DENOMINATOR BIGINT,
    INCIDENCE_RATE DECIMAL(12,4)
);
-- ==========================================
-- Table 3 : Reported Cases Data
-- ==========================================

CREATE TABLE reported_cases_data (
    `GROUP` VARCHAR(50),
    CODE VARCHAR(10),
    NAME VARCHAR(150),
    YEAR INT,
    DISEASE VARCHAR(100),
    DISEASE_DESCRIPTION VARCHAR(255),
    CASES BIGINT
);
-- ==========================================
-- Table 4 : Vaccine Introduction Data
-- ==========================================

CREATE TABLE vaccine_introduction_data (
    ISO_3_CODE VARCHAR(10),
    COUNTRYNAME VARCHAR(150),
    WHO_REGION VARCHAR(20),
    YEAR INT,
    DESCRIPTION VARCHAR(255),
    INTRO VARCHAR(20)
);
-- ==========================================
-- Table 5 : Vaccine Schedule Data
-- ==========================================

CREATE TABLE vaccine_schedule_data (
    ISO_3_CODE VARCHAR(10),
    COUNTRYNAME VARCHAR(150),
    WHO_REGION VARCHAR(20),
    YEAR INT,
    VACCINECODE VARCHAR(50),
    VACCINE_DESCRIPTION VARCHAR(255),
    SCHEDULEROUNDS INT,
    TARGETPOP VARCHAR(100),
    TARGETPOP_DESCRIPTION VARCHAR(255),
    GEOAREA VARCHAR(100),
    AGEADMINISTERED VARCHAR(255),
    SOURCECOMMENT TEXT
);
SHOW tables;