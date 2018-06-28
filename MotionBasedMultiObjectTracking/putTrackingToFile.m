% Write tracking coordinates to file with format [x,y]
function [] = putTrackingToFile(trackingMatrix)

[m,n] = size(trackingMatrix);
trackFile = fopen('trackFile.txt','w');

for ii=1:m
    fprintf(trackFile,'%6.2f,%6.2f\n',trackingMatrix(ii,1),trackingMatrix(ii,2));
end

