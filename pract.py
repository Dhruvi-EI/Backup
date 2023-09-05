import pandas as pd
import openpyxl

def fetch_data(column,value):
    excel=pd.read_excel("C:\\Users\\158410\\OneDrive - Arrow Electronics, Inc\\Documents\\Sprint_195.xlsx")
    # sheet1 = excel["Sheet1"]
    # sheet2 = excel["Defect Verification"]
    # sheet3 = excel["Client Meeting"]
    # sheet4 = excel["Testing"]
    # sheet5 = excel["TC Execution"]
    # sheet6 = excel["Development"]
    # sheet7 = excel["TC Update"]
    # sheet8 = excel["Defect Reporting"]
    # sheet9 = excel["Requirement Gathering"]
    Filtered_data = excel.loc[excel[column] == value ]
    column_names = []
    while True:
        user = input()
        if user == '0':
            break
        column_names.append(user)
    print(column_names)

    column_index = {}
    for i in excel.columns:
        column_index[i] = excel.columns.get_loc(i)
    print("column_index", column_index)

    usec = []
    for i, j in column_index.items():
        for k in column_names:
            if i == k:
                usec.append(i)
    print("usec", usec)

    Filtered_data.to_excel("C:\\Users\\158410\\OneDrive - Arrow Electronics, Inc\\Documents\\Task2.xlsx")
    specified_row = pd.read_excel("C:\\Users\\158410\\OneDrive - Arrow Electronics, Inc\\Documents\\Task2.xlsx", usecols=usec)
    specified_row.to_excel('C:\\Users\\158410\\OneDrive - Arrow Electronics, Inc\\Documents\\Sprint_195.xlsx',index=False)


fetch_data("Activity","Defect verification")
