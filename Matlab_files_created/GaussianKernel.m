% This function produces the vertical weighted average Gaussian kernel
function [kernel_i, kernel_j] = GaussianKernel(sigma)
    a = round(2.5*sigma - 0.5);
    w = 2*a + 1;
    kernel_j = zeros(w,1);
    sum = 0;
    for i = 1:w
        kernel_j(i) = exp((-1*(i - 1 - a)*(i - 1 - a)) / (2*(sigma)^2));
        sum = sum + kernel_j(i);
    end
    kernel_j = kernel_j./sum;
    kernel_i = kernel_j';
end