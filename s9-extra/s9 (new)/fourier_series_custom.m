function fourier_series_custom()
    % تعریف بازه t
    t = linspace(0, 2*pi, 1000);

    f = 15; % فرکانس
    y1 = (1/1) * sin(1*f*t) + (1/3) * sin(3*f*t) + (1/5) * sin(5*f*t);
    y2 = (1/2) * cos(2*f*t) + (1/6) * cos(6*f*t);

    % محاسبه y به عنوان جمع y1 و y2
    y = y1 + y2;

    % رسم y1، y2، و y
    figure;

    subplot(3,1,1);
    plot(t, y1, 'b', 'LineWidth', 1.5);
    title('y_1: جمع سینوسی‌ها با ضرایب فرد');
    xlabel('t');
    ylabel('y_1');
    grid on;

    subplot(3,1,2);
    plot(t, y2, 'r', 'LineWidth', 1.5);
    title('y_2: جمع کسینوسی‌ها با ضرایب زوج');
    xlabel('t');
    ylabel('y_2');
    grid on;

    subplot(3,1,3);
    plot(t, y, 'g', 'LineWidth', 1.5);
    title('جمع کلی y = y_1 + y_2');
    xlabel('t');
    ylabel('y');
    grid on;

    sgtitle('محاسبات سری فوریه');
end
