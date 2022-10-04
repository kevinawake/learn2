%1，线图
x = 0:0.05:85/3;
y = sin(x);
plot(x,y,'LineWidth',2)
xlabel('横轴')
ylabel('纵轴')
%grid on;
axis([0 85/3 -3 3]);
%多组函数在一张图
y1 = sin(x);
y2 = cos(x);
plot(x,y1,x,y2)
xlabel('横轴')
ylabel('纵轴')
axis([0 85/3 -3 3]);
%条形图
t = -3:0.05:3;
p = exp(-t.*t);%e的-t平方
bar(t,p)
%barh(t,p)
%极坐标图
theta = 0:0.01:2 * pi;
radi = abs(sin(7*theta).*cos(10*theta));%abs取绝对值
polarplot(theta,radi)
%散点图
Height = randn(1000,1);
Weight = randn(1000,1);
scatter(Height,Weight)
xlabel('Height')
ylabel('Weight')

