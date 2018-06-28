function [tracking] = eliminateError(tracking)

[m,n] = size(tracking);

for i=2:m-1
    if abs(tracking(i-1,1)-tracking(i,1))>=80 && abs(tracking(i-1,1)-tracking(i+1,1))<80 ...
            || abs(tracking(i-1,2)-tracking(i,2))>=80 && abs(tracking(i-1,2)-tracking(i+1,2))<80
       tracking(i,1) = (tracking(i-1,1)+tracking(i+1,1))/2;
       tracking(i,2) = (tracking(i-1,2)+tracking(i+1,2))/2;
    end
end

