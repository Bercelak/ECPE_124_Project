function [ smoothImage ] = SmoothImage(image,sigma )

[kernel_i,kernel_j]=GaussianKernel(sigma);

smoothImage=convolve(image,kernel_i);
smoothImage=convolve(smoothImage,kernel_j);

end

