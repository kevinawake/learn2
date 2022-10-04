clear;clc
%theta是需要确定的无人机到正确位置时与圆心无人机和FYO1无人机构成的角的角度
theta = input(['请输入theta的值（theta可取40k,k=1,2,3,4,5,6,8):'])
AB = 100;
AD = 98;
AC = 100;
%利用余弦定理计算边长
BC = sqrt(AB^2 + AC^2 - 2*AB*AC*cos(theta/360*2*pi));
CD = sqrt(AD^2 + AC^2 - 2*AD*AC*cos((360-280.17)/360*2*pi));
BD = sqrt(AD^2 + AB^2 - 2*AD*AB*cos((theta+360-280.17)/360*2*pi));
t1 = AB*CD + BC*AD;
%应用托勒密定理验证四点是否共圆
if t1 == t2
    disp('四点共圆')
else
    disp('四点不共圆')
end
%当theta不同时计算a1和a2的公式会变，分情况讨论
if theta < 160
    a1 = acosd((AB^2 + BD^2 - AD^2)/(2*AB*BD));
    a2 = acosd((BC^2 + BD^2 -CD^2)/(2*BC*BD));
    disp('a1=')
    disp(a1)
    disp('a2=')
    disp(a2)
elseif theta < 200
        a1 = acosd((AB^2 + BD^2 - AD^2)/(2*AB*BD));
        a2 = acosd((BC^2 + AB^2 -AC^2)/(2*BC*AB));
        disp('a1=')
        disp(a1)
        disp('a2=')
        disp(a2)
elseif theta < 320
        a1 = acosd((BC^2 + BD^2 - CD^2)/(2*BC*BD));
        a2 = acosd((BC^2 + AB^2 -AC^2)/(2*BC*AB));
        disp('a1=')
        disp(a1)
        disp('a2=')
        disp(a2)
else
    a1 = acosd((AB^2 + BC^2 - AC^2)/(2*AB*BC));
    a2 = acosd((BD^2 + AB^2 -AD^2)/(2*BD*AB));
    disp('a1=')
    disp(a1)
    disp('a2=')
    disp(a2)
end
    
 
        
        