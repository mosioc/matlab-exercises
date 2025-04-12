% Read image using imread
img = imread('pic1.jpg');

% Display the original image using imshow
subplot(1, 2, 1);
imshow(img);
title('Original Image');

% Convert the RGB image to grayscale
grayImg = rgb2gray(img);

% Create a contour plot using imcontour
subplot(1, 2, 2);
imcontour(grayImg);
title('Contour Plot');

% Save the original image using imwrite
imwrite(img, 'example_original_image.jpg');
