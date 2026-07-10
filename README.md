# Vaccination Data Analysis Dashboard

![Python](https://img.shields.io/badge/Python-3.11-blue)
![MySQL](https://img.shields.io/badge/MySQL-8.0-orange)
![Power%20BI](https://img.shields.io/badge/PowerBI-Dashboard-yellow)
![Status](https://img.shields.io/badge/Project-Completed-success)

## Project Overview

This project focuses on analyzing global vaccination data to understand vaccination coverage, disease incidence, reported cases, vaccine introduction, and vaccination schedules across different countries and regions.

The analysis was performed using Python, SQL, and Power BI to identify vaccination trends, compare disease patterns, and generate meaningful insights that can support public health decision-making.

---

## Project Objectives

- Analyze global vaccination coverage trends.
- Study disease incidence and reported cases over different years.
- Compare vaccine introduction across countries and WHO regions.
- Analyze vaccination schedules for different target populations.
- Answer business-oriented and scenario-based healthcare questions using SQL.
- Develop an interactive Power BI dashboard for data visualization.

---

## Project Structure

```text
VACCINATION-DATA-ANALYSIS/
│
├── dashboard/
│   └── Vaccination_Data_Analysis.pbix
│
├── data/
│   ├── clean_coverage_data.csv
│   ├── clean_incidence_rate_data.csv
│   ├── clean_reported_cases_data.csv
│   ├── clean_vaccine_introduction_data.csv
│   ├── clean_vaccine_schedule_data.csv
│   ├── coverage-data.xlsx
│   ├── incidence-rate-data.xlsx
│   ├── reported-cases-data.xlsx
│   ├── vaccine-introduction-data.xlsx
│   └── vaccine-schedule-data.xlsx
│
├── images/
│   ├── coverage/
│   ├── incidence/
│   ├── reported_cases/
│   ├── vaccine_introduction/
│   └── vaccine_schedule/
│
├── notebooks/
│   ├── Coverage_Analysis.ipynb
│   ├── Incidence_Rate_Analysis.ipynb
│   ├── Reported_Cases_Analysis.ipynb
│   ├── Vaccine_Introduction_Analysis.ipynb
│   └── Vaccine_Schedule_Analysis.ipynb
│
├── reports/
│   ├── Business_Questions_and_Answers.docx
│   └── Vaccination_Data_Analysis_Documentation.docx
│
├── sql/
│   ├── Database_and_Table_Creation.sql
│   ├── analysis_queries.sql
│   └── Business_Questions.sql
│
├── README.md
├── requirements.txt
```
> **Note:** Due to GitHub upload limitations, the datasets are provided as a compressed `data.zip` file.

---

## Dataset Information

The project uses five WHO vaccination datasets:

- Vaccination Coverage Data
- Disease Incidence Rate Data
- Reported Cases Data
- Vaccine Introduction Data
- Vaccine Schedule Data

These datasets contain information about different countries, vaccines, diseases, vaccination coverage, incidence rates, and immunization schedules. They provide comprehensive global health metrics that were cleaned and prepared for analysis.

---

## Tools and Technologies

- Python
- Jupyter Notebook
- Pandas
- NumPy
- Matplotlib
- Seaborn
- MySQL
- Power BI
- Git
- GitHub

---

## Project Workflow

1. Data Collection
   - Collected five WHO vaccination datasets in Excel format.

2. Data Cleaning and Preprocessing
   - Removed duplicate records.
   - Handled missing values.
   - Corrected data types.
   - Filtered invalid vaccination coverage values (greater than 100%).
   - Exported cleaned datasets for further analysis.

3. Exploratory Data Analysis (EDA)
   - Performed statistical analysis using Python.
   - Created visualizations to understand vaccination coverage, disease incidence, reported cases, vaccine introduction, and vaccination schedules.

4. SQL Analysis
   - Designed a MySQL database.
   - Created tables for all datasets.
   - Executed analytical, business-oriented, and scenario-based SQL queries.

5. Power BI Dashboard Development
   - Built an interactive dashboard consisting of three report pages.
   - Added KPI cards, slicers, maps, bar charts, line charts, and pie charts.

6. Documentation
   - Documented EDA, SQL analysis, dashboard development, business questions, challenges, and findings.

---

## SQL Files

The SQL folder contains the following files:

### Database_and_Table_Creation.sql

Contains:

- Database creation
- Table creation
- Table schema

### Analysis_Queries.sql

Contains SQL queries used for:

- Coverage analysis
- Incidence rate analysis
- Reported cases analysis
- Vaccine introduction analysis
- Vaccine schedule analysis

### Business_Questions.sql

Contains SQL solutions for:

- Easy level questions
- Medium level questions
- Scenario-based questions

---

## Power BI Dashboard

An interactive Power BI dashboard was developed to visualize vaccination coverage, disease trends, and vaccine insights.

The dashboard was designed to help users interactively explore vaccination coverage, disease incidence, reported cases, vaccine introduction, and immunization trends using dynamic filters and visualizations.

The dashboard consists of three report pages.

### Executive Dashboard

This page provides an overall summary of the vaccination dataset.

**KPI Cards**

- Total Countries
- Vaccination Records
- Average Vaccination Coverage
- Total Reported Cases
- Average Incidence Rate

**Filter**

- Select Year

**Visualizations**

- Global Vaccination Coverage Map
- Year-wise Vaccination Coverage Trend
- Year-wise Reported Cases Trend
- Top 10 Countries by Vaccination Coverage
- WHO Region-wise Vaccine Introduction

---

### Diseases and Incidence Analysis

This page focuses on disease occurrence and incidence trends.

**KPI Cards**

- Average Incidence Rate
- Total Reported Cases

**Filters**

- Select Disease
- Select Year

**Visualizations**

- Disease Incidence Trend
- Reported Cases Trend
- Top 10 Diseases by Reported Cases
- Top 10 Countries by Disease Incidence

---

### Vaccine Insights & Coverage Analysis

This page analyzes vaccine coverage and immunization programs.

**KPI Cards**

- Total Vaccines
- Total WHO Regions

**Filters**

- Select Vaccine
- Select WHO Region
- Select Year

**Visualizations**

- Vaccine Introduction Trend
- Vaccination Coverage Trend
- Top 10 Countries by Vaccine Coverage
- WHO Region-wise Vaccine Introduction
- Target Population Distribution
---

## Key Insights

- Global vaccination coverage has improved significantly over the last four decades.
- Several countries still report comparatively low vaccination coverage and require focused immunization efforts.
- Disease incidence has generally declined as vaccination coverage increased.
- Vaccine introduction timelines differ across WHO regions.
- Measles vaccination coverage has improved but is still below the WHO target of 95%.
- Certain diseases such as measles, pertussis, and typhoid remain highly prevalent in specific countries.
- Booster dose coverage is slightly lower than primary dose coverage.

---

## Challenges Faced

- Handling missing values across multiple WHO datasets.
- Removing vaccination coverage values greater than 100% to ensure meaningful visualizations.
- The Vaccination Schedule dataset did not contain records for the year 2020, resulting in gaps during year-wise analysis.
- Standardizing data collected from different WHO datasets with varying structures and formats.
- Optimizing SQL queries to efficiently process large datasets.
- Selecting appropriate dashboard visuals, as some initial charts did not provide meaningful insights and had to be replaced with more informative visualizations.
- Limited variation in reported cases across certain years made some trend visualizations less noticeable, despite correct filtering.
- Some business and scenario-based questions could not be fully answered because the required information was not available in the provided datasets.

---

## Limitations

- Some WHO datasets contained missing values.
- Certain business and scenario-based questions could not be answered completely because the required attributes were not available in the provided datasets.
- The analysis is based only on the available WHO datasets and does not include real-time vaccination data.

---

## Future Improvements

- Include recent WHO vaccination datasets.
- Add forecasting models for disease prediction.
- Integrate real-time healthcare datasets.
- Develop machine learning models for vaccination trend prediction.

---

## Project Outcome

This project demonstrates the complete data analytics workflow, including data cleaning, exploratory data analysis, SQL-based business analysis, and interactive dashboard development. The final dashboard provides meaningful insights into global vaccination coverage, disease incidence, vaccine introduction, and immunization trends, supporting data-driven healthcare decision-making.

---

## Developed By

**Rupali Rathore**

B.Tech in Information Technology  
Rajasthan Technical University (RTU), Kota

GitHub: [https://github.com/Rupali5253/vaccination-data-analysis-dashboard](https://github.com/Rupali5253/vaccination-data-analysis-dashboard)
