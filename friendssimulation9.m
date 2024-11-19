clc; % Clear the command window

% Generate two arrays of 5000 random numbers each, uniformly distributed in [0,1]
a = rand(1,5000); 
b = rand(1,5000); 

% Find indices where the absolute difference between elements of 'a' and 'b' is less than 0.25
fav = find(abs(a - b) < 0.25); 

% Plot the scatter plot
figure; % Create a new figure
hold on; % Hold the current figure to overlay multiple plots

% Scatter plot of all points (a, b)
scatter(a, b); 

% Highlight the favorable points (where abs(a-b) < 0.25) with a different marker
scatter(a(fav), b(fav), '*'); 

% Calculate the empirical probability of favorable outcomes
prob1 = numel(fav) / 5000; 

% Confidence interval calculation
alpha = 0.05; % Significance level for a 95% confidence interval
zalphaby2 = norminv(0.025); % Z-value for alpha/2 (tails of the distribution)

% Calculate the lower (L) and upper (U) bounds of the confidence interval
L = prob1 + zalphaby2 * sqrt(prob1 .* (1 - prob1) / 5000); 
U = prob1 - zalphaby2 * sqrt(prob1 .* (1 - prob1) / 5000); 

% Display the results
display(L); % Lower bound of the confidence interval
display(U); % Upper bound of the confidence interval
display(prob1); % Empirical probability of favorable outcomes
