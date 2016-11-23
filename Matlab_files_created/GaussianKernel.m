function [G_i,G_j, w] = GaussianKernel( sigma )

a =round(2.5*sigma -0.5);

w= 2*a+1;
sum=0;

for i=1:w
   G_i(i)=exp((-1*(i-1-a)*(i-1-a))/(2*sigma*sigma));
   sum = sum + G_i(i);    
end

for i=1:w
    G_i(i)=G_i(i)/sum;
end

G_j= transpose(G_i);
end

