function [sigma,theta,x,y,final_res] = Simple(f,a,b,index)
%
%
%
%

[m,n] = size(a);
un_index = setdiff(1:n, index);
format rat
%
while true
    x_basic = zeros(n,1);
    x_basic(index) = b;
    cB = f(index)
    sigma = zeros(1,n);
    
    sigma(un_index) = f(un_index) - cB*a(:,un_index);
    [~,j] = max(sigma);
    if (all(sigma <= 0)) & (all(x_basic >= 0))
        x = x_basic;
        y = f * x;
        final_res = 0;
        return
    end
    if all(a(:,j) <= 0)
        x = [];
        y = inf;
        final_res = 1;
        return
    end
    theta = b ./ a(:,j);
    theta(theta < 0 | a(:,j) < 0) = 100000;
    [~, k] = min(theta);
    out_index = index(k);
    index(index == out_index) = j;
    un_index = setdiff(1:n,index);
    a(:,un_index) = a(:,index) \ a(:,un_index);
    b = a(:,index) \ b;
    a(:,index) = eye(m,m);
end