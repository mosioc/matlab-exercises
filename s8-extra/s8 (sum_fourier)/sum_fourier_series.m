function sum_fourier_series()
    % تعریف بازه x
    x = linspace(-2*pi, 2*pi, 1000);
    
    % تعریف تعداد سری
    N = 3; % تعداد سری فوریه

    % محاسبه سری فوریه
    S = zeros(size(x)); % مقدار اولیه
    for n = 1:N
        S = S + (1/n) * sin(n * x); % جمع سری فوریه
    end

    % رسم تابع سینوسی و جمع سری
    figure;
    plot(x, sin(x), 'r', 'LineWidth', 1.5); % تابع سینوسی
    hold on;
    plot(x, S, 'b', 'LineWidth', 1.5); % جمع سری
    title('جمع 3 سری اول فوریه برای سینوسی');
    xlabel('x');
    ylabel('y');
    legend('sin(x)', 'Fourier Series Sum');
    grid on;
    hold off;
end
