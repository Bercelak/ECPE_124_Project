function [Ix, Iy, It] = PartialDerivatives(Image1, Image2)
    kernel_x = 1/4*[-1 1; -1 1];
    kernel_y = 1/4*[-1 -1; 1 1];
    kernel_t1 = 1/4*ones(2,2);
    kernel_t2 =- 1/4*ones(2,2);
    
    Ix = convolve(Image1, kernel_x) + convolve(Image2, kernel_x);
    Iy = convolve(Image1, kernel_y) + convolve(Image2, kernel_y);
    It = convolve(Image1, kernel_t1) + convolve(Image2, kernel_t2);
end
