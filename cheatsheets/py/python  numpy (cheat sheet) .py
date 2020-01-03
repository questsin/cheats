import numpy as np
np.arange(1,5)
np.linspace(1,5,4)
np.zeros(3)
np.ones(3)
np.random.randn(1000)

arr = np.array([1,2,3])
arr
len(arr)
arr[1]
dtype('int64')
v1 = np.random.rand(1000000)
%time v1 * v2
dir(v)

my_array = np.arange(35)
my_array 
mymask = my_array > 4
mymask
my_array.shape = (7,5) 
my_array.shape
my_array.ndim
my_array.size 
v.reshape((4, 3))
mat[np.abs(mat - mat.mean()) > 1.5*mat.std()]
import this