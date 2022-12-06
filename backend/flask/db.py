import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="",
  database="bloodrepo"
)

print(mydb)

mycursor = mydb.cursor()

def resultexec(cursor,type):
	if type == 1:
		myresult = cursor.fetchone()
	else:
		myresult = cursor.fetchall()
	for x in myresult:
	  print(x)

def showTable():
	mycursor.execute("show tables")
	resultexec(mycursor,2)
	

def select(column,table,where):
	sql = "SELECT "+column+" FROM "+table
	if where != "":
		sql = sql + " WHERE "+where
		pass
	mycursor.execute(sql)
	resultexec(mycursor,2)

def insert(column,columnval,table,val):
	sql = "INSERT INTO "+table+" ("+column+") VALUES ("+columnval+")"
	mycursor.execute(sql,val)
	mydb.commit()	
	print(mycursor.rowcount, "record inserted.")

def update(column,table,where,val):
	sql = "UPDATE "+table+" SET "+column+" = "+val+ " WHERE "+where
	mycursor.execute(sql)
	mydb.commit()	
	print(mycursor.rowcount, "record(s) affected.")

def delete(column,table,where):
	sql = "DELETE "+column+" FROM "+table+ " WHERE "+where
	mycursor.execute(sql)
	mydb.commit()	
	print(mycursor.rowcount, "record(s) affected.")



showTable()