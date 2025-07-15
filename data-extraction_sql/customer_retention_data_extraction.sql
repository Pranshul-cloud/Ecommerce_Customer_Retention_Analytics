---------------------------------------------------
----------------------------------------------------
-- Project: E-commerce Customer Retention Analytics
-- Focus  : To extract to required databases for the further anlysis
-- Analyst : PranshuL Joshi
----------------------------------------------------
----------------------------------------------------
-- Business Objective 1- Identify key drivers behind the decrease in retention rate
-- Required Dataset/Table - churn_by_segment_summary
SELECT Retention_Strategy ,
	    CHURN_FLAG ,
		COUNT(*)AS CUSTOMER_COUNT ,
		AVG(LIFETIME_VALUE)
FROM customer_retention_data
GROUP BY Retention_Strategy , CHURN_FLAG;     

----------------------------------------------------
----------------------------------------------------
--  Business Objective 2 - Analyze behavioral and demographic factors contributing to churn
--  Required Dataset/Table - churn_by_region_and_category   
SELECT CHURN_FLAG,
	    REGION ,
        MOST_FREQUENT_CATEGORY,
        SEASON ,
        COUNT(*)AS CUSTOMER_COUNT
FROM CUSTOMER_RETENTION_DATA
GROUP BY CHURN_FLAG , REGION , MOST_FREQUENT_CATEGORY , SEASON;

-----------------------------------------------------
-----------------------------------------------------
--  Business Objective 3 - Quantify the financial impact of churn on revenue and LTV
--  Required Dataset/Table - revenue_at_risk
SELECT Customer_ID,
        LIFETIME_VALUE,
      CHURN_PROBABILITY,
      (LIFETIME_VALUE * CHURN_PROBABILITY)AS REVENUE_AT_RISK
FROM CUSTOMER_RETENTION_DATA;

----------------------------------------------------------
----------------------------------------------------------


