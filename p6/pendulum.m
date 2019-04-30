function pendulum(l,x0,T)
g = 9.81;
options = odeset('MaxStep', 0.01, 'Stats','on');
sol= ode45(@(t,x) f(t,x,g,l), [0 T],x0, options);
subplot(2,1,1)
plot(sol.x,sol.y)
legend('angular displacement(rad)',...
    'angular velocity (rad/s)',...
    'Location','southwest')
title ('waveform')
xlabel('time (s)')
subplot(2,1,2)
plot(sol.y(1,:),sol.y(2,:))
title('phase plane')
xlabel('angular displacement')
ylabel('angular velocity')
end

function xdot = f(~, x,g, l)
xdot = [ 
    x(2);
    -g/l * sin(x(1))
    ];
end