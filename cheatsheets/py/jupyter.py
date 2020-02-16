## jupyter cheat sheet
## https://github.com/rajathkmp/Python-Lectures
## https://github.com/jdwittenauer/ipython-notebooks

from __future__ import print_function
print('hi, stderr', file=sys.stderr)

%run ../utils/list_pyfiles.ipy

import time, sys
for i in range(8):
    print(i)
    time.sleep(0.5)


import numpy as np
x = np.linspace(0,10)
y = np.sin(x)
FlotPlot(x, np.sin(x))

from pylab import *
x = np.linspace(0, 5, 10)
y = x ** 2
figure()
plot(x, y, 'r')
xlabel('x')
ylabel('y')
title('title')
show()
