##python --version

## https://elitedatascience.com/learn-python-for-data-science
## https://cherrypy.org/

import cherrypy
	  
class HelloWorld(object):
    def index(self):
        return "Hello World!"
    index.exposed = True

cherrypy.quickstart(HelloWorld())


!pip install splunk-sdk

import splunklib.results as results
import splunklib.client as client
# Create a Service instance and Attempt Connection to Splunk
try:
    service = client.connect(host=HOST, port=PORT, username=USERNAME, password=PASSWORD)
    print "Connection Successful"
except Exception,e: print str(e)

——-
from sklearn import datasets
boston = datasets.load_boston()
display(boston)

import pandas_datareader.data as web
from datetime import datetime
start = datetime(2018, 4, 1)
end = datetime(2018, 4, 24)
symbols = ['F']
##stocks = web.DataReader('F', 'iex', start, end)
stocks = web.DataReader('F', 'morningstar', start, end)

———
import numpy as np
import statsmodels.api as sm

Y = [1,3,4,5,2,3,4]
X = range(1,8)
X = sm.add_constant(X)

model = sm.OLS(Y,X)
results = model.fit()
print(results.summary())
