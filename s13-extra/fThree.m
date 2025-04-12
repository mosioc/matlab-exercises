% Load the image
originalImage = rgb2gray(imread('pic5.jpg')); 

% Display the original image
figure;
subplot(2, 2, 1);
imshow(originalImage);
title('Original Image');
% Display the histogram of the original image
subplot(2, 2, 2);
imhist(originalImage);
title('Histogram of Original Image');
% Perform histogram equalization
equalizedImage = histeq(originalImage);
% Display the equalized image
subplot(2, 2, 3);
imshow(equalizedImage);
title('Equalized Image');
% Display the histogram of the equalized image
subplot(2, 2, 4);
imhist(equalizedImage);
title('Histogram of Equalized Image');