%Code written by GVV Sharma, March 30, 2016
%Released under GNU GPL.  Free to use for anything.

%This program finds the pseudoinverse of a matrix

clear;
close;

A = [1 0; 1 1; 1 2];
b = [6;0;0];

P = inv(A'*A)*A';%pseudoinverse

x = P*b %The least squares solution
