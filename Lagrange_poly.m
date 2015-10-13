function [ Lagrange ] = Lagrange_poly( t,y,tx )
%LAGRANGE_POLY Summary of this function goes here
%   Detailed explanation goes here
n = length(t);
p=y;
for ii = 1:1:n
    for jj = 1:1:ii-1
        p(ii)=p(ii)*(t(jj)-tx)/(t(jj)-t(ii));
    end
    for jj = ii+1:1:n
        p(ii)=p(ii)*(t(jj)-tx)/(t(jj)-t(ii));
    end
end

Lagrange = sum(p);

end

