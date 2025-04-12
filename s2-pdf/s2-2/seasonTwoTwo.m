n = input('n: ');

d = input('d (between 0 and 1): ');

x = 0:d:2*n*pi;

y = abs(sin(x)) .* (x.^2);

disp(y); 