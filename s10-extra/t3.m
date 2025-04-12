M3 = randi([5, 20], 5, 4, 3);

sum_along_third_dim = sum(M3, 3);

rotated_M3 = rot90(M3, 1); % چرخش 90 درجه در بعد اول و دوم

disp('3D Matrix M3:');
disp(M3);
disp('Sum along the third dimension:');
disp(sum_along_third_dim);
disp('Rotated M3:');
disp(rotated_M3);