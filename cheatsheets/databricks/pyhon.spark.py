df = spark.range(1000).toDF("number")
display(df)

df.describe().show()

df["number"]

df.columns

df.schema

df.select("number").show(15)

df.where("number > 10 and number < 14").show()

seed = 10
withReplacement = False
fraction = 0.02
df.sample(withReplacement, fraction, seed).show(100)

pdf = df.toPandas()
pdf.dtypes

import pandas as pd
import numpy as  np
pdf = pd.DataFrame(data={'ColumnA':np.linspace(0, 1, 11),
                        'ColumnB':['red', 'yellow','blue', 'green', 'red', \
                                   'green','green','red', 'yellow','blue', 'green'],
                        'ColumnC': np.random.randint(11)}) 
pdf

#One column
pdf['ColumnA']

#Single value
pdf.loc[0, 'ColumnA']

#Slicing by index
pdf.loc[3:7:2]

pdf['ColumnB']=='red'

#Boolean mask
pdf[pdf['ColumnB']=='red']

#Boolean mask multiple conditions
pdf[(pdf['ColumnB']=='red') & (pdf['ColumnA']==0.4)]

