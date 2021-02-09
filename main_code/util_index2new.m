function[new] = index2new(old)
    mys = size(old);
    tmpnew = old;
    for i = 1:mys(2)
        if old(i) <= 15
            tmpnew(i) = old(i);
        elseif old(i) == 17 || old(i)==18
            tmpnew(i) = old(i)-1;
        else
            tmpnew(i) = old(i)-3;
        end
    end
    new = tmpnew;
end