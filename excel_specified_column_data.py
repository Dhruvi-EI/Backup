#This code will fetch the data of the specified columns only by taking user input

import pandas as pd

def fetch_data():
    fns = pd.read_excel('C:\\Users\\158410\\OneDrive - Arrow Electronics, Inc\\Documents\\Sample1.xlsx')
    print(fns.columns)
    column_names = []
    while True:
        user=input()
        if user=='0':
            break
        column_names.append(user)

    # Dictionary of Column name with associated index.
    idx_dic = {}
    for i in fns.columns:
        idx_dic[i] = fns.columns.get_loc(i)
    usec=[]
    for i,j in idx_dic.items():
        for k in column_names:
            if i==k:
                usec.append(i)
    specified_row=pd.read_excel("C:\\Users\\158410\\OneDrive - Arrow Electronics, Inc\\Documents\\Sample1.xlsx", usecols=usec)
    specified_row.to_excel('C:\\Users\\158410\\OneDrive - Arrow Electronics, Inc\\Desktop\\Task1.xlsx', index=False)

fetch_data()