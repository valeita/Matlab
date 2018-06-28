% Track the moving object, eliminate the isolated errors and write the result to a file
tracking = MotionBasedMultiObjectTrackingExample('video.mp4');
finalTracking=eliminateError(tracking);
putTrackingToFile(finalTracking);

%% INSTRUCTIONS:
% 1. Put the video in local dirctory
% 2. Insert the name of the video as parameter of function MotionBasedMultiObjectTrackingExample() above
% 3. Run

%% Details

% A)
% finaltracking is a matrix of n-row (much such as numbers of video's frame)
% and only 2 colums (respectly x and y). This is the final tracking of the
% video.

% B)
% putTrackingToFile function only write on file the final tracking. not
% essential and can be removed