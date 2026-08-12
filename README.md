# Walmart-sales-analysis
 
## Macroeconomic Impacts on Weekly Sales
 
This project analyzes weekly sales data at Walmart stores across the nation to evaluate how the economy impacts weekly sales.
 
**Business Question:** How do economic factors such as CPI, unemployment, and fuel prices impact average weekly sales for each store?
 
---
 
## Dataset Overview
 
- **Store**: Numerical identifier for each retail store
- **Date**: Date of transaction
- **Weekly Sales**: Weekly sales for that given week, in relation to each unique store
- **Holiday_flag**: Indicator for holiday week (1) or non-holiday week (0)
- **Temperature**: Temperature in relation to the week of the sale, and the location of the store
- **Fuel Price**: Fuel price in relation to the week of a sale, and the location of the store
- **CPI**: Consumer Price Index in relation to the region of a store for that given week
- **Unemployment**: Unemployment rate in relation to the region of a store for that given week
---
 
## Methodology / Key Analyses
 
**Weekly Sales Analysis**
- Average weekly sales across all stores
- Average weekly sales overall for each store
- Sales volatility examined for each store - standard deviation for each store was calculated using the overall weekly average to see which store had the most amount of volatility
**Fuel Price**
- Average fuel price across dataset
- Average fuel price overall for each store
**CPI**
- Average consumer price index
- Average consumer price index overall for each store
**Unemployment**
- Average unemployment rate across dataset
- Average unemployment rate overall for each store
---
 
## Skills Demonstrated
 
- Intermediate to Advanced SQL (MySQL)
- CTEs for multi-staged analysis
- Aggregate functions
- CASE-based segmentation
- STDDEV
---
 
## Scope, Design & Decisions
 
**Question:** How do economic factors such as CPI, unemployment, and fuel prices impact average weekly sales for each store?
 
In this project I examine the impact of CPI, unemployment, and fuel prices on the weekly sales of Walmart's stores across the country. I focused on these factors due to them being directly related to the economy; one could argue that the inclusion of time would be necessary, but for the premise of this question — "economic impact" — I chose not to add a time filter or segment data on this premise, as this doesn't add to our conclusion.
 
I did not include an examination of temperature, although one could argue that this could be indicative of location and thus be used to segment data into regions based on the weather. Although weather is an indicator of climate and thus region, it is not the only determinant and cannot be used to accurately segment data on the basis of location (for example, NY and LA could be the same temperature on a given day, but the climates vary widely). Temperature could be looked at as a single impact or factor on weekly sales, but that is separate from the business question, which specifically is looking into macroeconomic factors.
 
---
 
## Key Findings
 
The first query focused on creating a baseline for our analysis by finding the average weekly sales across all stores, and finding the minimum and maximum between the lowest and highest performing stores. The result was an average weekly sale of **$1,046,964**. The lowest performing store (Store 33) had an average of **$259,861**, and the highest performing store (Store 20) had an average of **$2,107,676.87**. This gives a range of **$1,847,815** — showing a large variance in our data. Being aware of this variance, I wanted to test if any of the recorded macroeconomic factors are driving this variance.
 
**Fuel Price:** The average fuel price across our dataset is **3.36**. To test the relationship between fuel price and average weekly sales, I compared the average weekly sales for each store to the average fuel price of each store. Initially, looking at the results the query provided and ordering the results in descending order based on fuel price, I was not able to detect a correlation. I then delved deeper and used the correlation coefficient formula to compare the two variables directly, which gave a **0.07 correlation**, indicating a very weak positive relationship between the two variables. No relationship between store-level average fuel price and store-level average sales existed, contrary to the common assumption that fuel prices suppress consumer spending.
 
**CPI:** Next, I tested the Consumer Price Index against our weekly sales by first calculating the average CPI of the overall data. The average CPI across all stores was **171.58**. I then found the average CPI segmented for each store — the lowest average CPI is **128.67** and the highest average CPI is **219.62**. I created bands that take the range and divide it into three parts (range is 90, so I made 30-point intervals for low, medium, and high) and used a CASE statement to separate CPI to see if there was a relationship there. For the results of the segmented average CPI, the majority of stores fall into the high CPI bucket, which led me to question what the actual average CPI looks like given the skew — showing that the CPI data itself is skewed to the right. I then used the correlation coefficient formula on the two variables directly, which gave a correlation of **-0.08**, signaling a weak correlation.
 
**Unemployment:** Lastly, I tested the impact of unemployment on average weekly sales. I first calculated the average unemployment rate of the Walmart stores — **7.99%**. I then created a table comparing the average weekly sales of each store and the average unemployment of each store. To create a clearer conclusion, I completed a correlation analysis in Python using the table generated, comparing average weekly sales and average unemployment for each store, which gave a negative correlation of **-0.11**, signaling a weak negative correlation.
 
**Sales Volatility (Z-Score):** To conclude the analysis, I wanted to test which stores had the most volatility in average sales, using standard deviation of weekly sales and calculating z-scores. From here, I created a table labeling the z-scores as "high volatility," "moderate volatility," and "typical volatility." Most stores had typical volatility, showing that the data wasn't sensitive to shocks. This can be used to justify why there was little to no correlation between the economic variables and average weekly sales — the sales themselves weren't especially volatile.
 
---
 
## Challenges & What I Learned
 
**Correlation function:** During my queries, I wanted to test the correlation of multiple variables and realized that the version of MySQL I had downloaded cannot perform correlation functions. I had to use Python instead — importing pandas, using the SQL query output as input into a DataFrame, then calculating correlation between specific columns.
 
---
 
## Tools & Technologies
 
- MySQL
- SQL
- GitHub
- Python
