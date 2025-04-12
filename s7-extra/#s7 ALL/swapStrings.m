function swapStrings(str1, str2)
    
    fprintf('قبل از جابه‌جایی:\nرشته اول: %s\nرشته دوم: %s\n', str1, str2);
    
    temp = str1;
    str1 = str2;
    str2 = temp;
    
    fprintf('بعد از جابه‌جایی:\nرشته اول: %s\nرشته دوم: %s\n', str1, str2);
end
