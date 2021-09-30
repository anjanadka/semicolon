import pandas as pd
import datetime 

d1= pd.read_csv("data_table1.csv")
d2=pd.read_csv("data_table2.csv")
d3=pd.read_csv("data_table3.csv")
#print(data)
#print(d2.columns )
u="18b537"
l=[]
#----covid status update and listing of details-----
for i in range(len(d1)):
    #-----update covid status--------
    if(d1.loc[i,"User_id"]==u):
       d1.loc[i,"Covid_status"]=1
       d1.to_csv("data_table1.csv",index=False)
       print("Status update sccessfully....")
       #-----primary contact----------
       today = datetime.date.today()
       yday = today - datetime.timedelta(days=1)
       day=str(yday)
       for j in range(len(d2)):
           if(d2.loc[j,"User_id"]==u and d2.loc[j,"Date"]==day):
               #print(d2.loc[j])
               et=d2.loc[j,"ET"]
               lt=d2.loc[j,"LT"]
               for k in range(len(d2)):
                   p=d2.loc[k,"User_id"]
                   if(p!=u):
                       et1=d2.loc[k,"ET"]
                       lt1=d2.loc[k,"LT"]
                       #et=<et1 and lt1=<lt
                       #et1>et and lt<lt1
                       if (et<et1 and lt1<lt) or (et>et1 and lt<lt1) or (et1>=et and et1<=lt) or (et>=et1 and et<=lt1):
                           if(p not in l):
                               l.append(p)
       print("primary contact people --- user id : ",l)
       s=[]
       for i in l:
           for j in range(len(d1)):
               if(d1.loc[j,"User_id"]==i):
                   k=[]
                   k.append(d1.loc[j,"Name"])
                   k.append(d1.loc[j,"Email"])
                   s.append(k)
       print("primary contact people ---name---- email----",s)
       break