clear;clc;
x = [];
y = [];
r = 1;
r1 = 1.2;
for i = 1:180
    x(i) = r * cos(i*2*pi/180);
    y(i) = r * sin(i*2*pi/180);
    figure(100);clf
    plot(x,y,'r');
    axis([0,2,-2,2])
    axis equal;
    hold on;
end
x1 = []
y1 = []
for n = 1 : 9
    x1 = [x1,r1*cos(2*n*pi/9)];
    y1 = [y1,r1*sin(2*n*pi/9)];
end
for j = 1:9
    figure(100);clf
    plot(x(j),y(j),'*b')
end



    