function [ con ] = convolve( image, kernel)

[height, width]= size(image);
[ker_h, ker_w]= size(kernel);

con= zeros(height, width);
for i=1:height
    for j=1:width
        sum=0;
        for k=1:ker_h
            for m=1:ker_w
                offset_i=-1*floor(ker_h/2)+k-1;
                offset_j=-1*floor(ker_w/2)+m-1;
                offset_i = min(offset_i, height); % Ensure the offset is within bounds
                offset_j = min(offset_j, width);
                sum = sum+image(i+offset_i, j+offset_j)* kernel(k,m);         
            end
        end 
        con(i,j)=sum;
    end
end

end

