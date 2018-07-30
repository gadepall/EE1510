%Code written by GVV Sharma March 31, 2016
%Released under GNU GPL.  Free to use for anything.


%This program plots the least squares metric for a range of
%vectors x in the mesh with vertices (-10,-10),(-10,10),(10,-10)
%%and (10,10)

%The result is a 3-D mesh.  The theoretical minimum is (5,-3)
%Values obtained through the following program are close to the 
%theoreticl solution


clear;
close;

A = [1 0; 1 1; 1 2]; %The input matrix
b = [6;0;0]; %The output vector


x1 = linspace(-10,10,50); %generating points in x-axis
x2 = linspace(-10,10,50);  %generating points in y-axis

[xx, yy] = meshgrid(x1,x2);

ffun = @(x,y) norm(b-A*[x;y])^2;

f = arrayfun(ffun,xx,yy);

mesh(xx,yy,f)

[M I] = min(f(:)); %vectorize the 50 x 50 matrix f, find min
%M = min value , I is the index of the f_min

[I_r I_c] = ind2sub(size(f),I); %Get the row, col index of f_min


%The least square solution
xx(I_r,I_c) 
yy(I_r,I_c)
%The minimum value of metric
M
