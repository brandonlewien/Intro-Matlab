function sol = symplecticEuler_solve(ydot , init , t)
steps = length(t);
sol = zeros(4, steps);
sol(:,1) = init;
for i = 1:length(t)-1
dot = ydot(t(i), sol(:,i));
sol(3:4,i+1) = sol(3:4,i) + (t(i+1)-t(i)) * dot (3:4);
sol(1:2,i+1) = sol(1:2,i) + ...
(t(i+1)-t(i)) * sol (3:4,i +1);
end
end