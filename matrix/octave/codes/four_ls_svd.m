%Code written by GVV Sharma March 31, 2016
%Released under GNU GPL.  Free to use for anything.


%This program finds the theoretical least squares solution using 
%SVD 

clear;
close;

A = [1 0; 1 1; 1 2]; %The input matrix
b = [6;0;0]; %The output vector


[U S V] = svd(A); % Computing the SVD of A

temp_S = 1./diag(S); %inverting the diagonal values of S

Splus = [diag(temp_S) zeros(2,1)]; %inverse transpose of S

Aplus = V*Splus*U'; %The Moore-Penrose pseudo-inverse

Aplus*b %least squares solution.



