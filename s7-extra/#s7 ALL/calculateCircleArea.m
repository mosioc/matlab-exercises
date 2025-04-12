function area = calculateCircleArea(radius)
   
    if radius < 0
        error('شعاع باید یک عدد مثبت باشد.');
    end
    
    area = pi * radius^2; % فرمول: A = πr^2
end