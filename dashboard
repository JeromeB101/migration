import streamlit as st
import pandas as pd
import numpy as np
import plotly.express as px
st.title('Employment gap foreign vs native born')


@st.cache(allow_output_mutation=True)
def load_data():
    data = pd.read_csv('/content/gap_rate.csv')
    data.drop(columns='Unnamed: 0', inplace=True)
    data.fillna(0, inplace=True)
    return data

data_load_state = st.text('Loading data...')
data = load_data()
data_load_state.text("Done! (using st.cache)")

if st.checkbox('Show raw data'):
    st.subheader('Raw data')
    st.write(data)


# Some number in the range 0-23
year_to_filter = st.slider('year', 2000, 2020, 2005)
filtered_data = data[(data['YEAR'] == year_to_filter) & (data['RATE']=='N_RATE')&(data['GENDER']=='TOT')]
fig =px.bar(filtered_data, x='Country', y='GAP')
st.plotly_chart(fig)
