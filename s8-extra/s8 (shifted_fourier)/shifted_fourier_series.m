function shifted_fourier_series()
    % تعریف بازه x
    x = linspace(-2*pi, 2*pi, 1000);
    
    % تعریف تعداد سری
    N = 10; % تعداد سری فوریه
    T = pi/2; % مقدار انتقال

    % محاسبه سری فوریه
    S = zeros(size(x)); % مقدار اولیه
    for n = 1:N
        S = S + (1/n) * sin(n * (x - T)); % انتقال سری
    end

    % رسم سری انتقال یافته
    figure;
    plot(x, S, 'b', 'LineWidth', 1.5);
    title('انتقال سری فوریه');
    xlabel('x');
    ylabel('y');
    grid on;
end
