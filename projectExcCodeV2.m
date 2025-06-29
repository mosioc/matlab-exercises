I = imread("text7.png");

bboxes = detectTextCRAFT(I);

ocrResults = ocr(I, bboxes);

extractedText = ocrResults.Text;

Iout = insertShape(I, "rectangle", bboxes, 'LineWidth', 3, 'Color', 'red');

figure;
imshow(Iout);

disp('Detected text:');
disp(extractedText);
