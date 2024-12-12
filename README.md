# Mitron-Bank-Credit-Card-Strategy-Analysis

## **Project Overview**
This project analyzes customer spending data to provide actionable insights for Mitron Bank. The insights help tailor new credit card offerings based on spending trends, payment preferences, and demographics.

---

## **Dataset Description**
The project uses two datasets:
1. **dim_customers.csv**: Contains customer demographic information.
   - **customer_id**: Unique ID for each customer
   - **age_group**: Age group of the customer
   - **city**: Customer's city of residence
   - **occupation**: Customer's profession
   - **gender**: Gender of the customer
   - **marital_status**: Marital status of the customer
   - **average_income**: Customer's monthly average income

2. **fact_spends.csv**: Contains customer spending details.
   - **customer_id**: Links to customer demographics
   - **month**: Month of spending
   - **category**: Spending category
   - **payment_type**: Type of payment used
   - **spend**: Total spend amount

---

## **Key Insights**
1. **Top Spending Categories**:
   - Bills, Groceries  and Electronics are the leading spending categories.

2. **Payment Preferences**:
   - Customers prefer **Credit Cards**, showing the highest average spend.

3. **City-Wise Spending**:
   - **Mumbai** and **Delhi-NCR** have the highest customer spending.

4. **Age Group Trends**:
   - The **25-34** age group contributes the most to total spending.

5. **Occupation Insights**:
   - Salaried IT Employees and Business Owners are the highest spenders.

---

## **Visualizations**
Below are some key visualizations generated using Python and Seaborn/Matplotlib:

### 1. Average Spend by Payment Type
![Average Spend by Payment Type](https://github.com/user-attachments/assets/828201d0-097f-4a05-9c3b-2bc6ae52e083)

### 2. Total Spend by City
![Total Spending by City](https://github.com/user-attachments/assets/e0813324-eb43-4172-ba8d-0c2fe5ab9237)

### 3. Spend Distribution Across Age Groups
![Total Spending by Age Group](https://github.com/user-attachments/assets/d2fbff5d-d2fe-461c-89ce-ad42740b5c28)

---

## **Project Tools**
- **Data Analysis**: MySql
- **Data Visualization**: Python (Pandas, NumPy),Matplotlib, Seaborn


---

## **Conclusion**
This analysis provides insights into spending behaviors, payment preferences, and key customer demographics. These findings can help Mitron Bank design targeted credit card offerings to attract and retain high-value customers.

---

## **How to Use**
1. Place the datasets (`dim_customers.csv` and `fact_spends.csv`) in the project folder.
2. Run the Python script (`spend_analysis.ipynb`) to generate the visualizations.
3. Refer to the visuals and conclusions for business insights.

---


