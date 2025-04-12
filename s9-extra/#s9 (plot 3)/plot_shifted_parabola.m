function plot_shifted_parabola()
    % تعریف بازه‌ای برای مقادیر x
    x = -10:0.1:10; % از -10 تا 10 با گام 0.1

    % محاسبه y = (x - 2)^2
    y = (x - 2).^2;

    % رسم نمودار y = (x - 2)^2
    plot(x, y);

    % تنظیمات نمودار
    title('نمودار y = (x - 2)^2');
    xlabel('x');
    ylabel('y');
    grid on; % نمایش شبکه‌بندی
end
