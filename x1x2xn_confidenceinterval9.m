clc; 
load examgrades 
x=grades(:,1) 
histogram(x); 
MLE= mle(x,'distribution','normal') 
[meanest stdest mci sci] = normfit(x, 0.05) 