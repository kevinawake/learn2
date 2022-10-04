function [xbar,s] = xs(x)
y1 =0; y2 = 0; n = length(x);
for k = 1:n
    y1 = y1 + x(k);
    y2 = y2 +x(k)^2;
end
xbar = y1/n
s = sqrt((y2 - n*(xbar^2))/(n-1))