%Code written by GVV Sharma March 30, 2016
%Released under GNU GPL.  Free to use for anything.


%This program compares the norm defined for the least-squares solution
%for the correct solution vs other data points.
%You will find that the metric is the smallest for the correct value.

clear;
close;

A = [1 0; 1 1; 1 2]; %The input matrix
b = [6;0;0]; %The output vector

P = inv(A'*A)*A';%pseudoinverse

x_ls = P*b; %The least squares solution

x = [5;-3]; %Any random input

exact_ls_metric = norm(b-A*x_ls)^2 %The metric for actual soltuion
random_ls_metric = norm(b-A*x)^2 %metric for a random value of x
