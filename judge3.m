theta = 320;%theta取320
AB = 100;
AD = 98;
AC = 100;
BC = sqrt(AB^2 + AC^2 - 2*AB*AC*cos(theta/360*2*pi));
CD = sqrt(AD^2 + AC^2 - 2*AD*AC*cos((360-280.17)/360*2*pi));
BD = sqrt(AD^2 + AB^2 - 2*AD*AB*cos((theta+360-280.17)/360*2*pi));
t1 = AB*CD + BC*AD;
t2 = AC*BD;
if t1 == t2
    disp('四点共圆');
else
    disp('四点不共圆');
end
a1 = acosd((AB^2 + BC^2 - AC^2)/(2*AB*BC))
a2 = acosd((BD^2 + AB^2 -AD^2)/(2*BD*AB))