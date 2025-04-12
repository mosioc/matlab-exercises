function fourier_series_threeTerm_fft_ifft()
    % تعریف بازه x
    x = linspace(0, 2*pi, 1000); % از 0 تا 2*pi با 1000 نقطه

    % تعریف دامنه و محاسبه سه جمله اول سری فوریه
    A1 = 1;   % دامنه برای سینوس اول
    A2 = 0;   % دامنه برای سینوس دوم (جمله دوم صفر است)
    A3 = 2/3; % دامنه برای سینوس سوم

    % محاسبه سه جمله اول سری فوریه
    S = A1 * sin(1*x) + A2 * sin(2*x) + A3 * sin(3*x); % جمع سری

    % محاسبه FFT
    Y_fft = fft(S);

    % محاسبه IFFT
    S_reconstructed = ifft(Y_fft);

    % رسم سری فوریه
    figure;

    % رسم تابع سینوسی
    subplot(3,1,1);
    plot(x, S, 'b', 'LineWidth', 1.5);
    title('سه جمله اول سری فوریه برای تابع سینوسی');
    xlabel('x');
    ylabel('S');
    grid on;

    % رسم FFT
    subplot(3,1,2);
    f = linspace(0, length(S)-1, length(S)); % محور فرکانس
    plot(f, abs(Y_fft), 'r', 'LineWidth', 1.5); % magnitude FFT
    title('تبدیل فوریه سریع (FFT)');
    xlabel('فرکانس (هرتز)');
    ylabel('|Y(f)|');
    grid on;

    % رسم IFFT
    subplot(3,1,3);
    plot(x, real(S_reconstructed), 'g', 'LineWidth', 1.5);
    title('تبدیل فوریه معکوس (IFFT)');
    xlabel('x');
    ylabel('S reconstructed');
    grid on;

    % تنظیمات نهایی
    sgtitle('محاسبات سری فوریه و تبدیل‌های فوریه');
end
