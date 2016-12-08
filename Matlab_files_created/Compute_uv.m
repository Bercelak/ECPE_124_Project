function [u, v ] = Compute_uv(Avg_u, Avg_v, Ix, Iy,It,alpha )

u=Avg_u-(Ix.*((Ix.*Avg_u) + (Iy.*Avg_v) + It))./(alpha.^2 + Ix.^2 + Iy.^2);
v=Avg_v-(Iy.*((Ix.*Avg_u) + (Iy.*Avg_v) + It))./(alpha.^2 + Ix.^2 + Iy.^2);
end

