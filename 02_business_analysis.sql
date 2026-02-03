-- =====================================
-- File: 02_business_analysis.sql
-- Project: Loan Approval Analysis
-- =====================================

-- Q1. How does CIBIL score differ between approved and rejected loans?
SELECT
    CASE
        WHEN cibil_score < 600 THEN 'Low'
        WHEN cibil_score BETWEEN 600 AND 700 THEN 'Medium'
        ELSE 'High'
    END AS cibil_band,
    TRIM(loan_status) AS loan_status,
    COUNT(*) AS total_applicants
FROM loan_raw
GROUP BY cibil_band, loan_status
ORDER BY cibil_band, loan_status;


-- Q2. Is average income higher for approved loans?
SELECT
    TRIM(loan_status) AS loan_status,
    COUNT(*) AS total_applicants,
    ROUND(AVG(income_annum), 2) AS avg_income
FROM loan_raw
GROUP BY loan_status;


-- Q3. How does loan approval change across income levels?
SELECT
    CASE
        WHEN income_annum < 300000 THEN 'Low Income'
        WHEN income_annum BETWEEN 300000 AND 700000 THEN 'Middle Income'
        ELSE 'High Income'
    END AS income_band,
    TRIM(loan_status) AS loan_status,
    COUNT(*) AS total_applicants
FROM loan_raw
GROUP BY income_band, loan_status
ORDER BY income_band, loan_status;


-- Q4. Do graduates have higher loan approval rates?
SELECT
    education,
    COUNT(*) AS total_applications,
    COUNT(CASE WHEN TRIM(loan_status) = 'Approved' THEN 1 END) AS approved_loans,
    ROUND(
        COUNT(CASE WHEN TRIM(loan_status) = 'Approved' THEN 1 END) * 100.0 / COUNT(*),
        2
    ) AS approval_rate_percentage
FROM loan_raw
GROUP BY education;


-- Q5. Does self-employed status impact approval?
SELECT
    self_employed,
    TRIM(loan_status) AS loan_status,
    COUNT(*) AS total_applicants
FROM loan_raw
GROUP BY self_employed, loan_status
ORDER BY self_employed, loan_status;


-- Q6. Are larger loan amounts more likely to be rejected?
SELECT
    CASE
        WHEN loan_amount < 20000000 THEN 'Lower Loan Amount'
        ELSE 'Higher Loan Amount'
    END AS loan_amount_group,
    TRIM(loan_status) AS loan_status,
    COUNT(*) AS total_applicants
FROM loan_raw
GROUP BY loan_amount_group, loan_status
ORDER BY loan_amount_group, loan_status;


-- Q7. Do approved applicants hold higher total asset value?
SELECT
    TRIM(loan_status) AS loan_status,
    ROUND(
        AVG(
            residential_assets_value +
            commercial_assets_value +
            luxury_assets_value +
            bank_asset_value
        ), 2
    ) AS avg_total_assets
FROM loan_raw
GROUP BY loan_status;


-- Q8. Income and CIBIL score combined impact
SELECT
    CASE
        WHEN income_annum >= 700000 THEN 'High Income'
        ELSE 'Low Income'
    END AS income_group,
    CASE
        WHEN cibil_score >= 700 THEN 'High CIBIL'
        ELSE 'Low CIBIL'
    END AS cibil_group,
    TRIM(loan_status) AS loan_status,
    COUNT(*) AS total_applicants
FROM loan_raw
GROUP BY income_group, cibil_group, loan_status
ORDER BY income_group, cibil_group, loan_status;
