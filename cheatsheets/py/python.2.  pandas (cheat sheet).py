#http://pandas.pydata.org/
#Series – for one dimensional array
#DataFrame – for 2 dimensional tables (and with multi-indexing can display more dimensions)

import numpy as np 
import pandas as pd 
 
df=pd.read_csv('pupils.csv')
df.head()
len(df)
df.columns
df.info()
df = pd.read_csv(fname, parse_dates=['time'])
df.to_csv('pupils2.csv', index = False)

#Select * from df where index between 2 and 6
df[2:6]
df['Name']
df[['Name','Age']][2:6]
df.loc[2] # index 2 as series
df.loc[2:2] # index 2 as dataframe
df.loc[2:6] # indexes 2-6
df.loc[2:6:2] # even indexes 2-6 
df.loc[2:2]['Age'] # Age where index=2
df.loc[1,'Age'] # Age where index=1
df.loc[1:13:2,'Age':'income':2] # odd rows from 1 to 13 and even cols from Age to income
#Select * from df where Age>12 and Height > 130
df[(df['Age']>12) & (df['Height'] > 130)]

#Insert into df values (‘eli’,4,’DF’,100,20,20,2000,4,4)
df.loc[df.index.size]=['eli',4,'DF',100,20,20,2000,4,4]
df.loc[df.index.size]=['eli',4,'DF',100,20,20,2000,4,4]
#Insert into df select * from df2
df.append(df2)
df.append(df2)
#Insert new column with values (alter table df add Inc int; update df set Inc=income*2)
df['Inc']=df['income']*2
df['Inc']=df['income']*2

#Update df set Age=20 where income>20000
df.loc[df['income']>20000,'Age']=20
df.loc[df['income']>20000,'Age']=20
for i,v in df.iterrows():
    if v.Age > 10:
        df.loc[i,'Weight'] = 888

#Delete df where Age=6
df.drop(df['Age']==6,inplace=True)
df.drop(df['Age']==6,inplace=True)

df.describe()
df.corr()

#Select count(Name), sum(income) , max(Age) from df
df.agg({'Name':'count', 'income':'sum' , 'Age':'max'})
df1=df.groupby(['Country','family persons']).count()

import numpy as np
df1 = pd.DataFrame(np.arange(10).reshape((5,2)), columns=['x', 'y'], index=['a', 'b', 'c', 'd', 'e'])
df1

my_simple_series = pd.Series(np.random.randn(5), index=['a', 'b', 'c', 'd', 'e'])
my_dictionary = {'a' : 45., 'b' : -19.5, 'c' : 4444}
my_second_series = pd.Series(my_dictionary)

data['x'] = data['x'].astype('category')
data.select_dtypes(['category']).columns