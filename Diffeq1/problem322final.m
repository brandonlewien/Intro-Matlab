clc, clear
initialize = 4000;
h = (1/24);
t(1) = 0;
y(1) = 750000;
n = 1;

while(y(n) > 0)
    t(n+1) = t(n) + h;
    y(n+1) = y(n) + h*eulerrates(t(n),y(n), initialize)
    n = n + 1;
end

initialize2 = 4500;
ttwo(1) = 0;
ytwo(1) = 750000;
m = 1;

while(ytwo(m) > 0)
    ttwo(m+1) = ttwo(m) + h;
    ytwo(m+1) = ytwo(m) + h*eulerrates(ttwo(m),ytwo(m), initialize2);
    m = m+1;
end

hold on
plot(t,y,'b')
plot(ttwo,ytwo,'r')
%% labels and prettiness
axis([0 35 0 750000])
title('Adjustable-Fixed Rate Loan Analysis','fontsize', 14)
xlabel('Time (years)','fontsize',12)
ylabel('Amount Owed (dollars*10^5)','fontsize',12)
legend('Monthly = $4,000','Monthly = $4,500' )
hold off
