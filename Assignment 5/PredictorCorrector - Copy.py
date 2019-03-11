# -*- coding: utf-8 -*-
"""
Created on Tue Nov 28 12:15:20 2017

@author: 17137675
"""

import numpy as np
from math import sin,cos,exp
def PredictorCorrector(f,tspan,yzero,N):
    #Improved Euler Method
    #limits a and b
    a = tspan[0]
    b = tspan[1]
    
    h = (b-a)/N #interval step h
    y = [yzero]
    t = [a]
    
    for i in range(N):
        t.append(t[i]+h)
        
        y1 = y[i] + h*(f(t[i],y[i]))
        
        y.append(y[i]+(h/2)*(f(t[i],y[i])+f(t[i+1],y1)))
    
    return t,y

#####################------N=500------###########################
N=500
tspan=[0,3]
yzero=1
myf=lambda t,y:(-y-5*exp(-t)*sin(5*t))
[t,y]=PredictorCorrector(myf,tspan,yzero,N)
ya=[]
diff2=[]
for i in range(len(t)):
    ya.append(exp(-t[i])*cos(5*t[i])) #Analytical solution
    diff2.append((np.abs(y[i]-ya[i])))
    
err=[np.max(diff2)]


#####################------N=500------###########################
N=1000
tspan=[0,3]
yzero=1
myf=lambda t,y:(-y-5*exp(-t)*sin(5*t))
[t,y]=PredictorCorrector(myf,tspan,yzero,N)
ya=[]
diff2=[]
for i in range(len(t)):
    ya.append(exp(-t[i])*cos(5*t[i])) #Analytical solution
    diff2.append((np.abs(y[i]-ya[i])))
    
err.append(np.max(diff2))


#####################------N=500------###########################
N=2000
tspan=[0,3]
yzero=1
myf=lambda t,y:(-y-5*exp(-t)*sin(5*t))
[t,y]=PredictorCorrector(myf,tspan,yzero,N)
ya=[]
diff2=[]
for i in range(len(t)):
    ya.append(exp(-t[i])*cos(5*t[i])) #Analytical solution
    diff2.append((np.abs(y[i]-ya[i])))
    
err.append(np.max(diff2))
