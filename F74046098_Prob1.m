fprintf('The binary representation of 574.87 is');
fprintf(' [');
arr_1 = NumToSngBin(574.87);
for i=1:32
    if(i == 32) fprintf('%d',arr_1(i)); end
    if(i < 32) fprintf('%d ',arr_1(i)); end
end
fprintf(']\n');

fprintf('The decimal representation of [0 1 0 0 0 1 0 0 0 0 0 0 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 0 1 1 1 0] is');
disp(SngBinToNum([0 1 0 0 0 1 0 0 0 0 0 0 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 0 1 1 1 0]));

%**************************************************************************

fprintf('The binary representation of 6.66666 is');
fprintf(' [');
arr_1 = NumToSngBin(6.66666);
for i=1:32
    if(i == 32) fprintf('%d',arr_1(i)); end
    if(i < 32) fprintf('%d ',arr_1(i)); end
end
fprintf(']\n');

fprintf('The decimal representation of [0 1 0 0 0 0 0 0 1 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 0 0 1 1 1] is');
disp(SngBinToNum([0 1 0 0 0 0 0 0 1 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 0 0 1 1 1]));

%**************************************************************************

fprintf('The binary representation of -12.625 is');
fprintf(' [');
arr_1 = NumToSngBin(-12.625);
for i=1:32
    if(i == 32) fprintf('%d',arr_1(i)); end
    if(i < 32) fprintf('%d ',arr_1(i)); end
end
fprintf(']\n');

fprintf('The decimal representation of [1 1 0 0 0 0 0 1 0 1 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] is');
disp(SngBinToNum([1 1 0 0 0 0 0 1 0 1 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]));
