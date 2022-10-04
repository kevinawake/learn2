load data%data 为保存的.mat文件
X = E %E为数据名称
[n , m] = size(X);%得到矩阵的行和列
Y = X ./ repmat(sum(X.*X) .^ 0.5, n, 1);%标准化处理
D_P = sum([(Y - repmat(max(Y), n ,1)).^2],2) .^0.5;%计算各个评价对象与最大值距离
D_N = sum([(Y - repmat(min(Y), n ,1)).^2],2) .^0.5;%计算各个评价对象与最小值距离
S = D_N./(D_P+D_N);%未归一化得分
stand_S = S / sum(S);%归一化得分