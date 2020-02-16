import sys
print("Python version")
print (sys.version)
print("Version info.")
print (sys.version_info)

import pandas as pd
import numpy as np
toy_df = pd.DataFrame({'numbers': [1,2,3,np.nan,np.nan,np.nan,7]})
toy_df.isnull().sum()
toy_df2 = toy_df.dropna() #fillna(0) #fillna(method='ffill') #fillna(toy_df['numbers'].mean()) #fillna(toy_df['numbers'].interpolate())
toy_df2.to_pickle("./dummy.pkl")
toy_df2.duplicated()
toy_df2.quantile(0.25)
toy_df2.unique()
unpickled_df = pd.read_pickle("./dummy.pkl")
unpickled_df.head()
unpickled_df.shape
unpickled_df.columns
unpickled_df.describe()

import os
os.remove("./dummy.pkl")

from sklearn.preprocessing import StandardScaler
scaler = StandardScaler()
scaled_array = scaler.fit_transform(df) #zero mean and unit variance = zscores
scaled_data =  pd.DataFrame(scaled_array, columns = numeric_data.columns)
scaled_data.describe() # mean ~0 and stdev ~1

# Save a dictionary into a pickle file.
import pickle
favorite_color = { "lion": "yellow", "kitty": "red" }
pickle.dump( favorite_color, open( "save.p", "wb" ) )

favorite_color = pickle.load( open( "save.p", "rb" ) )
favorite_color