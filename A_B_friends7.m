clc; 
a= rand(1,5000); 
b= rand(1,5000); 
fav= find(abs(a-b)<0.25); 
prob= fav/5000; 
figure 
hold on; 
scatter(a,b); 
scatter(a(fav),b(fav), '*');