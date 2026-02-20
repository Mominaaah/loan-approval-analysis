#  Loan Approval Risk Analysis (SQL + Excel Dashboard)

## 📷 Dashboard Preview

![Dashboard Preview](images/dashboard_preview.png)

##  Project Overview

This project analyzes loan application data to identify key factors influencing loan approval decisions.

The analysis was conducted using **PostgreSQL for data exploration and business analysis**, followed by the creation of an **interactive Excel dashboard** to visualize risk patterns and segment performance.

The objective is to uncover approval drivers and highlight high-risk applicant segments using a structured analytics workflow.


##  Business Objectives

This project answers the following key lending questions:

- How does credit score (CIBIL band) impact loan approval rates?
- Is higher income associated with higher approval probability?
- Do graduates have higher approval rates?
- Does loan amount influence rejection?
- How do assets influence approval decisions?
- Which customer segments represent higher credit risk?

##  Tools & Technologies

- **PostgreSQL**
- **pgAdmin**
- **Microsoft Excel**
  - Pivot Tables
  - KPI Cards
  - Slicers
  - Conditional Formatting

## Project Workflow

###  Data Exploration (SQL)
- Reviewed dataset structure
- Checked for missing and inconsistent values
- Analyzed categorical distributions
- Validated approval flag logic

###  Business Analysis (SQL)
- Aggregated approval rates by segment
- Used `CASE` statements for categorization
- Performed GROUP BY analysis across:
  - CIBIL Band
  - Income Group
  - Education
  - Asset Strength
  - Employment Status
- Calculated approval percentages

###  Data Preparation
- Standardized categories
- Structured clean dataset for reporting
- Exported cleaned data for visualization

###  Dashboard Development (Excel)
- Designed executive-style KPI cards
- Built approval rate segmentation charts
- Implemented interactive slicers
- Created multi-level risk comparison views

##  Dashboard Features

The Excel dashboard includes:

- Total Applicants
- Total Approved & Rejected
- Overall Approval Rate
- Average Loan Amount
- Approval Rate by CIBIL Band
- Approval Rate by Income Group
- Education vs Approval Analysis
- Self-Employed vs Approval Comparison
- Income × CIBIL Risk Segmentation
- Interactive Filters (Slicers)

##  Key Insights

- **Credit score is the strongest approval driver.**
- Low CIBIL applicants show significantly lower approval rates (~35%).
- High and Good CIBIL bands maintain consistent approval levels (~99%).
- Income and education influence approvals, but less than credit score.
- Asset strength moderately improves approval likelihood.

##  Skills Demonstrated

### SQL Skills
- Data exploration & profiling
- Aggregations and GROUP BY
- CASE statements
- Percentage calculations
- Business-driven query design

### Excel Skills
- Dashboard design principles
- KPI development
- Pivot table modeling
- Interactive filtering (Slicers)
- Risk segmentation visualization

##  Business Value

This project demonstrates how structured data analysis can help financial institutions:

- Identify high-risk segments
- Improve approval strategies
- Optimize risk-based lending
- Support data-driven decision-making

##  Conclusion

This project reflects a complete analytics workflow:

**Raw Data → SQL Analysis → Business Insights → Interactive Dashboard**

