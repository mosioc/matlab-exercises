n = input('تعداد دانشجویان را وارد کنید: ');

grades = zeros(n, 3);
for i = 1:n
    disp(['نمرات دانشجوی ' num2str(i) ' را وارد کنید:']);
    grades(i, 1) = input('نمره ریاضی1 (4 واحد): ');
    grades(i, 2) = input('نمره مکانیک (3 واحد): ');
    grades(i, 3) = input('نمره معارف اسلامی (2 واحد): ');
end

num_students = n;
disp(['تعداد دانشجویان: ' num2str(num_students)]);

student_averages = (grades(:,1)*4 + grades(:,2)*3 + grades(:,3)*2) / 9;
disp('معدل هر دانشجو:');
disp(student_averages);

course_averages = mean(grades);
disp('معدل هر درس:');
disp(['ریاضی1: ' num2str(course_averages(1))]);
disp(['مکانیک: ' num2str(course_averages(2))]);
disp(['معارف اسلامی: ' num2str(course_averages(3))]);

total_average = mean(student_averages);
disp(['معدل کل دروس برای تمامی دانشجویان: ' num2str(total_average)]);

grades_below_10 = grades .* (grades < 10);
sum_below_10 = sum(sum(grades_below_10 ~= 0));
count_below_10 = sum(sum(grades_below_10 ~= 0));
if count_below_10 > 0
    average_below_10 = sum_below_10 / count_below_10;
    disp(['میانگین نمرات زیر 10 بدون احتساب واحد هر درس: ' num2str(average_below_10)]);
else
    disp('هیچ نمره‌ای زیر 10 وجود ندارد.');
end