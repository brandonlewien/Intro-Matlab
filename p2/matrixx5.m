function A = matrixx5(n)
%matrix
    A = zeros(n);
    for q = 1:n
        for p = 1:q
            A(p,q) = n + 1 - q;
            A(q,p) = n + 1 - q;
        end
    end
end

