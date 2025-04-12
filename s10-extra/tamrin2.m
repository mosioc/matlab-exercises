M1 = randi([0, 15], 4, 4);
M2 = randi([0, 15], 4, 2);

M2_expanded = repmat(M2, 1, 2); % تکرار M2 برای هماهنگی با ابعاد M1
comparison = M1 == M2_expanded;

M1_M2_product = M1 .* M2_expanded;

disp('Matrix M1:');
disp(M1);
disp('Matrix M2:');
disp(M2);
disp('Comparison of M1 and M2:');
disp(comparison);
disp('Element-wise product of M1 and M2:');
disp(M1_M2_product);
