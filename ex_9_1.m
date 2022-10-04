clear;clc
x = -1:0.01:-0.5;
y = x;
[x y] = meshgrid(x,y);
z = 0.5457.*exp(-0.75*y.^2-3.75.*x.^2+1.5.*x);
surf(x,y,z);
hold on;
x = -0.5:0.01:0.5;
y = x;
[x y] = meshgrid(x,y);
z = 0.7575.*exp(-y.^2-6.*x.^2);
surf(x,y,z);
hold on;
x = 0.5:0.01:1;
y = x;
[x y] = meshgrid(x,y);
z = 0.5457.*exp(-0.75*y.^2-3.75.*x.^2-1.5.*x);
surf(x,y,z);
