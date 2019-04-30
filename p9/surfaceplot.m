x = 1;
y = 0;
[x,y] = meshgrid(0:.05:x, y:.05:1);
z = x+y-(x.^2+y.^2);
surf(x,y,z)
colorbar
title('x+y(x^2+y^2)','linewidth',18)