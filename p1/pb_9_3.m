%%
% Worked with Adam Smrekar
%% 
% (a)
A = zeros(4);
A(:,end) = 1*(1:4)
%% 
% (b)
B = zeros(4);
B(:,end) = (4:-1:1);
B(3:4:12) = (7:2:11)
%% 
% (c)
C = zeros(4);
C(:,end) = (4:-1:1);
C(3:4:12) = (7:2:11);
C .* (3 * (mod(C, 2) == 0)) + C .* (2 * (mod(C, 2) == 1))
%% 
% (d)
D = zeros(5);
D(:,end) = 1;
D(1:6:26) = 2.5 * (0:4)
%% 
% (e)
E = 0:5;
E = reshape(2.^E,1,6)
%% 
% (f)
F = zeros(4);
F(:,1) = 10;
F(:,end) = -10;
F(F<-1)=-1
%% 
% (g)
G = zeros(4);
G(:,1) = 10;
G(:,end) = -10;
G(G<-1)=2.*G(G<-1)
%%
% (h)
H = [[0 1 1 0]
    [1 0 0 0] 
    [1 0 0 0] 
    [0 0 0 0]]
J=(H == H.')
K = all(J)
all(K)
issymmetric(H) %To check only