# importing module
import sqlite3

# connecting to the database
connection = sqlite3.connect("myTable.db")

# cursor
# SQL query to drop table if you have created the table by mistake
# crsr.execute=("drop table emp,")
crsr = connection.cursor()

# SQL command to create a table in the database
sql_command = """CREATE TABLE emp( staff_number INTEGER PRIMARY KEY, 
fname VARCHAR(20), 
lnname VARCHAR(30),   
 gender CHAR(1),
  birthdate DATE);"""

# execute the statement
crsr.execute(sql_command)
connection.commit()
connection.close()