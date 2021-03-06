function plot_orbit(y0, T, s)
% Input:
% y0 - the initial state of the satellite
% T - the maximum time to solve to
% s - the step size (delta -T)
% solve - a function to a solver
% Plots the orbit and the velocity vs. time for the
% satellite system , using the provided solver.

% Solve the system.
sol = solve( @orbit , y0, 0:s:T);

% Clear the plot window.
options = odeset('MaxStep', s, 'Stats', 'on');
fsol = ode45(@orbit,[0 T], y0, options);
sol = deval(fsol,0:s:T);
clf;
% Plot the orbit and the velocity w.r.t. time.
% plot 1: the orbit
subplot(2, 1, 1);
hold on;
title('Position');
xlabel('X');
ylabel('Y');
zlabel('Z');
% central mass
plot3 ([0], [0], [0], 'or');
% orbit
plot3(sol(1,:), sol(2,:), sol(3,:), '-b');
axis('equal');
% plot 2: the velocity w.r.t. time
v = velocity(sol);
subplot(2, 1, 2);
hold on;
title('Velocity');
xlabel('Time');
ylabel('Absolute velocity');
plot(0:s:T, v, '-b');
end

function ydot = orbit(t, y)
% Returns the vector of the derivative of y at time t.
r = sqrt(y(1:3)' * y (1:3));
ydot = [y(4:6); ...
-1/r^3 * y(1); ...
-1/r^3 * y(2);
-1/r^3 * y(3)];
end

function V = velocity(sol)
% Returns the vector of the velocities of the satellite at
% the timesteps.
V = sqrt(sol(4,:).*sol(4,:) + sol(5,:).*sol(5,:)+sol(6,:).*sol(6,:)); 
end
