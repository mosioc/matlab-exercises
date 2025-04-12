% تکلیف 5-1: عملیات ماتریسی و رشته‌ای
function matrix_string_operation()
    
    disp('ماتریس X را وارد کنید:');
    X = input('X = ');
    
    disp('ماتریس Y را وارد کنید:');
    Y = input('Y = ');
    
    expr = input('عبارت ریاضی را وارد کنید (مثال: X + Y یا X * Y): ', 's');
    
    try
        result = eval(expr);
        disp('نتیجه عبارت:');
        disp(result);
    catch
        disp('خطا در ارزیابی عبارت. لطفاً عبارت معتبری وارد کنید.');
    end
end

% تکلیف 5-2: رمزگذاری رشته
function encode_string()
    
    str = input('یک رشته وارد کنید: ', 's');
    
    ascii_codes = double(str) + 1;
    
    encoded_str = char(ascii_codes);
    
    disp('رشته رمزگذاری شده:');
    disp(encoded_str);
end

% تکلیف 5-3: رمزگشایی رشته
function decode_string()
    
    encoded_str = input('رشته رمزگذاری شده را وارد کنید: ', 's');
    
    ascii_codes = double(encoded_str) - 1;
    
    decoded_str = char(ascii_codes);
    
    disp('رشته رمزگشایی شده:');
    disp(decoded_str);
end

% اجرای هر سه تابع
disp('تکلیف 5-1:');
matrix_string_operation();

disp('تکلیف 5-2:');
encode_string();

disp('تکلیف 5-3:');
decode_string();