syms x(g)
Dx = diff(x);
ode = diff(x,g,2) == 0;
cond1 = x(0) == 10;
cond2 = Dx(0) == 0;
conds = [cond1 cond2];
xSol(g) = dsolve(ode, conds);
xSol = simplify(xSol)
news = subs(9.81,g,xSol)
lims = [0 2]
fplot(news, lims)