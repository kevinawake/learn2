clear;clc
load data;
n = size(data,1);
m = size(data,2);
%第一步，对变量进行预处理，消除量纲的影响
avg = repmat(mean(data),n,1);
data = data./avg;
%定义母序列和子序列
Y = data(:,1); %母序列
X = data(:,2:m); %子序列
Y2 = repmat(Y,1,m-1); %把母序列向右复制到c-1列
absXi_Y = abs(X-Y2)
a = min(min(absXi_Y)) %全局最小值
b = max(max(absXi_Y)) %全局最大值
r = 0.5; %分辨系数取0.5
gamma = (a+r*b)./(absXi_Y+r*b) %计算子序列中各个指标与母序列的关联系数
disp("子序列中各个指标的灰色关联度分别为：");
ans = mean(gamma)
