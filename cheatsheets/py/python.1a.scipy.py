#...
from scipy import stats
import numpy as np
x = np.random.random(10)
y = np.random.random(10)
slope, intercept, r_value, p_value, std_err = stats.linregress(x,y)
print "r-squared:", r_value**2

#...
import statsmodels
import scipy 
from scipy import stats 
stats.skew
stats.kurtosis
stats.describe
stats.summary?? for model