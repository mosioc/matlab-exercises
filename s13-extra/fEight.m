% Load the image
originalImage = rgb2gray(imread('pic6.jpg'));
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
% Create a 3x3 average filter using fspecial
averageFilter = fspecial('average', [3 3]);
% Apply average filtering to reduce noise using filter2
averageFiltered = filter2(averageFilter, noisyImage) / sum(averageFilter(:));
% Display the image after average filtering
subplot(3, 2, 5);
imshow(averageFiltered);
title('Average Filtered Image');
% Display the histogram of the average-filtered image
subplot(3, 2, 6);
imhist(averageFiltered);
title('Histogram of Average Filtered Image');