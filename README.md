# 📊 E-commerce Customer Retention Analytics: Loyalty, Churn, and Revenue Impact

### 1️⃣ 📌 Project Overview  
This project simulates a real-world business case for **ByteCart**, a fictional e-commerce brand.  
It explores retention patterns, churn risk signals, and revenue impact using behavioral data — laying the foundation for strategic recommendations to improve customer lifetime value.

 ---
 
### 2️⃣ ❓ Problem Statement  
ByteCart has experienced a decline in customer retention, with fewer users making repeat purchases and a rising percentage disengaging shortly after their first transaction. The churn rate has increased notably across key segments, directly affecting average customer lifetime value. This erosion in user loyalty is contributing to decreased revenue and weakening overall profitability — prompting the need for a focused analysis to identify root causes and guide strategic interventions.

---

### 3️⃣ 🎯 Business Objectives

This project aims to address ByteCart’s retention challenges through targeted analysis of customer data. The key objectives are:

- Identify the key drivers behind the decrease in retention rate  
- Analyze behavioral and demographic factors contributing to increasing customer churn percentage  
- Quantify the financial impact of churn on overall revenue and customer lifetime value

- ---

### 4️⃣ 📂 Dataset Overview

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

### 5️⃣ 🛠️ Tools & Techniques Used

This project integrates both technical and business-oriented tools to uncover customer retention patterns and revenue impact:

- **Excel** – For data cleaning, formatting, and creation of calculated columns  
- **SQL** – Used for churn segmentation and filtering of high-risk customer groups  
- **Power BI** – For data analysis, visual exploration, and insight presentation  
- **Business Thinking** – To interpret customer behavior, identify value-impacting segments, and design actionable retention strategies

- ---

6️⃣ Customer Segmentation & Filtering
To support targeted retention analysis, the raw behavioral dataset was systematically segmented into focused analytical views — each aligned with a specific business objective. This approach ensures clean separation of insight layers and facilitates clearer storytelling for decision-makers.

🔹 Source Dataset: customer_retention_data
The full dataset includes behavioral, transactional, and demographic attributes for ByteCart’s customer base. It serves as the single source of truth for all downstream analytics.

Fields of Interest:
Customer_ID, Purchase_Frequency, Average_Order_Value, Time_Between_Purchases, Churn_Probability, Lifetime_Value, Region, Season, Most_Frequent_Category, Retention_Strategy

Download: customer_retention_data.csv

📁 Segment 1: Churn by Retention Strategy
Purpose: Evaluate the relative performance of existing retention strategies by comparing churn rates and customer value across groups.

Key Dimensions: Retention_Strategy, Churn_Flag

Metrics: Customer_Count, Avg_Lifetime_Value

Strategic Angle: Identifies underperforming strategies that may need redesign or reallocation of resources.

View Dataset → churn_by_segment_summary.csv

📁 Segment 2: Churn by Region & Behavioral Patterns
Purpose: Detect geographic, seasonal, and behavioral clusters with elevated churn risk.

Key Dimensions: Region, Most_Frequent_Category, Season, Churn_Flag

Metric: Customer_Count

Strategic Angle: Enables ByteCart to localize churn mitigation strategies and tailor messaging based on consumer behavior and timing.

View Dataset → churn_by_region_and_category.csv

📁 Segment 3: Revenue at Risk
Purpose: Quantify potential financial exposure from customers most likely to churn.

Fields: Customer_ID, Lifetime_Value, Churn_Probability, Revenue_at_Risk

Calculation: Revenue_at_Risk = Lifetime_Value × Churn_Probability

Strategic Angle: Prioritizes high-value accounts for proactive retention efforts, ensuring better ROI on loyalty programs.

View Dataset → revenue_at_risk.csv



