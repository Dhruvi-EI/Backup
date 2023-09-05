import os
import pandas as pd
import glob
import xlwings as xw

main_file = "C:\\Users\\158410\\OneDrive - Arrow Electronics, Inc\\Desktop\\Sprint_195.xlsx"
Sprint195="C:\\Users\\158410\\OneDrive - Arrow Electronics, Inc\\Desktop\\Sprint195.xlsx"
Fetched_Data="C:\\Users\\158410\\OneDrive - Arrow Electronics, Inc\\Desktop\\FetchedData.xlsx"

book=xw.Book(Sprint195)
book1=xw.Book(main_file)
book.close()
book1.close()

def fetch_data(column_name,value,file_name):

    excel=pd.read_excel(Sprint195, sheet_name="Sprint195")
    list1=["Jay Vyas","Harsh Shah","Dhruvinkumar Doshi","Aniket Katkar"]
    data=excel.loc[excel[column_name]==value]
    data.to_excel(Fetched_Data,index=False)
    data=pd.read_excel(Fetched_Data)

    filtered_data=[]
    for i in list1:
        filter = data.loc[data["User"]==i]
        filtered_data.append(filter.columns)
        # print(filter)
    # print(filtered_data[0])

    data.to_excel(Fetched_Data,index=False)
    specified_row=pd.read_excel(Fetched_Data,usecols=filtered_data[0])
    specified_row.to_excel(main_file,index=False)
    Final_result = specified_row.sort_values('User')
    Final_result.to_excel(f"C:\\Users\\158410\\OneDrive - Arrow Electronics, Inc\\Documents\\ExcelData\\{file_name}.xlsx",sheet_name=value,
                          index=False)


fetch_data("Activity","Defect Verification","Defect Verification")
fetch_data("Activity","Documentation","Documentation")
fetch_data("Activity","Testing","Testing")
fetch_data("Activity","Client Meeting","Client Meeting")
fetch_data("Activity","Development","Development")
fetch_data("Activity","TC Creation","TC Creation")
fetch_data("Activity","Defect Reporting","Defect Reporting")
fetch_data("Activity","Requirement Gathering","Requirement Gathering")
fetch_data("Activity","TC Execution","TC Execution")
fetch_data("Activity","TC Update","TC Update")

#The glob.glob function uses a wildcard (*) to match all .xlsx files
# in the given directory and returns a list of file paths.
excel_files=glob.glob("C:\\Users\\158410\\OneDrive - Arrow Electronics, Inc\\Documents\\ExcelData\\*.xlsx")

writer=pd.ExcelWriter(main_file)
for excel_file in excel_files:
    # The os.path.basename function extracts the file name from the full path,
    # and then .split(".")[0] is used to remove the file extension (.xlsx), effectively extracting the sheet name.
    sheet=os.path.basename(excel_file)
    print(sheet)
    sheet=sheet.split(".")[0]
    df1=pd.read_excel(excel_file)
    df1.to_excel(writer,sheet_name=sheet,index=False)
writer._save()









