clc; 
n=10; 
for i=1:n 
    v(:,i)=normrnd(2,1,[1,50000]); 
end 
samplesum=sum(v,2); 
samplebar=samplesum/n; 
var(samplebar); 
histogram(samplebar, 'Normalization','pdf');