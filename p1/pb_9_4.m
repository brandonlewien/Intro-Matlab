%9.4
t = 0:.05:10*pi;
x = exp(-t/3).*cos(3*t);
y = exp(-t/10).*sin(t)+1;
plot(x,y,'color',1/255*[0 100 255])