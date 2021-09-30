import pandas as pd

d1= pd.read_csv("data_table1.csv")

u="18b535" # user id from flutter app
p="ai123"  # password from flutter app
f=0
if u=="admin":
    if p=="admin@cta":
        #admin login sccess
        print("admin login success....")
    else:
        #admin login failed
        print("invalid password...!!!")
else:
    for i in range(len(d1)):
        if(d1.loc[i,"User_id"]==u and d1.loc[i,"Password"]==p):
            # user Log in sccessfull
            print("User_id : ",u,"Name : ",d1.loc[i,"Name"]) 
            print("Login Success......")
            f=1
        if f==0:
            # user Log in Failed
            print("Invalid User_id or Password ......")
            print("Please check again ......")
