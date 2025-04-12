function calculate_circle_area()
    r = input('شعاع دایره را وارد کنید: ');

    if r <= 0
        disp('شعاع دایره باید عددی مثبت باشد.');
        return;
    end

    area = pi * r^2;
    
    disp(['مساحت دایره با شعاع ' num2str(r) ' برابر است با: ' num2str(area)]);
end
