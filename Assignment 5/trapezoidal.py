# -*- coding: utf-8 -*-
"""
Created on Fri Nov 24 18:42:40 2017

@author: 17137675
"""

import numpy as np
from matplotlib.pyplot import plot

def trapezoidal(f, a, b, N):
    
    h=(b-a)/N;
    x=np.linspace(a,b,N+1);
    
    y = (h/2)*(f(x[0:np.len(x)-1])+f(x[1:len(x)]));
    
    return np.sum(y);

a=1.2; N=10;
g = lambda x:x**a*(1+3*x**2);
I = trapezoidal(g, 0, 1, N);
Ia = (4*a+6)/((a+1)*(a+3));
diff = np.abs([Ia-I]);
#y=g(x);
#plot(x,g(x));