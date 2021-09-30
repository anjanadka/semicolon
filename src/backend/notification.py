import pandas as pd
import datetime 

d1= pd.read_csv("data_table1.csv")
d2=pd.read_csv("data_table2.csv")
d3=pd.read_csv("data_table3.csv")

u="18b535" # user id from admin interface when admin press the notify button
l=[]
today = datetime.date.today()
yday = today - datetime.timedelta(days=1)
day=str(yday)
for j in range(len(d2)):
    if(d2.loc[j,"User_id"]==u and d2.loc[j,"Date"]==day):
        et=d2.loc[j,"ET"]
        lt=d2.loc[j,"LT"]
        for k in range(len(d2)):
            p=d2.loc[k,"User_id"]
            if(p!=u):
                et1=d2.loc[k,"ET"]
                lt1=d2.loc[k,"LT"]
                if (et<et1 and lt1<lt) or (et>et1 and lt<lt1) or (et1>=et and et1<=lt) or (et>=et1 and et<=lt1):
                    if(p not in l):
                        l.append(p)
#list contain user id of acctected people
print("primary contact people --- user id : ",l)