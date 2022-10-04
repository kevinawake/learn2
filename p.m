function z = p(x,y)
if x + y > 1
    z = 0.5457*exp(-0.75*y^2-3.75*x.^2-1.5*x);
elseif x + y <= 1 && x + y > -1
    z = 0.7575*exp(-y^2-6*x^2);
else
    z = 0.5457*exp(-0.75*y^2-3.75*x.^2+1.5*x);
end
z