% Ques5=
syms x
f=[(cos(x))^2 cos(x)*sin(x) -sin(x);
cos(x)*sin(x) (sin(x))^2 cos(x);
sin(x) -cos(x) 0]
det(f)%determinant
% Output5=
% f =[      cos(x)^2, cos(x)*sin(x), -sin(x)]
% [ cos(x)*sin(x),      sin(x)^2,  cos(x)]
% [        sin(x),       -cos(x),       0]
% ans =cos(x)^4 + sin(x)^4 + 2*cos(x)^2*sin(x)^2
% Ques6=
syms x y z
f=x*y*z/(x^2+y^2+z^2)
DerVec=[diff(f,x),diff(f,y),diff(f,z)];
simplify(DerVec(1));
pretty(simplify(DerVec(1)))
% Output6=
% f =(x*y*z)/(x^2 + y^2 + z^2)
%   2    2    2
% y z (- x  + y  + z )
%    2    2    2 2
%    (x  + y  + z )

syms x y u
u = asin((x + y)/(sqrt(x) + sqrt(y)));
uxx = diff(u, x, 2);
uyy = diff(u, y, 2);
uxy = diff(u, x, y);
LHS = simplify(x^2*uxx + 2*x*y*uxy + y^2*uyy);
RHS = simplify(-sin(u)*cos(2*u)/(4*(cos(u))^3));
if (LHS == RHS)
    disp('They are equal')
else
    disp('Not Equal')
end

syms x a s
y=a*log(sec(x/a))
ds=diff(s,x,1)
ds=diff(s,y,1)