# -*- coding: utf-8 -*-
"""
Created on Sat Nov 25 17:48:13 2017

@author: Utkarsh
"""
import numpy as np
from math import sin, exp, cos

N=500; tspan=[0,3]; yzero=1;
myf=lambda t,y:(-y-5*exp(-t)*sin(5*t));
#[t1,y1]=ExplicitEuler(myf, tspan, yzero, N);
#ya=exp(-t1)*cos(5*t1);
#diff=np.max(np.abs(y1-ya));

a=tspan[0];
b=tspan[1];
h=(b-a)/N;
y=[yzero];
t=[a];
for i in range(N):
    
    t.append(t[i]+h);
    
    y.append(y[i] + h*(myf(t[i],y[i])));
    
N=500; tspan=[0,3]; yzero=1;
myf=lambda t,y:(-y-5*exp(-t)*sin(5*t));
#[t1,y1]=ExplicitEuler(myf, tspan, yzero, N);
ya=[];diff=[];
for i in range(len(t)):
    
    ya.append(exp(-t[i])*cos(5*t[i]));
    diff.append(np.abs(y[i]-ya[i]));

err = np.max(diff);