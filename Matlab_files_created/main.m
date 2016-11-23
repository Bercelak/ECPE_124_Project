%% Final Project
% Written by

%-----Reads in images-------
[FileName, FilePath]= uigetfile('*');
Image1=imread(strcat(FilePath, FileName));
[FileName, FilePath]= uigetfile('*');
Image2=imread(strcat(FilePath, FileName));

%-----Checks to see if rgb or grayscale
if size(Image1,3) == 3
    gray_image = rgb2gray(Image1);
    gray_image1=double(gray_image);
end
if size(Image2,3)== 3
    gray_image = rgb2gray(Image1);
    gray_image2=double(gray_image);
end
if size(Image1,3) ~= 3
    gray_image1=double(Image1);
end
if size(Image2,3) ~= 3
    gray_image2=double(Image2);
end

%-----Partial Derivatives--------
[Ix, Iy, It] = PartialDerivatives(gray_image1, gray_image2);

%-------

