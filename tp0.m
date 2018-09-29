clear all;
close all;

%% After this you need to be able to: read, print images, manupulate
%% understand pixel values and the effects of pixel quantization.

%% read image
I=double(imread('house.png')); 
I=I/255; %(House.png is 8-bits, so image after /255 values always are in [0,1])

size(I) % note that there's no ; at the end. We want Matlab to print the
% result
% The output is [nb_row n_columns nb_of_color_chanels (1 for grayscale
% images, here 3 (most common) for color images, can be more "hyperspectral
% images. Indeed, any color in a natural image can be made by mixing
% different proportions of RED, GREEN, BLUE.
%=> I is stored as the concatenation of three matrices. 
% I(x_coord,y_coord,1) contains the RED value at (x_coord_y_coord)
% I(x_coord,y_coord,2) contains the GREEN value at (x_coord_y_coord)
%

%% convert to grayscale (simplest method)
I=double(imread('house.png')); 
I=I/255;
I=mean(I,3); % perform the mean among color channel to get a grayscale image
figure;
imshow(I)


%% Requantification
I=double(imread('house.png')); 
I=I/255;
% each color channel are in {0,1/255,2/255,...,255/255=1} and this set
% therefore has cardinality 256
% We may want to dimish this cardinality to 128 (to e.g. save some space)
% the simplest method is
N=10 %eg.
J=...% use the round command to requantify I so that its values are 0,0.1,0.2,etc
figure;
imshow(J);title('Requantified') %give titles to easily distiniguish 
%different plots.
figure;
imshow(I);title('Original')
%=> in line 72: complete the formula so we can requantize the image to have N
% levels. Try differents values for N. When do you begin to distinguish 
% the re-quantized version from the original one ?
% It is easy to get why quantification is important: 1) it changes the
% "visual quality" of an image. A smaller quantification step allows to 
% distinguish between small light intensity variations. However, storing
% very precise number costs more in terms of "space".

%% Affine contrast change
I=double(imread('castle.jpg')); 
I=I/255; %(this command will be explained later on)
I=mean(I,3);
% The simplest way is to adjust the caontrast is the affine contrast change
% sot that the pixel values cover the entire [0,1] interval
fI=...
fI=
figure;
imshow(fI);title('After affine contrast stretch')
figure;
imshow(I);title('Original image')

%% FFTS visualization
I=double(imread('castle.jpg')); 



