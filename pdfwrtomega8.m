clc; 
sd=0.5; 
mean=0; 
x=[mean-3*sd: 0.001 :mean+3*sd]; 
y=normpdf(x, mean,sd^2); 
plot(x,y); 
 
hold on 
sd1=1; 
x=[mean-3*sd1: 0.001 :mean+3*sd1]; 
y=normpdf(x, mean,sd1^2); 
plot(x,y); 