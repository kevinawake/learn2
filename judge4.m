clear;clc
%因为theta=280是最后被调整的无人机，所以需要重新选取一架发信号的无人机，这里取FYO7
theta = 280 ;
AB = 100;
AD = 100;
AC = 100;
%利用余弦定理计算边长
BC = sqrt(AB^2 + AC^2 - 2*AB*AC*cos(theta/360*2*pi));
CD = sqrt(AD^2 + AC^2 - 2*AD*AC*cos(120/360*2*pi));
BD = sqrt(AD^2 + AB^2 - 2*AD*AB*cos(40/360*2*pi));
t1 = AB*CD + BC*AD;
t2 = AC*BD;
%应用托勒密定理验证四点是否共圆
if t1 == t2
    disp('四点共圆')
else
    disp('四点不共圆')
end
%利用余弦定理和反三角函数计算正确位置的角度
a1 = acosd((AB^2 + BC^2 - AC^2)/(2*AB*BC))
a2 = acosd((BD^2 + AB^2 -AD^2)/(2*BD*AB))