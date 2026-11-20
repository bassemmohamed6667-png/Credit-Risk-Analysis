--1--
select * from [cleaned_credit_ csv]
--2 Overall Default Rate--
SELECT COUNT(*) AS Total_Loans,
    SUM(CASE WHEN loan_status = '1' THEN 1 ELSE 0 END) AS Defaulted_Loans,
    SUM(CASE WHEN loan_status = '1' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS Default_Rate
FROM [cleaned_credit_ csv];
--3 Income Statistics--
SELECT
    MIN(CAST(person_income AS FLOAT)) AS Min_Income,
    MAX(CAST(person_income AS FLOAT)) AS Max_Income,
    AVG(CAST(person_income AS FLOAT)) AS Avg_Income
FROM [cleaned_credit_ csv];
--4 Income vs Default--
SELECT CASE WHEN CAST(person_income AS FLOAT) < 40000 THEN 'Low Income' WHEN CAST(person_income AS FLOAT) < 80000 THEN 'Medium Income' ELSE 'High Income' END AS Income_Group,
COUNT(*) AS Total_Loans,
SUM(CASE WHEN loan_status = '1' THEN 1 ELSE 0 END) AS Defaulted_Loans,
SUM(CASE WHEN loan_status = '1' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS Default_Rate
FROM [cleaned_credit_ csv]
GROUP BY CASE WHEN CAST(person_income AS FLOAT) < 40000 THEN 'Low Income' WHEN CAST(person_income AS FLOAT) < 80000 THEN 'Medium Income' ELSE 'High Income' END;
--5 Average Loan Amount --
SELECT loan_status, AVG( CAST(loan_amnt AS FLOAT)) AS Average_Loan_Amount
FROM [cleaned_credit_ csv]
GROUP BY loan_status;
--6 Loan-to-Income Ratio vs Default--
SELECT CASE WHEN CAST(loan_percent_income AS FLOAT) < 0.20 THEN 'Low Ratio' WHEN CAST(loan_percent_income AS FLOAT) < 0.40 THEN 'Medium Ratio' ELSE 'High Ratio' END AS Ratio_Group,
COUNT(*) AS Total_Loans,
SUM(CASE WHEN loan_status = '1' THEN 1 ELSE 0 END) AS Defaulted_Loans,
SUM(CASE WHEN loan_status = '1' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS Default_Rate
FROM [cleaned_credit_ csv]
GROUP BY CASE WHEN CAST(loan_percent_income AS FLOAT) < 0.20 THEN 'Low Ratio' WHEN CAST(loan_percent_income AS FLOAT) < 0.40 THEN 'Medium Ratio' ELSE 'High Ratio' END;
--7 Previous Default vs Current Default--
SELECT cb_person_default_on_file, COUNT(*) AS Total_Loans,
SUM(CASE WHEN loan_status = '1' THEN 1 ELSE 0 END) AS Defaulted_Loans,
SUM(CASE WHEN loan_status = '1' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS Default_Rate
FROM [cleaned_credit_ csv]
GROUP BY cb_person_default_on_file
ORDER BY Default_Rate DESC;
--8 Home Ownership vs Default--
SELECT
    person_home_ownership,
    COUNT(*) AS Total_Loans,
    SUM(CASE WHEN loan_status = '1' THEN 1 ELSE 0 END) AS Defaulted_Loans,
    ROUND(SUM(CASE WHEN loan_status = '1' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Default_Rate
FROM [cleaned_credit_ csv]
GROUP BY person_home_ownership
ORDER BY Default_Rate DESC;
---9 Loan Intent vs Default---
SELECT 
    loan_intent,
    COUNT(*) AS total_loans,
    SUM(CAST(loan_status AS INT)) AS defaults,
    CAST(
        SUM(CAST(loan_status AS INT)) * 100.0 / COUNT(*)
        AS DECIMAL(10,2)
    ) AS default_rate
FROM [cleaned_credit_ csv]
GROUP BY loan_intent
ORDER BY default_rate DESC;

