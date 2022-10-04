function K = f3(x)
a = ones(x,1);
a(1:end) = 1/2;
a = cumprod(a);
a = a.*sqrt(3);
K = sum(a) 