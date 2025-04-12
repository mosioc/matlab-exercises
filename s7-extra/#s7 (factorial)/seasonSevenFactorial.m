function factorial_of_number()
    n = input('یک عدد صحیح غیرمنفی وارد کنید: ');

    if n < 0 || floor(n) ~= n
        disp('لطفا یک عدد صحیح غیرمنفی وارد کنید.');
        return;
    end

    result = factorial(n);

    disp(['فاکتوریل عدد ' num2str(n) ' برابر است با: ' num2str(result)]);
end
