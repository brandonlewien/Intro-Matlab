clc, clear all
X = imread('photo1_1.jpg'); %Stores the .jpg image into a variable X
X_double = double(X); %Converts image to a matrix of doubles.. (If already contains values as doubles, it has no effect)
[m,n] = size(X_double);%Feeds #rows & #cols into m & n respectively
c = 140; %Amount of pixels image is shifting HORIZONTALLY
E = eye(m);%Makes an identity matrix of size nXn
T = zeros(m); %Makes a Zeroes matrix of size nXn
T(1:c,:) = E(m-(c-1):m,:); %Fills in the first C COLS of T with the last C COLS of E
T(c+1:m,:) = E(1:m-c,:); %Fills in the rest of T with tthe first part of E
X_shift = X_double*T; %Matrix multiplication!!
imagesc(uint8(X_shift));
spy(T);
colormap('gray');