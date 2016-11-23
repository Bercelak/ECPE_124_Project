function [G_deriv_i,G_deriv_j, w ] = GaussianDerivativeKernel(sigma)

a=round(2.5*sigma-0.5);

w=2*a+1;
sum=0;

for i=1:w
    G_deriv_i(i)=-1*(i-1-a)*exp((-1*(i-1-a)*(i-1-a))/(2*sigma*sigma));
    sum=sum-i*G_deriv_i(i);    
end

for i=1:w
    G_deriv_i(i)=G_deriv_i(i)/sum;
end

G_deriv_j=transpose(G_deriv_i);
end

