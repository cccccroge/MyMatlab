function[float] = SngBinToNum(arr)
    %revert the exponent to dicimal
    c2 = 7;
    SUM = 0;
    for c=1:8
       SUM = SUM + arr(c+1).*(2.^c2);
       c2 = c2 - 1;
    end
    
    %now subtract bias we get dicimal exponent 'p'
    p = SUM - 127;
    
    %revert the mantissa to dicimal
    
    %revert intPart
    c2 = (p-1);
    SUM2 = 2.^p;
    for c=1:p
       SUM2 = SUM2 + arr(c+9).*(2.^c2);
       c2 = c2 - 1;
    end
    
    %revert fracPart
    c2 = 1;
    for c=1:(23-p)
       SUM2 = SUM2 + arr(c+9+p).*((1/2).^c2);
       c2 = c2 + 1;
    end
    
    %we get float with sign added
    if(arr(1) == 0)
        float = SUM2;
    end
    
    if(arr(1) == 1)
        float = SUM2 .* (-1);
    end

end