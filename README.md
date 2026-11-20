# Credit Risk Analysis

## Project Overview

A credit risk analysis project focused on identifying patterns associated with loan default and understanding key factors that may indicate higher credit risk.

The project follows a complete workflow from data exploration and cleaning to SQL analysis and Power BI visualization.

## Objective

To analyze customer and loan characteristics and identify segments with higher default risk using data-driven analysis.

## Tools

- **Excel** — Data Exploration
- **Python (Pandas)** — Data Cleaning
- **SQL** — Data Analysis
- **Power BI** — Data Visualization

## Project Workflow

**Excel → Python → SQL → Power BI**

### 1. Excel — Data Exploration

Initial exploration of the dataset, including:

- Descriptive statistics
- Duplicate and outlier checks
- Pivot table analysis
- Default-rate exploration across customer and loan segments

### 2. Python — Data Cleaning

Python and Pandas were used to prepare the dataset by:

- Identifying missing values
- Checking duplicates
- Handling outliers
- Imputing missing values
- Verifying the cleaned dataset

### 3. SQL — Data Analysis

SQL was used to analyze default risk across key customer and loan characteristics, including:

- Overall default rate
- Income level
- Loan amount
- Loan-to-income ratio
- Home ownership
- Loan purpose
- Previous default history
- Loan grade

### 4. Power BI — Dashboard

An interactive dashboard was developed to visualize:

- Portfolio overview
- Default rate
- Loan status
- Income and default risk
- Loan-to-income ratio
- Previous default history
- Home ownership
- Loan purpose
- Loan grade
### Dashboard Preview

#### Portfolio Overview

![Portfolio Overview](05_Dashboard_Preview/Page%201.png)

#### Risk Factors Analysis

![Risk Factors Analysis](05_Dashboard_Preview/Page%202.png)

## Key Business Questions

- What is the overall default rate?
- Does income level affect default risk?
- How does loan-to-income ratio relate to default risk?
- Which home ownership groups have the highest default rates?
- Which loan purposes are associated with higher default risk?
- Does previous default history affect current default risk?
- How does loan grade relate to default risk?
- Which customer segments show the highest default risk?

## Key Findings

- Overall default rate: **21.87%**
- Low-income borrowers showed a higher default rate than medium- and high-income borrowers.
- Higher loan-to-income ratios were associated with higher default risk.
- Borrowers with previous defaults showed a substantially higher default rate.
- Renters showed higher default rates than homeowners.
- Default rates varied significantly across loan purposes and loan grades.

## Project Structure

```text
Credit-Risk-Analysis/
│
├── 01_Excel_Exploration/
│   └── credit_exploration.xlsx
│
├── 02_Python_Cleaning/
│   └── FINAL_PROJECT.ipynb
│
├── 03_SQL_Analysis/
│   └── FINAL_PROJECT.sql
│
└── 04_PowerBI_Dashboard/
    └── FINAL_PROJECT.pbix
```

## Skills Demonstrated

- Data Exploration
- Data Cleaning
- SQL Analysis
- Power BI
- Data Visualization
- Business Analysis
- Credit Risk Analysis
- Customer Segmentation
