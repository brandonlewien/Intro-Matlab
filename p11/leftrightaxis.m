grid
hold on
yyaxis left
t = [0:.01:10];
plot(t,sin(pi*t))
plot(t,cos(2*pi*t).*exp(-t))
h = ylabel('matlab does not support subscripts in labels for now');
set(h,'string',{'f_1(t),f_2(t)'}); %unless you use this workaround
yyaxis right
plot(t,20.*sqrt(t))
title('Dual-axis plot')
ylabel('g(t)')
xlabel('t')
hold off