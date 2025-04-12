originalImage = imread('pic3.jpg');
% Convert the image to binary for morphological operations
binaryImage = rgb2gray(originalImage);
% Display the original binary image
figure;
subplot(3, 2, 1);
imshow(binaryImage);
title('Original Binary Image');
% Display the histogram of the original binary image
subplot(3, 2, 2);
imhist(binaryImage);
title('Histogram of Original Binary Image');
% Define a structuring element for dilation and erosion
se = strel('disk', 5);
% Perform dilation on the binary image
dilatedImage = imdilate(binaryImage, se);
% Display the dilated image
subplot(3, 2, 3);
imshow(dilatedImage);
title('Dilated Image');
% Display the histogram of the dilated image
subplot(3, 2, 4);
imhist(dilatedImage);
title('Histogram of Dilated Image');
% Perform erosion on the binary image
erodedImage = imerode(binaryImage, se);
% Display the eroded image
subplot(3, 2, 5);
imshow(erodedImage);
title('Eroded Image');
% Display the histogram of the eroded image
subplot(3, 2, 6);
imhist(erodedImage);
title('Histogram of Eroded Image');
% Load the image
originalImage = imread('pic3.jpg');
% Convert the image to binary for morphological operations
binaryImage = rgb2gray(originalImage);
% Display the original binary image
figure;
subplot(3, 2, 1);
imshow(binaryImage);
title('Original Binary Image');
% Display the histogram of the original binary image
subplot(3, 2, 2);
imhist(binaryImage);
title('Histogram of Original Binary Image');
% Define a structuring element for dilation and erosion
se = strel('disk', 5);
% Perform dilation on the binary image
dilatedImage = imdilate(binaryImage, se);
% Display the dilated image
subplot(3, 2, 3);
imshow(dilatedImage);
title('Dilated Image');
% Display the histogram of the dilated image
subplot(3, 2, 4);
imhist(dilatedImage);
title('Histogram of Dilated Image');
% Perform erosion on the binary image
erodedImage = imerode(binaryImage, se);
% Display the eroded image
subplot(3, 2, 5);
imshow(erodedImage);
title('Eroded Image');
% Display the histogram of the eroded image
subplot(3, 2, 6);
imhist(erodedImage);
title('Histogram of Eroded Image');