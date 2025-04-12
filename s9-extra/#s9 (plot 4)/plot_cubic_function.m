function plot_cubic_function()
    % تعریف بازه‌ای برای مقادیر x
    x = -10:0.1:10; % از -10 تا 10 با گام 0.1

    % محاسبه y = (x - 1)^3
    y = (x - 1).^3;

    % رسم نمودار y = (x - 1)^3
    plot(x, y);

    % تنظیمات نمودار
    title('نمودار y = (x - 1)^3');
    xlabel('x');
    ylabel('y');
    grid on; % نمایش شبکه‌بندی
end
