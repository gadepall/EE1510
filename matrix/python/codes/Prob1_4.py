import numpy as np
import matplotlib.pyplot as plt
from numpy.linalg import inv
from numpy import linalg as LA

#Creating matrix
A=np.matrix('1 0; 1 1; 1 2')
#Creating vector
b=np.matrix('6; 0; 0')
#P = inv((A'A)A'
P=np.dot(inv(np.dot(np.transpose(A), A)), np.transpose(A))
#x_ls=Pb
x_ls=np.dot(P, b)
x=np.matrix('5; -5')
#||b-Ax_ls||
exact_ls_metric=(LA.norm(b-np.dot(A, x_ls)))**2
#||b-Ax||
random_ls_metric=(LA.norm(b-np.dot(A, x)))**2
print(x_ls)
print(x)
print(exact_ls_metric)
print(random_ls_metric)
