clear;clc
a = [2 1 -1 1;1 2 1 -1;1 1 2 1];
b = [1; 2; 3];
[rank(a) rank([a,b])]
format rat;
syms n1 ;
c = null(a,'r');
%a*c = 0的解c只有一列
x0 = a\b;
x = c*n1 +x0
