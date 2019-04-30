syms x1 x2 x3
eqn1 = 2*x1-4*x2+4*x3 == -3;
eqn2 = x1-2*x2+x3 == 5;
eqn3 = x1-4*x2+6*x3 == 10;
[A,B] = equationsToMatrix([eqn1,eqn2,eqn3],[x1, x2, x3])
First = linsolve(A,B);
First = First
Second = A\B;
Second = Second
First == Second
