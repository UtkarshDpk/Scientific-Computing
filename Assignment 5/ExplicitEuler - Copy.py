# -*- coding: utf-8 -*-
"""
Created on Tue Nov 28 11:57:39 2017

@author: 17137675
"""

import numpy as np
from math import sin,cos,exp

def ExplicitEuler(f,tspan,yzero,N):
#Explicit Euler Method to solve ODEs
    #limits a and b
    a = tspan[0]
    b = tspan[1]
    
    h = (b-a)/N #interval step h
    y = [yzero]
    t = [a]

    for i in range(N):
        t.append(t[i]+h)
        y.append(y[i] + h*(f(t[i],y[i])))
    return t,y
    
#####################------N=500------###########################
N = 500
tspan = [0,3]
yzero = 1
myf = lambda t,y:(-y-5*exp(-t)*sin(5*t))
[t,y] = ExplicitEuler(myf,tspan,yzero,N)
ya = []
diff = []
for i in range(len(t)):
    ya.append(exp(-t[i])*cos(5*t[i])) #Analytical solution
    diff.append(np.abs(y[i]-ya[i]))
    
err = [np.max(diff)]


#####################------N=1000------###########################
N = 1000
tspan = [0,3]
yzero = 1
myf = lambda t,y:(-y-5*exp(-t)*sin(5*t))
[t,y] = ExplicitEuler(myf,tspan,yzero,N)
ya = []
diff = []
for i in range(len(t)):
    ya.append(exp(-t[i])*cos(5*t[i])) #Analytical solution
    diff.append(np.abs(y[i]-ya[i]))
    
err.append(np.max(diff))


#####################------N=2000------###########################
N = 2000
tspan = [0,3]
yzero = 1
myf = lambda t,y:(-y-5*exp(-t)*sin(5*t))
[t,y] = ExplicitEuler(myf,tspan,yzero,N)
ya = []
diff = []
for i in range(len(t)):
    ya.append(exp(-t[i])*cos(5*t[i])) #Analytical solution
    diff.append(np.abs(y[i]-ya[i]))
    
err.append(np.max(diff))