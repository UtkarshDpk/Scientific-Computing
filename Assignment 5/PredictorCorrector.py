# -*- coding: utf-8 -*-
"""
Created on Sat Nov 25 10:59:35 2017

@author: Utkarsh
"""
import numpy as np
from math import sin, exp, cos
def PredictorCorrector(f, tspan, yzero, N):
#Improved Euler Method
    a=tspan[0];
    b=tspan[1];
    h=(b-a)/N;
    y=[yzero];
    t=[a];
    #t=linspace(a,b,N);
    for i in range(N):
        
        t.append(t[i]+h);
        
        y1 = y[i] + h*(f(t[i],y[i]));
        
        y.append(y[i] + (h/2)*(f(t[i],y[i]) + f(t[i+1],y1)));
    return t,y;

N=500; tspan=[0,3]; yzero=1;
myf=lambda t,y:(-y-5*exp(-t)*sin(5*t));
[t,y] = PredictorCorrector(myf, tspan, yzero, N);
ya=[];diff=[];
for i in range(len(t)):
    
    ya.append(exp(-t[i])*cos(5*t[i]));
    diff.append(np.abs(y[i]-ya[i]));

err = np.max(diff);
