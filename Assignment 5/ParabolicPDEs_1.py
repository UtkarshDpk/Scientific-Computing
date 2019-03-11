# -*- coding: utf-8 -*-
"""
Created on Tue Nov 28 12:30:46 2017

@author: 17137675
"""

import numpy as np
import matplotlib.pyplot as plt 


####################-----tau=h^2/4-----#####################
N = 20
K = N**2
h = 1/N
x = np.linspace(0, 1, N+1)
u = np.zeros([N+1]) #initialise u
t = np.zeros([K+1]) #matrix for time

u0 = np.sin(x*np.pi) #u at time t=0
plt.plot(x, u0, '-o')

u = u0
U = np.zeros([N+1, K]) #matrix for all values of u
#I = sparse.identity(N-1) #sparse identity matrix
tau = h**2/4
u_tau=np.zeros([N+1])
#B = (I+tau*A) #operator for solving du/dt = Au
B=np.zeros([N+1])

for i in range(K):
    t[i+1] = t[i]+tau
    #solving
    for j in range(1,N):
        B[j] = (u[j+1]-2*u[j]+u[j-1])/(h**2)
        
        u_tau[j]=(u[j]+B[j]*tau)
    
    #Boundary conditions u_tau[0] and u_tau[N] = 0
    u[:] = u_tau
    
    #making a 2D array of all u values
    U[:, i] = np.copy(u)

plt.figure(1)
plt.xlabel('x', fontsize = 16)
plt.ylabel('u', fontsize = 16)
plt.plot(x, U)


####################-----tau=h^2/2-----#####################
N = 20
K = N**2
h = 1/N
x = np.linspace(0, 1, N+1)
u = np.zeros([N+1]) #initialise u
t = np.zeros([K+1]) #matrix for time

u0 = np.sin(x*np.pi) #u at time t=0
plt.plot(x, u0, '-o')

u = u0
U = np.zeros([N+1, K]) #matrix for all values of u
#I = sparse.identity(N-1) #sparse identity matrix
tau = h**2/2
u_tau=np.zeros([N+1])
#B = (I+tau*A) #operator for solving du/dt = Au
B=np.zeros([N+1])

for i in range(K):
    t[i+1] = t[i]+tau
    #solving
    for j in range(1,N):
        B[j] = (u[j+1]-2*u[j]+u[j-1])/(h**2)
        
        u_tau[j]=(u[j]+B[j]*tau)
    
    #Boundary conditions u_tau[0] and u_tau[N] = 0
    u[:] = u_tau
    
    #making a 2D array of all u values
    U[:, i] = np.copy(u)

plt.figure(2)
plt.xlabel('x', fontsize = 16)
plt.ylabel('u', fontsize = 16)
plt.plot(x, U)


####################-----tau=h^2-----#####################
N = 20
K = N**2
h = 1/N
x = np.linspace(0, 1, N+1)
u = np.zeros([N+1]) #initialise u
t = np.zeros([K+1]) #matrix for time

u0 = np.sin(x*np.pi) #u at time t=0
plt.plot(x, u0, '-o')

u = u0
U = np.zeros([N+1, K]) #matrix for all values of u
#I = sparse.identity(N-1) #sparse identity matrix
tau = h**2
u_tau=np.zeros([N+1])
#B = (I+tau*A) #operator for solving du/dt = Au
B=np.zeros([N+1])

for i in range(K):
    t[i+1] = t[i]+tau
    #solving
    for j in range(1,N):
        B[j] = (u[j+1]-2*u[j]+u[j-1])/(h**2)
        
        u_tau[j]=(u[j]+B[j]*tau)
    
    #Boundary conditions u_tau[0] and u_tau[N] = 0
    u[:] = u_tau
    
    #making a 2D array of all u values
    U[:, i] = np.copy(u)

plt.figure(3)
plt.xlabel('x', fontsize = 16)
plt.ylabel('u', fontsize = 16)
plt.plot(x, U)


#####################-----tau=2h^2-----#####################
N = 20
K = N**2
h = 1/N
x = np.linspace(0, 1, N+1)
u = np.zeros([N+1]) #initialise u
t = np.zeros([K+1]) #matrix for time

u0 = np.sin(x*np.pi) #u at time t=0
plt.plot(x, u0, '-o')

u = u0
U = np.zeros([N+1, K]) #matrix for all values of u
#I = sparse.identity(N-1) #sparse identity matrix
tau = 2*h**2
u_tau=np.zeros([N+1])
#B = (I+tau*A) #operator for solving du/dt = Au
B=np.zeros([N+1])

for i in range(K):
    t[i+1] = t[i]+tau
    #solving
    for j in range(1,N):
        B[j] = (u[j+1]-2*u[j]+u[j-1])/(h**2)
        
        u_tau[j]=(u[j]+B[j]*tau)
    
    #Boundary conditions u_tau[0] and u_tau[N] = 0
    u[:] = u_tau
    
    #making a 2D array of all u values
    U[:, i] = np.copy(u)

plt.figure(4)
plt.xlabel('x', fontsize = 16)
plt.ylabel('u', fontsize = 16)
plt.plot(x, U)



####################-----tau=4h^2-----#####################
N = 20
K = N**2
h = 1/N
x = np.linspace(0, 1, N+1)
u = np.zeros([N+1]) #initialise u
t = np.zeros([K+1]) #matrix for time

u0 = np.sin(x*np.pi) #u at time t=0
plt.plot(x, u0, '-o')

u = u0
U = np.zeros([N+1, K]) #matrix for all values of u
#I = sparse.identity(N-1) #sparse identity matrix
tau = 4*h**2
u_tau=np.zeros([N+1])
#B = (I+tau*A) #operator for solving du/dt = Au
B=np.zeros([N+1])

for i in range(K):
    t[i+1] = t[i]+tau
    #solving
    for j in range(1,N):
        B[j] = (u[j+1]-2*u[j]+u[j-1])/(h**2)
        
        u_tau[j]=(u[j]+B[j]*tau)
    
    #Boundary conditions u_tau[0] and u_tau[N] = 0
    u[:] = u_tau
    
    #making a 2D array of all u values
    U[:, i] = np.copy(u)

plt.figure(5)
plt.xlabel('x', fontsize = 16)
plt.ylabel('u', fontsize = 16)
plt.plot(x, U)