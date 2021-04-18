
import mysql.connector
import datetime
import time


config={'user':'root','password':'password','host':'127.0.0.1','database':'housemate',}

connection=mysql.connector.connect(**config)
mycursor=connection.cursor()
#Query1
max=0
number=[]
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
        number=[]
        number.append(people[0])
    elif (count==max):
        number.append(people[0])

print("The service provider(s) with max attendance in past 30 dayy are :")
for elements in number:

    mycursor.execute("select * from serviceprovider where AccountNumber="+str(elements)+';')
    information=mycursor.fetchall()

    print(information[0][2],information[0][3])
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
print("the oldest unresolved complaint is \n"+information[0][4]+"\nIt was registered on "+str(information[0][1])+" by a "+information[0][5]+" with account Number "+str(information[0][6])+"\n")

# query 3
AccountNumber=73
FirstName="Arvind"
LastName="Kejriwal"
Tower="D"
HouseNumber=322
Floor=3
Occupation="Politician"
Gender="M"
#print("insert into resident value ( "insert into resident values ("+str(AccountNumber)+",\"" +FirstName+"\",\""+LastName+"\",\""+Tower+"\"," +str(HouseNumber)+","+str(Floor)+",\""+Occupation+"\",\""+Gender+"\"))
mycursor.execute("insert into resident values ( "+str(AccountNumber)+",\""+FirstName+"\",\""+LastName+"\",\""+Tower+"\"," +str(HouseNumber)+","+str(Floor)+",\""+Occupation+"\",\""+Gender+"\");")
#mycursor.fetchall()


#query 4
UserType="resident"
NewPhoneNumber="93838383"
AccountNumber="13"

mycursor.execute("update phonenumbers set PhoneNumber = \""+NewPhoneNumber+"\" where AccountNumber= "+AccountNumber+" and UserType= \""+UserType+"\" and PhoneNumber!=\"hello\";")
#print("update phonenumbers set PhoneNumber = \""+NewPhoneNumber+"\" where AccountNumber= "+AccountNumber+" and UserType= \""+UserType+" \" and PhoneNumber!=\"hello\";")

#time.sleep(3)

connection.commit()
connection.close()
