clc, clear all
X = imread('photo1_1.jpg'); %Stores the .jpg image into a variable X
X_double = double(X); %Converts image to a matrix of doubles.. (If already contains values as doubles, it has no effect)
[m,n] = size(X_double);%Feeds #rows & #cols into m & n respectively
c = 255; %Amount of pixels image is shifting HORIZONTALLY
E = eye(m);%Makes an identity matrix of size nXn
T = zeros(m); %Makes a Zeroes matrix of size nXn
for t = 1:m
    T(:,t) = E(:,abs(t-(m+1)));
end
Shift = T*X_double;
imagesc(uint8(Shift));
colormap('gray');