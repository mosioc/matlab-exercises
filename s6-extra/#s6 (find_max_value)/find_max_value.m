function find_max_value()
    % دریافت تعداد اعداد از کاربر
    n = input('تعداد اعداد را وارد کنید: ');

    % بررسی اینکه تعداد وارد شده مثبت باشد
    if n <= 0 || floor(n) ~= n
        disp('لطفاً یک عدد صحیح مثبت وارد کنید.');
        return;
    end

    % دریافت اولین عدد و فرض کردن اینکه بزرگ‌ترین عدد است
    max_value = input('عدد اول را وارد کنید: ');

    % حلقه برای دریافت بقیه اعداد و پیدا کردن بزرگ‌ترین عدد
    for i = 2:n
        current_number = input(['عدد ' num2str(i) ' را وارد کنید: ']);

        % بررسی و مقایسه برای پیدا کردن بزرگ‌ترین عدد
        if current_number > max_value
            max_value = current_number; % به‌روز کردن max_value
        end
    end

    % نمایش بزرگ‌ترین عدد
    disp(['بزرگ‌ترین عدد وارد شده: ' num2str(max_value)]);
end
