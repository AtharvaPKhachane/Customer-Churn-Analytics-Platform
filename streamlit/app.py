import streamlit as st

st.set_page_config(
    page_title="Customer Churn Analytics Platform",
    page_icon="📊"
)

st.title("📊 Customer Churn Analytics Platform")

st.header("Project Overview")

st.write("""
This project analyzes customer churn behavior using:
- Python
- SQL
- Power BI
- Machine Learning

Dataset Size: 100,000 Customers
Model: Random Forest Classifier
Accuracy: 74.08%
""")

st.header("Key Insights")

st.write("""
✅ Month-to-month customers churn the most

✅ Higher monthly charges increase churn probability

✅ Longer tenure improves retention

✅ Contract type is the strongest churn driver
""")

st.header("Business Recommendations")

st.write("""
- Convert customers to annual contracts
- Offer loyalty rewards
- Focus on high-risk segments
- Reduce churn among new customers
""")