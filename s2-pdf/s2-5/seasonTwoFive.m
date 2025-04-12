grades_units = input('Enter the matrix [grade, unit; grade, unite; ...]: ');

grades = grades_units(:, 1);
units = grades_units(:, 2); 

total_units = sum(units);

term_gpa = sum(grades .* units) / total_units;

disp(['Total Units: ', num2str(total_units)]);
disp(['Term GPA: ', num2str(term_gpa)]);  

excellent = find(term_gpa >= 17);
passed = find(term_gpa >= 12 & term_gpa < 17);
failed = find(term_gpa < 12);

if ~isempty(excellent)
    disp('Excellent performance!');
elseif ~isempty(passed)
    disp('You passed the term.');
elseif ~isempty(failed)
    disp('You need to improve next term.');
end
