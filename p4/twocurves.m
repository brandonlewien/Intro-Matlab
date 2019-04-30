theta = 0:.01:2*pi;
rho = sin(2*theta);

t = -1000:.0001:1000;
x = (1-t.^2)./(1+t.^2);
y = (2.*t)./(1+t.^2);
figure
plot(x,y)
figure 
%Since one is in polar one is in cartesian we have to use figure for seperate graphs
polarplot(theta,rho)