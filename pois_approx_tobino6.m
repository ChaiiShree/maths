clc; 
n=30; 
l=0.6; 
p=0.02; 
X= 0:n 
pmf=binopdf(X,n,p); 
 
bar(X,pmf); 
hold on 
 
pmf1=poisspdf(X,l); 
bar(X,pmf1);