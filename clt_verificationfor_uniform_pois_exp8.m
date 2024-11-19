%%For Uniform Distribution 
clc; 
n=10; 
for i=1:n 
    v(:,i)=rand(1,50000); 
end 
samplesum=sum(v,2); 
samplebar=samplesum/n; 
var(samplebar); 
histogram(samplebar, 'Normalization','pdf'); 
 
%For Exponential Distribution 
clc; 
n=10; 
for i=1:n 
    v(:,i)=exprnd(2,[1,50000]); 
end 
samplesum=sum(v,2); 
samplebar=samplesum/n; 
var(samplebar); 
histogram(samplebar, 'Normalization','pdf'); 
% 
% %For Poisson Distribution 
clc; 
n=10; 
for i=1:n 
    v(:,i)=poissrnd(2,[1,50000]); 
end 
samplesum=sum(v,2); 
samplebar=samplesum/n; 
var(samplebar); 
histogram(samplebar, 'Normalization','pdf'); 