clear
X_gray = imread('photo1_1.jpg');
X_double = double(X_gray);
[m,n] = size(X_double);
rh = 140;
Eh = eye(m);
Th = zeros(m);
Th(1:rh,:) = Eh(m-(rh-1):m,:);
Th(rh+1:m,:) = Eh(1:m-rh,:);
X_shifth = X_double*Th;
rv = 100;
Ev = eye(m);
Tv=zeros(m);
Tv(1:rv,:) = Ev(m-(rv-1):m,:);
Tv(rv+1:m,:) = Ev(1:m-rv,:);
X_shiftv = Tv*X_shifth;
imagesc(uint8(X_shiftv));
colormap('gray');