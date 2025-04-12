function plot_trigonometric_function()
    % تعریف بازه‌ای برای مقادیر x
    x = -10:0.01:10; % از -10 تا 10 با گام 0.01

    % محاسبه y = sin(x)/sin(x + 1) + cos(x)
    y = sin(x) ./ sin(x + 1) + cos(x);

    % رسم نمودار
    plot(x, y);

    % تنظیمات نمودار
    title('نمودار y = sin(x)/sin(x + 1) + cos(x)');
    xlabel('x');
    ylabel('y');
    grid on; % نمایش شبکه‌بندی

    % تنظیم محدودیت‌های y برای جلوگیری از نوسانات بی‌نهایت
    ylim([-5 5]);
end
