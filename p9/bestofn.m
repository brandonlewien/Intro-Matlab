function bestofn(n)
p = [0:.1:1];
if ~isscalar(n)
    return
end
if mod(n,2) == 0
    return
end
coeff = nchoosek(p,n)
fh = @(p) polyval(coeff,p);
end

