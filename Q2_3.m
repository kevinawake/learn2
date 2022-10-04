clear,clc
close
fplot(@f)
% x=-5:0.1:5;
% y=f(x);
% plot(x,y)
xlabel("X")
ylabel("Y")
function y=f(x)
if abs(x)<=1.1
    y=x;
else
    y=sign(x)*1.1;
end
end