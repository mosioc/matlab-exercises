% Load the image
originalImage = rgb2gray(imread('pic1.jpg'));

% Display the original image
figure;
subplot(2, 2, 1);
imshow(originalImage);
title('Original Image');
% Calculate the mean and standard deviation of the image
meanValue = mean2(originalImage);
stdValue = std2(originalImage);

%Display the mean value
subplot(2, 2, 2);
text(0.5, 0.5, sprintf('Mean: %.2f', meanValue), 'FontSize', 14,'HorizontalAlignment', 'center', 'VerticalAlignment', 'middle');
axis off;
title('Mean Value');
% Display the standard deviation value
subplot(2, 2, 3);
text(0.5, 0.5, sprintf('Std: %.2f', stdValue), 'FontSize', 14,'HorizontalAlignment', 'center', 'VerticalAlignment', 'middle');
axis off;
title('Standard Deviation');
% Apply a simple thresholding based on mean and display the result
thresholdedImage = originalImage > meanValue;
subplot(2, 2, 4);
imshow(thresholdedImage);
title('Thresholded Image');