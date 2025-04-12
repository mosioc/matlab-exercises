function result = processVector(x)
  % نحوه استفاده از این کد:   
%x = linspace(-1, 1, 100);  % ایجاد یک بردار از اعداد بین -1 و 1
%y = seasonSevenOne(x);      % فراخوانی تابع با خروجی
% seasonSevenOne(x);          % فراخوانی تابع برای رسم نمودار

    if nargin ~= 1 || nargout > 1
        error('تعداد آرگومان‌های ورودی یا خروجی نامعتبر است');
    end
    
    if ~isvector(x)
        error('ورودی باید یک بردار (سطری یا ستونی) باشد');
    end
    
    y = 2 * exp(4 * x.^2) + 3 * sin(2 * pi * x) + 10;
    
   
    if nargout == 0

        plot(x, y);
        xlabel('x');
        ylabel('y');
        title('y = 2exp(4x^2) + 3sin(2πx) + 10');
        grid on;
    else
        result = y;
    end
end