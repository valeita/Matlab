% Tracking moviment coordinates,chooses the largest rectangle area 
% as it with a very high probability percentage represents the moving dancer,
% and returns its center of gravity.
function [xCoord,yCoord] = FilterMultipleObject(centroids,bboxes)
 
    areas = [];
    coder.varsize(areas);
 
    [m,n] = size(bboxes);
 
    for ii = 1:m
        areas(ii,1) = bboxes(ii,3)*bboxes(ii,4);
    end
 
    [maxValue,maxIndex] = max(areas);
    
    xCoord = centroids(maxIndex,1);
    yCoord = centroids(maxIndex,2);

end
