function [ Avg_u,Avg_v ] = Avg_uv(u,v)

kernel=[1/12 1/6 1/12;1/6 -1 1/6;1/12 1/6 1/12];

Avg_u=convolve(u,kernel);
Avg_v=convolve(v,kernel);

end

