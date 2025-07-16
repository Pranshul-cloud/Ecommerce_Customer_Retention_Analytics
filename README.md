# 📊 E-commerce Customer Retention Analytics: Loyalty, Churn, and Revenue Impact

### 1️ 📌 Project Overview  
This project simulates a real-world business case for **ByteCart**, a fictional e-commerce brand.  
It explores retention patterns, churn risk signals, and revenue impact using behavioral data — laying the foundation for strategic recommendations to improve customer lifetime value.

 ---
 
### 2️ ❓ Problem Statement  
ByteCart has experienced a decline in customer retention, with fewer users making repeat purchases and a rising percentage disengaging shortly after their first transaction. The churn rate has increased notably across key segments, directly affecting average customer lifetime value. This erosion in user loyalty is contributing to decreased revenue and weakening overall profitability — prompting the need for a focused analysis to identify root causes and guide strategic interventions.

---

### 3️ 🎯 Business Objectives

This project aims to address ByteCart’s retention challenges through targeted analysis of customer data. The key objectives are:

- Identify the key drivers behind the decrease in retention rate  
- Analyze behavioral and demographic factors contributing to increasing customer churn percentage  
- Quantify the financial impact of churn on overall revenue and customer lifetime value

- ---

### 4️ 📂 Dataset Overview

**Key columns:**
- `Customer_ID`: Unique identifier for each customer  
- `Product_ID`: Product most frequently associated with the customer  
- `Transaction_ID`: Reference to recent transaction  
- `Purchase_Frequency`: Number of purchases over a set period  
- `Average_Order_Value`: Mean value of a customer's orders  
- `Time_Between_Purchases`: Average gap between purchases  
- `Churn_Probability`: Likelihood of churn (0 to 1 scale)  
- `Lifetime_Value`: Total estimated revenue a customer will generate  
- `Region`, `Season`, `Preferred_Purchase_Times`: Behavioral and demographic segmentation fields  
- `Retention_Strategy`: Strategy (if any) currently assigned to retain that customer

  
**Data Source:**  
[Kaggle – Sales and Customer Insights Dataset](https://www.kaggle.com/datasets/imranalishahh/sales-and-customer-insights) 

---

### 5️ 🛠️ Tools & Techniques Used

This project integrates both technical and business-oriented tools to uncover customer retention patterns and revenue impact:

- **Excel** – For data cleaning, formatting, and creation of calculated columns  
- **SQL** – Used for churn segmentation and filtering of high-risk customer groups  
- **Power BI** – For data analysis, visual exploration, and insight presentation  
- **Business Thinking** – To interpret customer behavior, identify value-impacting segments, and design actionable retention strategies

- ---

### 6️ 🔽 Strategic Segmentation & Filtering

To enable focused and actionable insights, the customer dataset was segmented into three targeted analytical layers — each aligned with a key business question. This modular structure enhances interpretability, sharpens decision-making, and supports precise retention strategy formulation.



🔹 **Source Dataset:** `customer_retention_data`

This is the unified behavioral and transactional database used across all analyses. It captures customer activity patterns, value estimates, and segment traits, forming the foundation for downstream churn analytics and financial risk modeling.

📂 [View Dataset → `customer_retention_data.csv`](https://github.com/Pranshul-cloud/Ecommerce_Customer_Retention_Analytics/blob/main/01_data/1.1_customer_retention_raw.csv)



#### 📁 Segment 1: retention_strategy_impact

**Purpose:** Evaluate how different retention strategies are performing by comparing churn rates and customer value across segments.

- **Key Dimensions:** Retention Strategy, Churn Flag  
- **Metrics:** Customer Count, Avg. Lifetime Value  
- **Strategic Angle:** Helps identify low-performing retention programs that may need revamp or redeployment.

📂 [View Segment → `retention_strategy_impact.csv`](https://github.com/Pranshul-cloud/Ecommerce_Customer_Retention_Analytics/blob/main/01_data/1.2_retention_strategy_impact.csv)



#### 📁 Segment 2: Churn by segments

**Purpose:** Identify specific geographic and behavioral patterns driving elevated churn levels.

- **Key Dimensions:** Region, Seasonality, Category Engagement  
- **Metric:** Customer Count  
- **Strategic Angle:** Enables geographic or seasonal targeting of loyalty campaigns and behavioral nudges.

📂 [View Segment → `churn_by_segments.csv`](https://github.com/Pranshul-cloud/Ecommerce_Customer_Retention_Analytics/blob/main/01_data/1.3_churn_by_segments.csv)



#### 📁 Segment 3: Revenue at Risk

**Purpose:** Quantify potential financial loss based on churn probability and customer lifetime value.

- **Fields Used:** Customer ID, Predicted Churn, Estimated Value  
- **Formula Applied:** `Revenue at Risk = Lifetime Value × Churn Probability`  
- **Strategic Angle:** Prioritizes high-value churn-risk customers for retention focus to protect revenue.

📂 [View Segment → `revenue_at_risk.csv`](https://github.com/Pranshul-cloud/Ecommerce_Customer_Retention_Analytics/blob/main/01_data/1.4_revenue_at_risk.csv)

---

### 7 🧮 SQL-Driven Data Extraction & Segmentation
Purpose: This segment outlines how SQL was used to extract targeted data for churn insights, retention impact analysis, and revenue risk modeling. Structured queries enabled focused filtering, segmentation, and aggregation to align directly with business objectives.

📄 [Complete Query File: sql_queries.sql](https://github.com/Pranshul-cloud/Ecommerce_Customer_Retention_Analytics/blob/main/02_data_extraction_sql/sql_queries)

### Samply Query
 ![Sample Query](https://github.com/Pranshul-cloud/Ecommerce_Customer_Retention_Analytics/blob/main/03_visuals/Screenshot%202025-07-16%20075138.png)
