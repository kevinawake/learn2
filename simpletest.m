f = [40,30,0,0,0,0];
a = [1,1,1,0,0,0;
    -1,0,0,1,0,0;
    0,-1,0,0,1,0;
    240,120,0,0,0,1
    ];
b = [6;-1;-1;1200];
index = [3,4,5,6];  %基向量索引

[sigma,theta,x,y,final_res] = Simple(f,a,b,index)

