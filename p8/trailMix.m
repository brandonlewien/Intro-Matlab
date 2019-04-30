cash = -[6;4.5;3];

%ie
%first end
A = [.75 -.25 -.25;
    .4 .4 -.6;
    1 1 10];
B = [0;
    0;
    100];
%bottom limit
bottom = zeros(3,1);
[x, value, flag] = linprog(cash,A,B,[],[],bottom);
fprintf("Cashews %d, Almonds %d, Peanuts %d\n",round(x,2))