function [X, Y] = plot_polynomial_from_user()
    
    coeffs = input('لطفا ضرایب چند جمله‌ای را به صورت یک بردار وارد کنید (مثال: [1 -3 2]): ');

    domain = input('لطفا دامنه را به صورت [start, end] وارد کنید (مثال: [0, 10]): ');

    [X, Y] = plot_polynomial(coeffs, domain);
end

function [X, Y] = plot_polynomial(coeffs, domain)
    X = linspace(domain(1), domain(2), 100);
    
    Y = polyval(coeffs, X);
    
    if nargout == 0
        plot(X, Y);
        xlabel('X');
        ylabel('Y');
        title('Polynomial Plot');
        grid on;
    end
end
