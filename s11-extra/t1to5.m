% تعریف چندجمله‌ای‌ها به صورت بردار ضرایب
a = [1 -3 2]; % مثلا a(x) = x^2 - 3x + 2
b = [1 0 -4 4]; % مثلا b(x) = x^3 - 4x + 4

% 1. محاسبه ریشه‌های b
roots_b = roots(b);

% 2. محاسبه مشتق اول و دوم b
first_derivative_b = polyder(b);
second_derivative_b = polyder(first_derivative_b);

% 3. محاسبه حاصل جمع a و b به صورت دستی
% ابتدا دو بردار ضرایب را هم‌طول می‌کنیم
len_diff = length(b) - length(a);
if len_diff > 0
    a = [zeros(1, len_diff) a]; % اضافه کردن صفر به ابتدا
elseif len_diff < 0
    b = [zeros(1, -len_diff) b]; % اضافه کردن صفر به ابتدا
end
sum_ab = a + b;

% 4. محاسبه مقادیر y1 به ازای بردار x1 و ترسیم آن برای چندجمله‌ای a
x1 = linspace(-10, 10, 100); % تعریف بردار x1 از -10 تا 10
y1 = polyval(a, x1); % محاسبه مقادیر y1 از روی چندجمله‌ای a

figure;
plot(x1, y1);
title('Plot of a(x) for x1');
xlabel('x');
ylabel('a(x)');

% 5. تقسیم b بر a
% حذف ضرایب صفر از ابتدای a
a = a(find(a, 1):end); % حذف ضرایب صفر از ابتدا
[quotient, remainder] = deconv(b, a);

% نمایش نتایج
disp('Roots of b:');
disp(roots_b);
disp('First derivative of b:');
disp(first_derivative_b);
disp('Second derivative of b:');
disp(second_derivative_b);
disp('Sum of a and b:');
disp(sum_ab);
disp('Quotient of b / a:');
disp(quotient);
disp('Remainder of b / a:');
disp(remainder);