% Load pre-trained I3D model
i3d = inflated3dVideoClassifier();

% Fixed parameters for I3D
inputSize = i3d.InputSize;
sequenceLength = 64;  % Standard number of frames for I3D
numChannels = 3;  % RGB channels

% Get class names from the model
classNames = i3d.Classes;  % Access class names directly

% Display the class names and their type
disp(classNames);
whos classNames;

% Read video
videoReader = VideoReader('sample27.mp4');

% Check number of frames in the video
numFrames = videoReader.NumFrames;
if numFrames < sequenceLength
    error('Video has less than %d frames.', sequenceLength);
end

% Read frames
frameIndices = round(linspace(1, numFrames, sequenceLength));
frames = zeros([inputSize(1:2) numChannels sequenceLength], 'single');

% Process frames
for i = 1:sequenceLength
    img = read(videoReader, frameIndices(i));
    
    % Resize image
    img = imresize(img, inputSize(1:2));
    
    % Normalization
    frames(:,:,:,i) = single(img) / 255;
end

% Convert frames to dlarray with the required format "SSCTB"
frames_dl = dlarray(permute(frames, [1, 2, 3, 4]), 'SSCTB');  % Adjusting dimensions for 'SSCTB' format

% Use predict instead of classify
[scores, labels] = predict(i3d, frames_dl);

% Display results
[sortedScores, idx] = sort(scores, 'descend');

% Make sure we do not exceed the number of class names
numTopPredictions = min(5, length(idx));  % Get the top 5 predictions or less if not available

fprintf('Top predictions:\n');
for i = 1:numTopPredictions
    classIndex = idx(i);
    if classIndex <= length(classNames)  % Ensure we do not exceed classNames length
        % Access class names correctly depending on its type
        if iscell(classNames)
            fprintf('%s: %.2f%%\n', classNames{classIndex}, 100 * sortedScores(i));  % For cell array
        else
            fprintf('%s: %.2f%%\n', classNames(classIndex), 100 * sortedScores(i));  % For string array
        end
    else
        fprintf('Class index %d exceeds available classes.\n', classIndex);
    end
end
