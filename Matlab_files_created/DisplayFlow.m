function [ ] = DisplayFlow(u, v, displayImg)

imshow(displayImg,[0 255])
[height,width]=size(u);
scale=10;
rSize=10;
for i=1:height
    for j=1:width
        if floor(i/rSize)~=i/rSize || floor(j/rSize)~=j/rSize
            u(i,j)=0;
            v(i,j)=0;
        end
    end
end
hold on
quiver(u, v, scale, 'color', 'b', 'linewidth', 2);
set(gca,'YDir','reverse');

end

