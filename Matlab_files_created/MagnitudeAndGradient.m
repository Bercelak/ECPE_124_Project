function [ mag, grad ] = MagnitudeAndGradient(vertical, horizontal)
ver=double(vertical);
horiz=double(horizontal);
[height, width]= size(vertical);

mag= zeros(height,width);
grad= zeros(height,width);

for i=1:height
    for j=1:width
        mag(i,j) = sqrt(ver(i,j)*ver(i,j) + horiz(i,j)*horiz(i,j));
        %mag(i,j) = max(ver(i,j), horiz(i,j));
        grad(i,j)= atan2(horiz(i,j),ver(i,j));
    end
end


end

