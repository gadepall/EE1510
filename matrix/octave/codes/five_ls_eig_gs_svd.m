%Code written by GVV Sharma March 31, 2016
%Released under GNU GPL.  Free to use for anything.


%This program finds the SVD for the matrix A
%Involves eigenvalue decomposition as well as 
%QR factorization (Gram-Schmidt Orthogonalization)

%Note that the columns of U and V are interchanged
%when compared with the U and V matrices obtained 
%using the builtin SVD command.


clear;
close;

A = [1 0; 1 1; 1 2]; %The input matrix
b = [6;0;0]; %The output vector


[Pv,Dv] = eig(A'*A);%Eigenvalue decomposition of A'*A
[Pu,Du] = eig(A*A');%Eigenvalue decomposition of A*A'


Stemp = sqrt(Dv); %singular values of A 
[V,Rv] = qr(Pv); %V
[U,Ru] = qr(Pu);  %U






