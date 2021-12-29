import streamlit as st
import pandas as pd
import numpy as np
import plotly.express as px



st.title('Employment gap foreign vs native born')


data = pd.read_csv('/content/gap_rate.csv')
data.drop(columns='Unnamed: 0', inplace=True)
data.fillna(0, inplace=True)


filtered_data = data[(data['YEAR'] == 2000) & (data['RATE']=='N_RATE')&(data['GENDER']=='TOT')]
fig =px.bar(filtered_data, x='Country', y='GAP')
st.plotly_chart(fig)
