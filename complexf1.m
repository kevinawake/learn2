clear;clc
x = -1:0.1:1;
y = x;
[x y] = meshgrid(x,y);
[m n] = size(x);
for i = 1:m
    for j = 1:n
        z(i,j) = fu(x(i,j),y(i,j));
    end
end
surf(x,y,z);