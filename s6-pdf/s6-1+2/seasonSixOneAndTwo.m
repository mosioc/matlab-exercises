% تکلیف 6-1: پردازش نمرات با استفاده از حلقه و دستورات شرطی
function process_grades_with_loop()
    
    grades = input('نمرات دانشجویان را به صورت یک بردار وارد کنید: ');

    if ~isvector(grades)
        error('ورودی باید یک بردار باشد.');
    end

    for i = 1:length(grades)
        if grades(i) < 5
            grades(i) = 9;
        elseif grades(i) >= 5 && grades(i) <= 8
            grades(i) = 9.5;
        elseif grades(i) > 8 && grades(i) <= 10
            grades(i) = 10;
        elseif grades(i) > 10 && grades(i) <= 15
            grades(i) = grades(i) + 1;
        elseif grades(i) > 15 && grades(i) < 20
            grades(i) = grades(i) + 0.5;
        end
    end

    disp('نمرات پردازش شده:');
    disp(grades);
end

% تکلیف 6-2: پردازش نمرات بدون استفاده از حلقه
function process_grades_without_loop()
    
    grades = input('نمرات دانشجویان را به صورت یک بردار وارد کنید: ');

    if ~isvector(grades)
        error('ورودی باید یک بردار باشد.');
    end

    grades(grades < 5) = 9;
    grades((grades >= 5) & (grades <= 8)) = 9.5;
    grades((grades > 8) & (grades <= 10)) = 10;
    grades((grades > 10) & (grades <= 15)) = grades((grades > 10) & (grades <= 15)) + 1;
    grades((grades > 15) & (grades < 20)) = grades((grades > 15) & (grades < 20)) + 0.5;

    disp('نمرات پردازش شده:');
    disp(grades);
end

% اجرای هر دو تابع
disp('تکلیف 6-1: پردازش نمرات با استفاده از حلقه');
process_grades_with_loop();

disp('تکلیف 6-2: پردازش نمرات بدون استفاده از حلقه');
process_grades_without_loop();