function nlfit(input)
%% 1 Part A
adata = readtable(input);
%% 1 Part B
line = polyfit(adata.V,adata.A,1)
%% 1 Part C
%fprintf("y=%dx+%e",line);
%% 1 Part D
subplot(2,1,1), plot(adata.V,adata.A,'o',adata.V, polyval(line,adata.V));
%% 1 Part E
[R,p] = corrcoef(line(1),line(2));
%fprintf("CC=%c, p=%d",R,p)
%% 1 Part F
%Done above in part D
%% 1 Part G
lf = polyfit(log(adata.A),log(adata.V),1)
%I was trying to copy the power laws II but couldn't figure out why
%the output was putting out NaN.
t = linspace(0,1,100);
%% 1 Part H
%Follows the same steps as above
%% 1 Part I
%Same as above.
end