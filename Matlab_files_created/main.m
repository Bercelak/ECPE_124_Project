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
    gray_image=Image1;
    gray_image=double(gray_image);
end
if size(Image2,3) ~= 3
    gray_image = rgb2gray(Image1);
    gray_image2=double(gray_image);
end

%-----Kernels---------
sigma=0.6;
[G_i,G_j, w]= GaussianKernel(sigma);
[G_deriv_i,G_deriv_j,w]= GaussianDerivativeKernel(sigma);

%-----Gradient's for image1------
[con_h_1]=convolve(gray_image1,G_j);
[con_horizontal_1]=convolve(con_h_1,fliplr(G_deriv_i));
figure('Name','Horizontal Convolve','NumberTitle','off')
imshow(con_horizontal_1)

[con_v_1]=convolve(gray_image1,G_i);
[con_vertical_1]=convolve(con_v_1,flipud(G_deriv_j));
figure('Name','Vertical Convolve','NumberTitle','off')
imshow(con_vertical_1)

%-----Gradient's for image2------
[con_h_2]=convolve(gray_image2,G_j);
[con_horizontal_2]=convolve(con_h_2,fliplr(G_deriv_i));
figure('Name','Horizontal Convolve','NumberTitle','off')
imshow(con_horizontal_2)

[con_v_2]=convolve(gray_image2,G_i);
[con_vertical_2]=convolve(con_v_2,flipud(G_deriv_j));
figure('Name','Vertical Convolve','NumberTitle','off')
imshow(con_vertical_2)

%-------

