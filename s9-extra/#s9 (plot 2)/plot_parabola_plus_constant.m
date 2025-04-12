function plot_parabola_plus_constant()
    % تعریف بازه‌ای برای مقادیر x
    x = -10:0.1:10; % از -10 تا 10 با گام 0.1

    % محاسبه y = x^2 + 4
    y = x.^2 + 4;

    % رسم نمودار y = x^2 + 4
    plot(x, y);

    % تنظیمات نمودار
    title('نمودار y = x^2 + 4');
    xlabel('x');
    ylabel('y');
    grid on; % نمایش شبکه‌بندی
end
