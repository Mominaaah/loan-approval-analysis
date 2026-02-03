-- =====================================
-- File: 01_data_overview.sql
-- Project: Loan Approval Analysis
-- Database: PostgreSQL
-- =====================================

-- Total number of loan applications
SELECT COUNT(*) AS total_applications
FROM loan_raw;

-- Distribution of loan status
SELECT
    TRIM(loan_status) AS loan_status,
    COUNT(*) AS total_applicants
FROM loan_raw
GROUP BY TRIM(loan_status);

-- Education level distribution
SELECT
    education,
    COUNT(*) AS total_applicants
FROM loan_raw
GROUP BY education;

-- Self-employed vs salaried applicants
SELECT
    self_employed,
    COUNT(*) AS total_applicants
FROM loan_raw
GROUP BY self_employed;

-- CIBIL score distribution
SELECT
    MIN(cibil_score) AS min_cibil,
    MAX(cibil_score) AS max_cibil,
    ROUND(AVG(cibil_score), 2) AS avg_cibil
FROM loan_raw;
