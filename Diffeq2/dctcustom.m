function [K]  = dctcustom(n)
%DCT Discrete Cosine Transform
%   Used equation in 4.1
for i = 1:n
    for j = 1:n
        C(i,j) = sqrt(2./n).*cos((pi.*(i-.5).*(j-.5))./n);
    end
end
K = C;
end
