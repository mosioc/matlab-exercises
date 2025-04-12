function fibSeq = fibonacciRecursive(n)
    if n <= 0
        fibSeq = 0; % سری فیبوناچی برای n <= 0 برابر با 0 است
    elseif n == 1
        fibSeq = 1; % جمله اول برابر با 1 است
    else
        fibSeq = fibonacciRecursive(n - 1) + fibonacciRecursive(n - 2); % فراخوانی بازگشتی
    end
end