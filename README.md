#  E-commerce Customer Retention Analytics: Loyalty, Churn, and Revenue Impact

###  🧠1️  Project Background 
ByteCart, a mid-scale e-commerce brand, is experiencing rising churn and declining repeat purchases, resulting in significant revenue loss and weakened customer loyalty.  
This project uses SQL-driven segmentation and churn modeling to identify churn patterns, quantify revenue at risk, and evaluate retention strategies, enabling data-backed decisions to improve retention and maximize lifetime value.    
 
---

###  📝2  Exevutive Summary
ByteCart faced a churn rate of **52.07%**, with retention stuck at **33.33%**, risking over **$3.17M** in revenue.  
The **discount strategy** delivered the highest LTV (~₹5.5K) but was underutilized.  
**South America** and **Summer** showed peak churn (52%+), while **Europe** retained best (51.72% low churn).  
High-risk categories like **Sports** and **Clothing** showed early disengagement.  
Targeted interventions are key to lifting retention and protecting high-LTV customers.

---

### 🎯3️  Business Objectives

This project aims to address ByteCart’s retention challenges through targeted analysis of customer data. The key objectives are:

- Identify the key drivers behind the decrease in retention rate  
- Analyze behavioral and demographic factors contributing to increasing customer churn percentage  
- Quantify the financial impact of churn on overall revenue and customer lifetime value

- ---

### 🧩4 Strategic Segmentation & Filtering

To enable focused and actionable insights, the customer dataset was segmented into three targeted analytical layers — each aligned with a key business question. This modular structure enhances interpretability, sharpens decision-making, and supports precise retention strategy formulation.



🔹 **📦Source Dataset:** `customer_retention_data`

This is the unified behavioral and transactional database used across all analyses. It captures customer activity patterns, value estimates, and segment traits, forming the foundation for downstream churn analytics and financial risk modeling.

 [View Dataset → `customer_retention_data.csv`](https://github.com/Pranshul-cloud/Ecommerce_Customer_Retention_Analytics/blob/main/01_data/1.1_customer_retention_raw.csv)



####  Segment 4.1: retention_strategy_impact

**Purpose:** Evaluate how different retention strategies are performing by comparing churn rates and customer value across segments.

- **Key Dimensions:** Retention Strategy, Churn Flag  
- **Metrics:** Customer Count, Avg. Lifetime Value  
- **Strategic Angle:** Helps identify low-performing retention programs that may need revamp or redeployment.

 [View Segment → `retention_strategy_impact.csv`](https://github.com/Pranshul-cloud/Ecommerce_Customer_Retention_Analytics/blob/main/01_data/1.2_retention_strategy_impact.csv)



####  Segment 4.2: Churn by segments

**Purpose:** Identify specific geographic and behavioral patterns driving elevated churn levels.

- **Key Dimensions:** Region, Seasonality, Category Engagement  
- **Metric:** Customer Count  
- **Strategic Angle:** Enables geographic or seasonal targeting of loyalty campaigns and behavioral nudges.

 [View Segment → `churn_by_segments.csv`](https://github.com/Pranshul-cloud/Ecommerce_Customer_Retention_Analytics/blob/main/01_data/1.3_churn_by_segments.csv)



####  Segment 4.3: Revenue at Risk

**Purpose:** Quantify potential financial loss based on churn probability and customer lifetime value.

- **Fields Used:** Customer ID, Predicted Churn, Estimated Value  
- **Formula Applied:** `Revenue at Risk = Lifetime Value × Churn Probability`  
- **Strategic Angle:** Prioritizes high-value churn-risk customers for retention focus to protect revenue.

 [View Segment → `revenue_at_risk.csv`](https://github.com/Pranshul-cloud/Ecommerce_Customer_Retention_Analytics/blob/main/01_data/1.4_revenue_at_risk.csv)

---

### 🛠5 SQL-Driven Data Extraction & Segmentation
Purpose: This segment outlines how SQL was used to extract targeted data for churn insights, retention impact analysis, and revenue risk modeling. Structured queries enabled focused filtering, segmentation, and aggregation to align directly with business objectives.

📄 [Complete Query File: sql_queries.sql](https://github.com/Pranshul-cloud/Ecommerce_Customer_Retention_Analytics/blob/main/02_data_extraction_sql/sql_queries)

  #### Samply Query
 ![Sample Query](https://github.com/Pranshul-cloud/Ecommerce_Customer_Retention_Analytics/blob/main/03_visuals/3.1_sql.png)

 ---

 ## 📊6 Insights- Deep Dive

### 6.1 Retention Strategy Impact
![q](https://github.com/Pranshul-cloud/Ecommerce_Customer_Retention_Analytics/blob/main/03_visuals/3.2_retention_strategy_impact.png)
#### 💡Business Insights

- Discount strategy leads to the highest average lifetime value (~₹5.5K).  
- Loyalty Program shows the lowest lifetime value among retention strategies.  
- Customers with high retention (low churn) have the highest LTV (~₹5K+).

####  Key Performance Indicators (KPIs)

- **Average Lifetime Value**: ₹5,080.28  
- **Retention Rate**: 33.33%  
- **Best Retention Strategy**: Discount

 
---

### 6.2 Customer Churn Segemnts
- ![b](https://github.com/Pranshul-cloud/Ecommerce_Customer_Retention_Analytics/blob/main/03_visuals/3.3_customer_churn_segment.png)
- ##  💡Business Insights

- **Sports** and **Clothing** categories have the **highest High Churn** rates.   
- **South America** has the **highest churn** (30% Medium + 22.97% High).  
- **Europe** has the **best retention**, with 51.72% Low Churn customers.  
- **Summer** shows the **highest churn seasonally**, with 32.54% Medium and 19.82% High churn.  


##  Key Performance Indicators (KPIs)

- **Customer Count**: 1,494  
- **Overall Churn Rate (High + Medium)**: 52.07%  
- **High Churn Rate Alone**: 23.29%  
- **Best Performing Season (Retention)**: Fall – 48.89% Low Churn  
- **Worst Performing Region (Churn)**: South America – 52.03% Churn (High + Medium)


---

### 6.3 Revenue at Risk
![a](https://github.com/Pranshul-cloud/Ecommerce_Customer_Retention_Analytics/blob/main/03_visuals/3.4_revenue_at_risk.png)
##  💡Business Insights

- Top 10 customers alone represent a significant chunk of total revenue at risk.  
- Revenue at risk increases with churn probability — strong upward trend observed.  
- Several customers with churn probability > 0.7 pose immediate financial threat.  


##  Key Performance Indicators (KPIs)

- **Total Revenue at Risk**: $3,175,578.48  
- **High-Risk Customer Definition**: Churn Probability > 0.7

---

## ✅7 Recommendations

- **Problem:** The **discount strategy** yields a higher average lifetime value (**~₹5,500**) compared to the overall average (**₹5,000**), yet it remains **underleveraged**.  
  **Impact:** Retention rate is stuck at **33.33%**, indicating **missed revenue opportunities** and weakened customer loyalty.  
  **Recommendation:** Scale up the **discount strategy** for **high-churn** and **new customers** to drive **retention** and maximize **lifetime value**.

- **Problem:** Churn is highest in **South America** (**52%**) and during **Summer** (**52%**), especially in **Sports and Clothing** categories — key segments showing early disengagement.  
  **Impact:** Over **half the customers** are churning, leading to significant **revenue loss** and **poor retention** in **high-potential categories and regions**.  
  **Recommendation:** Run **targeted retention campaigns** in **South America during Summer**, focused on **Sports and Clothing customers**. Use tactics like **personalized discounts**, **loyalty perks**, and **re-engagement offers** to reduce churn and improve **Lifetime Value (LTV)**.

- **Problem:** **Top 10 customers** contribute a major chunk of revenue, but several face **high churn risk** (**probability > 0.7**).  
  **Impact:** Around **$3.17M** in revenue is at risk, threatening both **cash flow** and **growth stability**.  
  **Recommendation:** Act fast with **tailored retention offers** for **high-risk, high-value customers** to **prevent churn** and **protect key revenue**.

  


