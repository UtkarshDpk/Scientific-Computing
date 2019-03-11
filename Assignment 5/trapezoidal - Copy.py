# -*- coding: utf-8 -*-
"""
Created on Fri Nov 24 18:42:40 2017

@author: 17137675
"""

import numpy as np
import matplotlib.pyplot as plt

def trapezoidal(f, a, b, N):
    h = (b-a)/N
    x = np.linspace(a,b,N+1)
    y  =  (h/2)*(f(x[0:len(x)-1])+f(x[1:len(x)]))
    return sum(y)

##################---a = 1.2---####################
a = 1.2
N = 10
g  =  lambda x:x**a*(1+3*x**2)
I  =  trapezoidal(g, 0, 1, N)
Ia  =  (4*a+6)/((a+1)*(a+3))
diff  =  [np.abs(Ia-I)]
x = np.linspace(0,1,N+1)
plt.figure(1)
plt.xlabel('x', fontsize = 16)
plt.ylabel('x^a(1+3x^2)', fontsize = 16)
plt.plot(x,g(x))


a = 1.2
N = 100
g  =  lambda x:x**a*(1+3*x**2)
I  =  trapezoidal(g, 0, 1, N)
Ia  =  (4*a+6)/((a+1)*(a+3))
diff.append([np.abs(Ia-I)])


a = 1.2
N = 10000
g  =  lambda x:x**a*(1+3*x**2)
I  =  trapezoidal(g, 0, 1, N)
Ia  =  (4*a+6)/((a+1)*(a+3))
diff.append([np.abs(Ia-I)])
             
##################---a = 0.3---####################
a = 0.3 
N = 10
g  =  lambda x:x**a*(1+3*x**2)
I  =  trapezoidal(g, 0, 1, N)
Ia  =  (4*a+6)/((a+1)*(a+3))
diff.append([np.abs(Ia-I)])
x = np.linspace(0,1,N+1)
plt.figure(2)
plt.xlabel('x', fontsize = 16)
plt.ylabel('x^a(1+3x^2)', fontsize = 16)
plt.plot(x,g(x))


a = 0.3 
N = 100
g  =  lambda x:x**a*(1+3*x**2)
I  =  trapezoidal(g, 0, 1, N)
Ia  =  (4*a+6)/((a+1)*(a+3))
diff.append([np.abs(Ia-I)])


a = 0.3 
N = 10000
g  =  lambda x:x**a*(1+3*x**2)
I  =  trapezoidal(g, 0, 1, N)
Ia  =  (4*a+6)/((a+1)*(a+3))
diff.append([np.abs(Ia-I)])

##################---a=-0.9---####################
a = -0.9 
N = 10
g  =  lambda x:x**a*(1+3*x**2)
I  =  trapezoidal(g, 0, 1, N)
Ia  =  (4*a+6)/((a+1)*(a+3))
diff.append([np.abs(Ia-I)])
x = np.linspace(0,1,N+1)
plt.figure(3)
plt.xlabel('x', fontsize = 16)
plt.ylabel('x^a(1+3x^2)', fontsize = 16)
plt.plot(x,g(x))

a = -0.9 
N = 100
g  =  lambda x:x**a*(1+3*x**2)
I  =  trapezoidal(g, 0, 1, N)
Ia  =  (4*a+6)/((a+1)*(a+3))
diff.append([np.abs(Ia-I)])


a = -0.9 
N = 10000
g  =  lambda x:x**a*(1+3*x**2)
I  =  trapezoidal(g, 0, 1, N)
Ia  =  (4*a+6)/((a+1)*(a+3))
diff.append([np.abs(Ia-I)])