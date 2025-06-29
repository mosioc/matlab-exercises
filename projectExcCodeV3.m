rd = r2plus1dVideoClassifier();

videoFilename = "sample27.mp4";
reader = VideoReader(videoFilename);

player = vision.VideoPlayer;
player.Position = [100, 100, reader.Width, reader.Height];

classificationFrequency = 10;

sequenceLength = rd.InputSize(4);

numFrames = 0;
text = "";

while hasFrame(reader)
    frame = readFrame(reader);
    numFrames = numFrames + 1;

    % Update the sequence with the next video frame.
    rd = updateSequence(rd,frame);

    % Classify the sequence based on the classificationFrequency.
    if mod(numFrames, classificationFrequency) == 0 && numFrames >= sequenceLength
        [label,score] = classifySequence(rd);
        text = string(label) + "; " + num2str(score, "%0.2f");
    end

    % Insert the predicted label into the video frame.
    frame = insertText(frame,[30,30],text,'FontSize',18);

    % Display the video and label. 
    step(player,frame);
end