import pandas as pd

d1= pd.read_csv("data_table1.csv")

u="18b535" #user id from flutter app

#----covid status update if a person is covid + ve -----
for i in range(len(d1)):
    #-----update covid status--------
    if(d1.loc[i,"User_id"]==u):
       d1.loc[i,"Covid_status"]=1
       #---- updating csv file -------
       d1.to_csv("data_table1.csv",index=False)
       print("Covid affected person : ",d1.loc[i,"Name"])
       print("Covid Status update sccessfully....")
      
