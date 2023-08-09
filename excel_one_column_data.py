#This code will fetch the data of specified column of the specified value

import pandas as pd

def fetch_data(display_col,column_name,value):
    excel_file = "C:\\Users\\158410\\OneDrive - Arrow Electronics, Inc\\Documents\\Sample1.xlsx"
    df = pd.read_excel(excel_file)

    print(df[display_col].where(df[column_name] == value))
    programmers = df[display_col].where(df[column_name] == value)
    print(programmers.dropna())   #The dropna() method removes the rows that contains NULL values
    d1=programmers.dropna()
    d1.to_excel("C:\\Users\\158410\\OneDrive - Arrow Electronics, Inc\\Desktop\\Task1.xlsx",index=False)

fetch_data('Full Name','Department','IT') #It will display Full Name column of the employee whose department is IT