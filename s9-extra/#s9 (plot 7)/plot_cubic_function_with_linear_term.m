function plot_cubic_function_with_linear_term()
    % تعریف بازه‌ای برای مقادیر x
    x = -10:0.1:10; % از -10 تا 10 با گام 0.1

    % محاسبه y = x^3 + 2*x - 1
    y = x.^3 + 2*x - 1;

    % رسم نمودار y = x^3 + 2*x - 1
    plot(x, y);

    % تنظیمات نمودار
    title('نمودار y = x^3 + 2*x - 1');
    xlabel('x');
    ylabel('y');
    grid on; % نمایش شبکه‌بندی
end
