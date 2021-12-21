clear clc close
%create grid points in x and y using meshgrid 
[x, y] = meshgrid (-1:0.1:1,-1:0.1:1);

% RHS of differential equation gives slope
der = x.*(1-x)./(y.*(-2+ y));

% the length of the vector
length = sqrt(1 + der.*der);

% direction field using quiver plots
quiver (x, y, 1./length, der./length,.5); axis tight
hold on 
z=2*(x.^3+y.^3)-3*(x.^2 + 2*y.^2);
contour (x, y, z, 20, 'linewidth', 2); %contours