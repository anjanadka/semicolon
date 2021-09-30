import pandas as pd

d1= pd.read_csv("data_table1.csv")
u="18b535"
p="ai123"

for i in range(len(d1)):
    if(d1.loc[i,"User_id"]==u and d1.loc[i,"Password"]==p):
        print(d1.loc[i,"Name"]) 
