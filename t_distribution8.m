clc;
clear all;
x=[-5:.1:5];
z=normpdf(x,0,1);
figure
plot(x,z)
hold on
y1=tpdf(x,1); plot(x,y1);
% y2=tpdf(x,5); plot(x,y2);
% y3=tpdf(x,10); plot(x,y3);
% y4=tpdf(x,30); plot(x,y4);