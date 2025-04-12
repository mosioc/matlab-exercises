n = input('n: ');

x = linspace(0, 2*n*pi, 100);

y = abs(sin(x)) .* (x.^2);

disp(y); 