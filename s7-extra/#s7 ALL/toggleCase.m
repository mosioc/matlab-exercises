function toggledChar = toggleCase(charInput)
 
    if ischar(charInput) && length(charInput) == 1
 
        if isstrprop(charInput, 'lower')
            toggledChar = upper(charInput); % تبدیل به بزرگ
        else
            toggledChar = lower(charInput); % تبدیل به کوچک
        end
    else
        error('لطفاً یک کاراکتر واحد وارد کنید.');
    end
end