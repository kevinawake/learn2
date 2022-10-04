clear;clc
B = [6 2 1;2.25 1 0.2;3 0.2 1.8];
x1 = [25 5 20]';
D1 = [16;1.55;15];
C = B/diag(x1);
A = eye(3) - C;
D = [17;17;17];
[rank(A) rank([A,D])]
x = A\D
disp(['该经济年度工业，农业，及第三产业产出分别为' num2str(x(1)) '和' num2str(x(2)) '和 ' num2str(x(3))])
