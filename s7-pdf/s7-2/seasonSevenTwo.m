function result = evaluate_math_expression(expr, arr)
    
    narginchk(2, 2);
    
    nargoutchk(0, 1);
    
    if ~ischar(expr)
        error('آرگومان اول باید یک رشته کاراکتری باشد.');
    end
    if ~isnumeric(arr)
        error('آرگومان دوم باید یک متغیر عددی باشد.');
    end
    
    x = arr;
    
    try
        result = eval(expr);
    catch
        error('خطا در ارزیابی عبارت ریاضی. لطفاً عبارت معتبری وارد کنید.');
    end
    
    if ~isnumeric(result)
        error('نتیجه ارزیابی باید عددی باشد.');
    end
end
% mehdi maleki: start from here
expr = input('لطفاً یک عبارت ریاضی وارد کنید (از x به عنوان متغیر استفاده کنید): ', 's');
arr = input('لطفاً یک آرایه عددی وارد کنید: ');

try
    result = evaluate_math_expression(expr, arr);
    disp('نتیجه ارزیابی:');
    disp(result);
catch ME
    disp(['خطا: ' ME.message]);
end