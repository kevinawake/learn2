t = "Brave uncle is not afraid to top";

tt = "Brave ""uncle"" is not afraid to order";

DNA = 'GCTAGAATCC';

s = DNA(4);

DNA2 = [DNA , 'zzz'];
%笔记创建一个一行六列的矩阵,空格或逗号间隔元素
a = [1 2 3 7 5 4];
b = a + 3;
%plot函数作图，以索引（矩阵中第几个）为横坐标
%plot(b);
%grid on; %加网格线
%多维矩阵
A = [2,4,6;4,3,1;3,6,8];
B = A'; %转置
[D,V] = eig(A);%求特征值和特征向量,D是特征向量，V是每个特征向量对应的特征值
E = inv(A); %求逆矩阵
F = A*E %验证
C = A*B; %矩阵相乘
E = A.*B; %对应元素相乘
b = [1;3;5];
x = A\b ;%A的逆矩阵左乘b
s = A*x - b;
H = [1 1 1;2 2 2;3 3 3];
K = 4;
L = K*H;%K变成3x3矩阵，对角线都是4
M = K + H;%K变成3x3矩阵，所有元素都是4
A = [1 2 3;2 2 3;2 0 3]
[D,V] = eig(A)



