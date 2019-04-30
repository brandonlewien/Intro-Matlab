%Brandon Lewien

x = 1;
y = 0;
[x,y] = meshgrid(0:.001:x, y:.001:1);
;z = x+y-(x.^3+y.^3);
surf(x,y,z);
[c,h] = contourf(z);
clabel(c,h);
colorbar
title('\alpha + \beta - (\alpha^3 + \beta^3)','linewidth',18)
xlabel('\alpha')
ylabel('\beta')
[maxz,posz] = max(z);
value = max(maxz)
maxz = max(posz)
%Rough approx.
text(maxz,maxz, ['\bullet ',num2str(value)])m 