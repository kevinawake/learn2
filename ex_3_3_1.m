clear;clc
a = [4 1 -1;3 2 -6;1 -5 3];
b = [9; -2; 1];
[rank(a) rank([a ,b])]
%矩阵的秩等于未知量个数，有唯一解
x = a\b
a*x
a = [2 1 -1 1;1 2 1 -1;1 1 2 1];
b = [1 ; 2 ; 3];
[rank(a) rank([a,b])]
%矩阵的秩小于未知量个数，x为无穷多解中0最多的一组特解
x = a\b
a*x