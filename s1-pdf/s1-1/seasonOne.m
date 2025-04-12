total_days = input('Enter the age in days: ');

y = floor(total_days / 365);
remaining_days = mod(total_days, 365);

m = floor(remaining_days / 30);
remaining_days = mod(remaining_days, 30);

w = floor(remaining_days / 7);

d = mod(remaining_days, 7);

fprintf('%d years, %d months, %d weeks, and %d days.\n', y, m, w, d);
