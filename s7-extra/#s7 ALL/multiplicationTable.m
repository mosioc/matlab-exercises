function multiplicationTable(n, i)
    if i > 10
        return; 
    else
        fprintf('%d x %d = %d\n', n, i, n * i);
        multiplicationTable(n, i + 1); % فراخوانی بازگشتی
    end
end