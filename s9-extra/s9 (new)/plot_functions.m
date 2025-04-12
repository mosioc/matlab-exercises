function plot_all_functions()

    x = linspace(-10, 10, 1000);

    y1 = x.^3 .* sin(x);
    y2 = (x.^3 - x) .* cos(x);
    y3 = x .* sin(x) + cos(x);
    y4 = exp(x) .* sin(x);
    y5 = exp(x) .* cos(x);
    y6 = exp(-x) .* tan(x);
    y7 = sin(x) ./ (x.^2 + 1);
    y8 = x.^3 ./ (x.^2 + 1);
    y9 = sin(x) .* sqrt(x);
    y10 = x.^3 .* floor(x);
    y11 = x .* sin(x) + ceil(x);
    y12 = exp(x) .* sign(x);
    y13 = (sqrt(x.^2 + cos(x))); 

    y14 = x.^2 + x + 5;
    y15 = x.^3 - x.^2 - x + 1;
    y16 = 1 ./ x;
    y17 = (x.^2 + x) ./ (x + 1);
    y18 = sqrt(x + 1);
    y19 = exp(x);
    y20 = sin(x) + cos(x);
    y21 = cos(x) - sin(x);

    figure;
    
    subplot(5,5,1); plot(x, y1); title('y = x^3 * sin(x)');
    subplot(5,5,2); plot(x, y2); title('y = (x^3 - x) * cos(x)');
    subplot(5,5,3); plot(x, y3); title('y = x * sin(x) + cos(x)');
    subplot(5,5,4); plot(x, y4); title('y = e^x * sin(x)');
    subplot(5,5,5); plot(x, y5); title('y = e^x * cos(x)');
    subplot(5,5,6); plot(x, y6); title('y = e^{-x} * tan(x)');
    subplot(5,5,7); plot(x, y7); title('y = sin(x) / (x^2 + 1)');
    subplot(5,5,8); plot(x, y8); title('y = x^3 / (x^2 + 1)');
    subplot(5,5,9); plot(x, y9); title('y = sin(x) * sqrt(x)');
    subplot(5,5,10); plot(x, y10); title('y = x^3 * floor(x)');
    subplot(5,5,11); plot(x, y11); title('y = x * sin(x) + ceil(x)');
    subplot(5,5,12); plot(x, y12); title('y = e^x * sign(x)');
    subplot(5,5,13); plot(x, y13); title('y = sqrt(x^2 + cos(x))');
    subplot(5,5,14); plot(x, y14); title('y = x^2 + x + 5');
    subplot(5,5,15); plot(x, y15); title('y = x^3 - x^2 - x + 1');
    subplot(5,5,16); plot(x, y16); title('y = 1 / x');
    subplot(5,5,17); plot(x, y17); title('y = (x^2 + x) / (x + 1)');
    subplot(5,5,18); plot(x, y18); title('y = sqrt(x + 1)');
    subplot(5,5,19); plot(x, y19); title('y = e^x');
    subplot(5,5,20); plot(x, y20); title('y = sin(x) + cos(x)');
    subplot(5,5,21); plot(x, y21); title('y = cos(x) - sin(x)');
    
    % تنظیمات نهایی
    sgtitle('Plots of Different Functions');
end
