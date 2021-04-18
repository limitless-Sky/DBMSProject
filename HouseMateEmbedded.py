
import mysql.connector
import datetime


config={'user':'root','password':'password','host':'127.0.0.1','database':'housemate',}

connection=mysql.connector.connect(**config)
mycursor=connection.cursor()
#Query1
max=0
number=1
mycursor.execute("select AccountNumber,AttendanceInformation from serviceprovider;")
info=mycursor.fetchall()
for people in info:
    count=0
    attendance=people[1]
    for char in attendance:
        if char=='P':
            count+=1
    if(count>max):
        max=count
        number=people[0]
mycursor.execute("select * from serviceprovider where AccountNumber="+str(number)+';')
information=mycursor.fetchall()
print("The service provider with Maximum attendance is ",information[0][2],information[0][3])
print("attendance (number of days)",max,"\n")

#query 2
mycursor.execute("select ComplaintID, `TimeStamp` from complaint where StaffResolutionStatus='F' or ComplaintResolutionStatus='F'")
info=mycursor.fetchall()
oldest=info[0][1]
Cid=info[0][0]
for complaints in info:
    if(complaints[1]<oldest):
        oldest=complaints[1]
        Cid=complaints[0]
mycursor.execute("select * from complaint where ComplaintID="+str(Cid)+";")
information=mycursor.fetchall()
print("the oldest unresolved complaint is \n"+information[0][4]+"\nIt was registered on "+str(information[0][1])+" by a "+information[0][5]+" with account Number "+str(information[0][6]))






connection.close()
