
import mysql.connector
# import testingmodel

#connecting database
mydb = mysql.connector.connect(
  host="simba.cs.csusm.edu",
  user="anton031",
  password="anton031",
  database="anton031"
)

mycursor = mydb.cursor()


#retrieving data

mycursor.execute("SELECT * FROM pictures_data")

myresult = mycursor.fetchall()






# def run_model():





