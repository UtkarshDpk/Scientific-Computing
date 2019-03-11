# -*- coding: utf-8 -*-
"""
Created on Fri Nov 24 18:42:40 2017

@author: 17137675
"""

import numpy as np
from matplotlib.pyplot import plot

def tailored_trapezoidal(g, alpha, N):
    x  = np.linspace(0,1,N+1);
    x1 = x[0:len(x)-1];
    x2 = x[1:len(x)];
    A  = (g(x2) - g(x1))/(x2 - x1);
    B  = g(x1) - A*x1;
    y  = ((A/(alpha+2))*(x2**(alpha+2) - x1**(alpha+2))) + ((B/(alpha+1))*(x2**(alpha+1) - x1**(alpha+1)));
    return np.sum(y);

a=1.2; N=10;
g     = lambda x:(1+3*x**2);
I     = tailored_trapezoidal(g, a, N);
Ia    = (4*a+6)/((a+1)*(a+3));
diff2 = np.abs([Ia-I]);