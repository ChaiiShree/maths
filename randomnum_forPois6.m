% Define the parameter lambda 
lambda = 2;

% Sample sizes
sample_sizes = [10, 30, 50, 60, 80 100 120 140 160 180 200 250 500];

% Initialize an array to store the means 
means = zeros(1, length(sample_sizes));

% Generate random numbers and calculate means for each sample size 
for i = 1:length(sample_sizes)
sample_size = sample_sizes(i);
random_numbers = poissrnd(lambda, 1, sample_size); mean_value = mean(random_numbers);
means(i) = mean_value;
end

% Display the means 
disp('Sample Sizes:'); 
disp(sample_sizes); 
disp('Means:'); 
disp(means); 