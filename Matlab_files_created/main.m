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
%----Smooth image-----
sigma=0.6
gray_image1=SmoothImage(gray_image1,sigma);
gray_image2=SmoothImage(gray_image2,sigma);

%-----Partial Derivatives--------
[Ix, Iy, It] = PartialDerivatives(gray_image1, gray_image2);

%-------Computing u and v------
u_Initial = zeros(size(gray_image1(:,:,1)));
v_initial = zeros(size(gray_image2(:,:,1)));

u=u_Initial;
v=v_initial;

alpha=1;
iter=1;

while(iter ~= 20)
    [Avg_u,Avg_v]=Avg_uv(u,v);
    [u,v]=Compute_uv(Avg_u, Avg_v, Ix, Iy,It, alpha);
    iter=iter+1;
end

%------Plot Flow------

DisplayFlow(u, v, gray_image1); 

