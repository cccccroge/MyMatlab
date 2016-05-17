function[arr] = NumToSngBin(float)

    %[SIGN:1]

    %we can get sign immediately
    if(float >= 0) 
        arr(1) = 0;
    end
    
    if(float <  0) 
        arr(1) = 1;
    end
    
%**************************************************************************

    %[EXPONENT:8]

    %seperate into intPart & fracPart
    if(float < 0)
       float = float .* (-1);
    end
    intPart = floor(float);
    fracPart = float - intPart;
    
    %get binary of intPart
    i = 1;
    while(intPart > 0)
        arr_1(i) = intPart - floor(intPart./2).*2;
        i = i + 1;
        intPart = floor(intPart./2);
    end
    arr_1 = fliplr(arr_1);
    
    %then we get exponent of base '2' with bias added
    exponent = length(arr_1) - 1 + 127;
    
    %transform  into binary
    i = 1;
    while(exponent > 0)
        arr_2(i) = exponent - floor(exponent./2).*2;
        i = i + 1;
        exponent = floor(exponent./2);
    end
    arr_2 = fliplr(arr_2);
    
    %store the real binary exponent into arr
    for c=1:8     
       arr(c+1) = arr_2(c);
    end
     
%**************************************************************************
    
    %[MANTISSA:23]

    %get binary of fracPart
    for c=1:23-length(arr_1)+1
       arr_3(c) = floor(fracPart.*2);
       fracPart = fracPart.*2 - floor(fracPart.*2);
    end
    
    %now put arr_1¡Barr_3 into mantissa
    for c=1:length(arr_1)-1
        arr(c+9) = arr_1(c+1);
    end
    
    for c=1:length(arr_3)
        arr(c+9+length(arr_1)-1) = arr_3(c);
    end
end