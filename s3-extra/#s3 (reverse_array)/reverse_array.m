function reverse_array()
    % دریافت آرایه از کاربر
    numbers = input('لطفاً یک آرایه عددی وارد کنید (مثال: [1, 2, 3, 4, 5]): ');

    % بررسی اینکه ورودی آرایه باشد
    if ~isvector(numbers)
        disp('لطفاً یک آرایه عددی وارد کنید.');
        return;
    end

    % نمایش آرایه معکوس با استفاده از یک حلقه for
    disp('آرایه معکوس شده:');
    for i = length(numbers):-1:1
        fprintf('%d\n', numbers(i));
    end
end
