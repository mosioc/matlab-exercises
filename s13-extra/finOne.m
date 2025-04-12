% Image file name
inputImageFileName = 'pic2.jpg';
% Read image using imread
img = rgb2gray(imread(inputImageFileName));
% Display the original image using imshow
subplot(2, 1, 1);
imshow(img);
title('Original Image');
% Define two points to create a line for intensity profile
point1 = [50, 100];
point2 = [250, 300];
% Extract intensity profile using improfile
intensityProfile = improfile(img, [point1(2), point2(2)], [point1(1), point2(1)]);
% Display the intensity profile using plot
subplot(2, 1, 2);
plot(intensityProfile);
title('Intensity Profile');
% Save the images using imwrite
imwrite(img, 'example_original_image.jpg');