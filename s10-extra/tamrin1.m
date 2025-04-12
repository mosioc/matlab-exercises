M = randi([0, 10], 7, 7);

row_means = mean(M, 2);

column_max = max(M);

has_prime_in_row = false(1, size(M, 1));
for i = 1:size(M, 1)
    for j = 1:size(M, 2)
        if isprime(M(i, j))
            has_prime_in_row(i) = true;
            break;
        end
    end
end

disp('Matrix M:');
disp(M);
disp('Mean of each row:');
disp(row_means);
disp('Maximum of each column:');
disp(column_max);
disp('Prime number exists in each row:');
disp(has_prime_in_row);