function y = fenduan(x)
n = length(x)
for i = 1:n
    if (x(i) < -1.1)
        y(i) = -1.1;
    elseif (abs(x(i)) <= 1.1)
        y(i) = x(i);
    else
        y(i) = 1.1;
    end
end