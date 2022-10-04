theta =240 ;%theta取200,240
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
a1 = acosd((BC^2 + BD^2 - CD^2)/(2*BC*BD))
a2 = acosd((BC^2 + AB^2 -AC^2)/(2*BC*AB))