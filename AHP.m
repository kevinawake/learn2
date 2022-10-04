disp('请输入判断矩阵A:')
A = input('判断矩阵A=')
SumA = sum(A)
[n,n] = size(A)
SUMA = repmat(SumA,n,1)
clc;A
SUMA
standA = A./SUMA
sum(standA,2)
disp('算术平均法求权重的结果为:');
disp(sum(standA,2)/n)
%几何平均法
clc;A
prdA = prod(A,2)
p_n_A = prdA.^(1/n)
disp('几何平均法求权重的结果为:')
disp(p_n_A)./ sum(p_n_A)
%特征值法
clc
[V,D] = eig(A)
Meig = max(max(D))
D == Meig
[r,c] = find(D == Meig,1)
V(:,c)
disp('特征值法求权重的结果为:');
disp(V(:,c) ./sum(V(:,c)))
%计算一致性比例CR
clc
CI = (Meig - n)/(n - 1);
RI = [0 0 0.52 0.89 1.12 1.26 1.36 1.41 1.46 1.49 1.52 1.54 1.56 1.58 1.59];
CR = CI/RI(n);
disp('一致性指标CI=');disp(CI);
disp('一致性比例CR=');disp(CR);
if CR<0.10
    disp('一致性可以接受');
else
    disp('CR>=0,需要修改');
end