function K = f2(m)
K = 0;
n = 1;
while(n <= m)
    K = K + sqrt(3)/(2^n);
    n = n + 1;
end
K