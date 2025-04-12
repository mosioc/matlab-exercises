function inverted_shifted_fourier_series()
    % تعریف بازه x
    x = linspace(-2*pi, 2*pi, 1000);
    
    % تعریف تعداد سری
    N = 10; % تعداد سری فوریه
    T = pi/2; % مقدار انتقال

    % محاسبه سری فوریه با انتقال
    S_shifted = zeros(size(x)); % مقدار اولیه
    for n = 1:N
        S_shifted = S_shifted + (1/n) * sin(n * (x - T)); % انتقال سری
    end

    % معکوس کردن انتقال
    S_inverted = zeros(size(x)); % مقدار اولیه برای معکوس
    for n = 1:N
        S_inverted = S_inverted + (1/n) * sin(n * (x + T)); % معکوس کردن انتقال
    end

    % رسم سری منتقل شده و معکوس شده
    figure;
    plot(x, S_shifted, 'b', 'LineWidth', 1.5); % سری انتقال یافته
    hold on;
    plot(x, S_inverted, 'r--', 'LineWidth', 1.5); % سری معکوس شده
    title('معکوس کردن انتقال سری فوریه');
    xlabel('x');
    ylabel('y');
    legend('انتقال یافته', 'معکوس شده');
    grid on;
    hold off;
end
