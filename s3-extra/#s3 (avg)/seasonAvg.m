n_students = 3;
n_subjects = 3;

scores = zeros(n_students, n_subjects);

for i = 1:n_students
    for j = 1:n_subjects
        scores(i, j) = input(['لطفاً نمره درس ' num2str(j) ' دانشجو ' num2str(i) ' را وارد کنید: ']);
    end
end

average_subjects = mean(scores);

overall_average = mean(scores(:));

average_students = mean(scores, 2);

failed_students = find(average_students < 10);

disp('میانگین هر درس:');
disp(average_subjects);
disp('میانگین کل:');
disp(overall_average);
disp('میانگین هر دانشجو:');
disp(average_students);
disp('دانشجویان افتاده:');
disp(failed_students);
