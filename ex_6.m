clear;clc
x = -2:0.1:2;
y = x.^2.*sin(x.^2-x-2);
plot(x,y,'r*');
fplot(@(x)x.^2.*sin(x.^2-x-2),[-2,2],'gd');
%椭圆
theta = 0:pi/50:2*pi;
r = 1;
x = 2*r.*cos(theta);
y = 3*r.*sin(theta);
plot(x,y);
%空间曲线,曲面
t = 0:pi/50:2*pi;
x = sin(t);
y = cos(t);
z = cos(2.*t);
plot3(x,y,z,'rp');
[theta fai] = meshgrid(0:pi/50:2*pi,0:pi/50:pi/2);
x = 2.*sin(fai).*cos(theta);
y = 2.*sin(fai).*sin(theta);
z = 2.*cos(fai);
surf(x,y,z);
x = 0:pi/100:pi;
y1 = sin(x);
y2 = sin(x).*sin(10.*x);
y3 = -sin(x);
plot(x,y1);
hold on;
plot(x,y2);
hold on;
plot(x,y3);



