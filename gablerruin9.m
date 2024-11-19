clc; % Clear the command window

% Number of simulations to perform
simul = 10000; 
fav = 0; % Counter for favorable outcomes (money reaches 0)

% Perform simulations
for i = 1:simul 
    money = 30; % Initial amount of money
    N = 50; % Target amount of money
    
    % Simulate the random walk process
    while (money > 0 && money < N) 
        a = randi([0:1], 1); % Randomly pick 0 or 1 (representing heads or tails)
        
        if a == 1 
            money = money + 1; % If 1 (win), increase money by 1
        else 
            money = money - 1; % If 0 (loss), decrease money by 1
        end 
    end
    
    % Check if the outcome is favorable (money reaches 0)
    if money == 0 
        fav = fav + 1; % Increment the count of favorable outcomes
    end 
end 

% Calculate the probability of reaching 0 money
prob = fav / simul; 
fprintf('Probability= '); 
disp(prob); 

% Confidence interval calculation
alpha = 0.05; % Significance level for a 95% confidence interval
zalphaby2 = norminv(0.025); % Z-value for alpha/2 (tails of the distribution)

% Calculate the lower (L) and upper (U) bounds of the confidence interval
L = prob + zalphaby2 * sqrt(prob * (1 - prob) / simul); 
U = prob - zalphaby2 * sqrt(prob * (1 - prob) / simul); 

% Display the confidence interval bounds
display(L); 
display(U); 
