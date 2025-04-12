function plot_secant_function()
    % تعریف بازه‌ای برای مقادیر x (به جز مقادیر که در آنها cos(x) = 0)
    x = -2*pi:0.01:2*pi;

    % محاسبه y = 1 / cos(x)
    y = 1 ./ cos(x);

    % رسم نمودار y = 1 / cos(x)
    plot(x, y);

    % تنظیمات نمودار
    title('نمودار y = 1 / cos(x)');
    xlabel('x');
    ylabel('y');
    grid on; % نمایش شبکه‌بندی
    ylim([-10 10]); % محدود کردن محور y برای جلوگیری از نوسانات بی‌نهایت
end
