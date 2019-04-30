function [ voltage ] = bridge(r, vs)
%Some resistors, power supply, stuff
    if(length(r) == 5)
        a = [(1/r(1)+1/r(2)+1/r(4)), -1/r(3); -1/r(3),(1/r(2)+1/r(3)+1/r(5))];
        b = vs.*[-1/r(1); -1/r(2)];
        x = a./b;
        voltage = [x(1);x(2)];
    else
        voltage = 'r does not equal 5';
    end
end

