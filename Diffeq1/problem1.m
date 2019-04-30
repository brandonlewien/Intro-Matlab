clc,clear
%% initial t
t = 1:.1:25;
%%
n = 12;
yt = 750000;
r = .03;
y = (1+(r/n)).^(n.*t)*(yt);
hold on
plot(t,y)
n = 4;
y = (1+(r/n)).^(n.*t)*(yt);
plot(t,y)
n = 2;
y = (1+(r/n)).^(n.*t)*(yt);
plot(t,y)
n = 1;
y = (1+(r/n)).^(n.*t)*(yt);
plot(t,y)
%% continuous
y = yt*exp(r*t);
plot(t,y)
%% title, legend, axis
title('Outstanding Balance Versus Time','fontsize', 16)
xlabel('Time (years)','fontsize',14)
ylabel('Outstanding Balance (dollars)','fontsize',14)
legend('n=12','n=4','n=2','n=1','continuous')
hold off