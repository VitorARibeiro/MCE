function y = Func(x)
%FUNC Summary of this function goes here
%   Detailed explanation goes here
y = zeros(2,1);
y(1) = (x(1))^2 + (x(2))^2 -4;
y(2) = (x(1) - 2)^2 + ((x(2))^2)/6 -1;
end

