I = inv(eye(6));
I = ~I;
I = I*(1/5);
P = I;
A = sym(P);
eig(A)