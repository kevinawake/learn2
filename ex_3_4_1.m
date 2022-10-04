%x0为现在城乡人口比例，x为n年后城乡人口比例
clear;clc
x0 = [0.2;0.8];
a = [0.99 0.05;0.01 0.95];
x = x0;
for i = 1:10
    x = a*x;
    if (i == 1)|(i == 2)|(i == 10)
        disp([num2str(i) '年以后'])
        disp(['城镇人口占比' num2str(x(1))])
    end
end
i = 1;
x1 = a*x0;
while abs(x1(1) - x(1)) > 1e-6
    x = x1;
    x1 = a*x1;
    i = i+1;
end
disp([num2str(i) '年后城镇人口占比基本不变为' num2str(x1(1)) ])
 x0 = [0.7;0.3];
 i = 1;
x1 = a*x0;
while abs(x1(1) - x(1)) > 1e-6
    x = x1;
    x1 = a*x1;
    i = i+1;
end
disp(['如果现在70%人口在城镇那么' num2str(i) '年后城镇人口占比基本不变为' num2str(x1(1)) ])
 [v e] = eig(a);
 vpa(v(:,1)./x1)
 %转移矩阵最大特征值对应的特征向量与x成比例，说明x是最大特征值对应的特征向量，这点(2)(3)相同