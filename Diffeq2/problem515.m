clc, clear all
X = imread('photo1_1.jpg');
X_double = double(X);
[m,n] = size(X_double);
E = eye(n);
Flipper = fliplr(E);
X_shift = Flipper*X_double;
spy(X_shift);
imagesc(uint8(X_shift));
colormap('gray')