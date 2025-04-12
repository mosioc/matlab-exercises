function solve_linear_equations()
    n = input('تعداد متغیرها را وارد کنید: ');
    m = input('تعداد معادلات را وارد کنید: ');

    disp('ماتریس ضرایب را به صورت [a11 a12 ...; a21 a22 ...;] وارد کنید:');
    A = input('');

    disp('بردار سمت راست را به صورت [b1; b2; ...] وارد کنید:');
    b = input('');

    try
        x = A \ b;
        
        disp('جواب دستگاه معادلات:');
        for i = 1:n
            fprintf('x%d = %f\n', i, x(i));
        end
        
        residual = norm(A*x - b);
        fprintf('نرم باقیمانده: %e\n', residual);
        
        if residual < 1e-10
            disp('جواب دقیق است.');
        elseif residual < 1e-5
            disp('جواب تقریبی خوبی است.');
        else
            disp('جواب تقریبی است و ممکن است دقت کافی نداشته باشد.');
        end
    
    catch ME
        if strcmp(ME.identifier, 'MATLAB:singularMatrix')
            disp('خطا: سیستم معادلات قابل حل نیست یا جواب یکتا ندارد.');
        else
            rethrow(ME);
        end
    end
end