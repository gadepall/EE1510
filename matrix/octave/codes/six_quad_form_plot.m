%Code written by GVV Sharma April 10, 2016
%Released under GNU GPL.  Free to use for anything.


%This program plots the quadratic form for a range of
%vectors x in the mesh with vertices (-10,-10),(-10,10),(10,-10)
%%and (10,10)

%The result is a 3-D mesh.  
%The quadratic form in terms of the eigenvalues of the
%symmetric matrix is explored through this program.


clear;
close;

C = [37 9; 9 13];
[P lambda] = eig(C);



x1 = linspace(-10,10,50); %generating points in x-axis
x2 = linspace(-10,10,50);  %generating points in y-axis



[xx, yy] = meshgrid(x1,x2);

ffun = @(x,y) [x y]*C*[x;y];

f = arrayfun(ffun,xx,yy);

mesh(xx,yy,f)

[M I] = min(f(:)); %vectorize the 50 x 50 matrix f, find min
%M = min value , I is the index of the f_min

[I_r I_c] = ind2sub(size(f),I); %Get the row, col index of f_min


%The minimum value of the quadratic form
M

%Verifying the eigenvalue relation
x_hat = [xx(I_r,I_c);  yy(I_r,I_c)]
x_hat'*C*x_hat
z = P*[xx(I_r,I_c);  yy(I_r,I_c)]
z'*lambda*z
