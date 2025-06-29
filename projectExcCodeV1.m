% yolo f
detector = yolov8ObjectDetector('yolov8n');

% matlab f
video = VideoReader('sample27.mp4');
frameCount = 0; 

% matlab f
while hasFrame(video)

    % matlab f
    frame = readFrame(video);
    frameCount = frameCount + 1;
    
    % --> frameCount / 10 => 45 % 10 = 5
    if mod(frameCount, 15) == 0

        % yolo f
        [bboxes, scores, labels] = detect(detector, frame);
       
        annotations = string(labels) + ": " + string(scores);

        % matlab f
        Iout = insertObjectAnnotation(frame, 'rectangle', bboxes, annotations);

        % matlab f
        imshow(Iout);
        
    end
end