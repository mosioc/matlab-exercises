% تعریف ماتریس شامل چهار رشته
strArray = ["Hello World", "MATLAB", "M M", "Test"];

% 1. چاپ معکوس رشته‌ها
disp('1. معکوس رشته‌ها:');
for i = 1:length(strArray)
    disp(reverse(strArray(i)));  % معکوس کردن هر رشته
end

% 2. محاسبه و چاپ تعداد فاصله‌ها (blank) در هر رشته
disp('2. تعداد فاصله‌ها در هر رشته:');
for i = 1:length(strArray)
    numBlanks = count(strArray(i), ' ');  % شمارش فاصله‌ها
    fprintf('رشته %d: %d فاصله\n', i, numBlanks);
end

% 3. محاسبه و چاپ مجموع کدهای اسکی هر رشته
disp('3. مجموع کدهای اسکی هر رشته:');
for i = 1:length(strArray)
    asciiSum = sum(double(char(strArray(i))));  % مجموع کدهای اسکی
    fprintf('رشته %d: مجموع کد اسکی = %d\n', i, asciiSum);
end

% 4. چاپ رشته‌ای با کوچکترین کد اسکی
disp('4. رشته با کوچکترین کد اسکی:');
asciiValues = zeros(1, length(strArray));
for i = 1:length(strArray)
    asciiValues(i) = min(double(char(strArray(i))));  % کمترین مقدار کد اسکی در هر رشته
end
[~, idx] = min(asciiValues);  % یافتن کمترین مقدار
disp(['رشته: ', strArray(idx)]);

% 5. شمارش تعداد کاراکترهای هر رشته
disp('5. تعداد کاراکترهای هر رشته:');
for i = 1:length(strArray)
    numChars = strlength(strArray(i));  % شمارش کاراکترها
    fprintf('رشته %d: %d کاراکتر\n', i, numChars);
end

% 6. جستجوی یک کلمه در رشته‌ها
searchWord = 'MATLAB';  % کلمه جستجو
disp(['6. جستجوی کلمه "', searchWord, '":']);
for i = 1:length(strArray)
    if contains(strArray(i), searchWord)
        fprintf('کلمه "%s" در رشته %d یافت شد.\n', searchWord, i);
    else
        fprintf('کلمه "%s" در رشته %d یافت نشد.\n', searchWord, i);
    end
end

% 7. تبدیل حروف کوچک به بزرگ
disp('7. تبدیل حروف کوچک به بزرگ:');
for i = 1:length(strArray)
    disp(upper(strArray(i)));  % تبدیل به حروف بزرگ
end

% 8. تبدیل حروف بزرگ به کوچک
disp('8. تبدیل حروف بزرگ به کوچک:');
for i = 1:length(strArray)
    disp(lower(strArray(i)));  % تبدیل به حروف کوچک
end
