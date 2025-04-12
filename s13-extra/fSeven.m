% Load the image
originalImage = rgb2gray(imread('pic3.jpg'));
% Add noise to the image using imnoise
noisyImage = imnoise(originalImage, 'salt & pepper', 0.02); % Adjust noise level as needed
% Display the original image
figure;
subplot(3, 2, 1);
imshow(originalImage);
title('Original Image');
% Display the histogram of the original image
subplot(3, 2, 2);
imhist(originalImage);
title('Histogram of Original Image');
% Display the noisy image
subplot(3, 2, 3);
imshow(noisyImage);
title('Noisy Image');

% Display the histogram of the noisy image
subplot(3, 2, 4);
imhist(noisyImage);
title('Histogram of Noisy Image');
% Apply median filtering to reduce noise
medianFiltered = medfilt2(noisyImage);
% Display the image after median filtering
subplot(3, 2, 5);
imshow(medianFiltered);
title('Median Filtered Image');
% Display the histogram of the median-filtered image
subplot(3, 2, 6);
imhist(medianFiltered);
title('Histogram of Median Filtered Image');