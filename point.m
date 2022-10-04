clear;clc
%x,y分别为存储题中无人机初始位置的极径，极角的矩阵
x = [0 100 98 112 105 98 112 105 98 112];
y = [0 0 40.10/360*2*pi 80.21/360*2*pi 119.75/360*2*pi 159.86/360*2*pi 199.96/360*2*pi 240.07/360*2*pi 280.17/360*2*pi 320.28/360*2*pi];
size = 15;
figure(100);clf
polarscatter(y,x,size,'filled');