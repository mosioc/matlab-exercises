function result = factorialRecursive(n)
   
    if n < 0
        error('فاکتوریل برای اعداد منفی تعریف نشده است.');
    elseif n == 0 || n == 1
        result = 1; % فاکتوریل 0 و 1 برابر با 1 است
    else
        result = n * factorialRecursive(n - 1); % فراخوانی بازگشتی
    end
end