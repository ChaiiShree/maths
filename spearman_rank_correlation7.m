clc; 
a=[110 100 140 120 80 90]; 
b=[70 20 10 65 60 80]; 
[RHO, PVAL] = corr(a', b', 'type','Spearman'); 
disp(PVAL); 
disp(RHO); 