n_samples = 1e6;
x_samples = zeros(n_samples, 1);
y_samples = zeros(n_samples, 1);

for i = 1:n_samples
    while true
        x = rand;
        y = rand;
        if 0 < x && x < y && y < 1
            x_samples(i) = x;
            y_samples(i) = y;
            break;
        end
    end
end

coeff_y_on_x = polyfit(x_samples, y_samples, 1);
a1 = coeff_y_on_x(1);
b1 = coeff_y_on_x(2);

coeff_x_on_y = polyfit(y_samples, x_samples, 1);
a2 = coeff_x_on_y(1);
b2 = coeff_x_on_y(2);

A = [1, -a2 * a1; -a2, 1];
B = [b2 + a2 * b1; b1];
intersection_point = A \ B;

rho = corr(x_samples, y_samples);

fprintf('Linear Regression of Y on X: y = %.4f * x + %.4f\n', a1, b1);
fprintf('Linear Regression of X on Y: x = %.4f * y + %.4f\n', a2, b2);
fprintf('Common Point of Intersection: (x, y) = (%.4f, %.4f)\n', ...
        intersection_point(1), intersection_point(2));
fprintf('Karl Pearson''s ρ: %.4f\n', rho);

figure;
scatter(x_samples, y_samples, 1, 'b', 'filled');
hold on;
x_line = linspace(0, 1, 1000);
y_line = a1 * x_line + b1;
plot(x_line, y_line, 'r', 'LineWidth', 2, 'DisplayName', 'Y on X');
y_line_inverse = linspace(0, 1, 1000);
x_line_inverse = a2 * y_line_inverse + b2;
plot(x_line_inverse, y_line_inverse, 'g', 'LineWidth', 2, 'DisplayName', 'X on Y');
legend('Data', 'Y on X', 'X on Y');
xlabel('X');
ylabel('Y');
title('Linear Regression and Intersection');
grid on;
