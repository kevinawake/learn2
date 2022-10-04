clear;clc
t = 1;
m = 2;
while(t >= 10^(-8))
    n = 1;
    f1 = 1;f2 = 1;
    while(n <= m)
        f1 = f2 + f1;
        f2 = f2 + f1;
        n = n + 1;
    end
    t1 = f2/f1;
    t2 = (1 + sqrt(5))/2;
    t = abs(t1 - t2);
    m = m + 1;
end
m