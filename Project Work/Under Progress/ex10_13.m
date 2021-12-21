clear all; clc; close all
% sys=inline(’[2*x(1)+x(2);x(1)+2*x(2)]’,’t’, ’x’);
%region-1
%ic = 1;
    sys = @(t, x)[x(2);  0.55*sin(0.1*t)-x(1)-0.25*(x(1)^2)];
    tspan=[0 200];
    options = odeset('RelTol',1e-8,'AbsTol',1e-10);
    %[ts,xs] = ode45(sys,0:0.001:20,[1 0], options);
    [ts,xs] = ode45(sys,tspan,[1 0], options);
    figure(1); 
    plot(xs(:,1), xs(:,2), '.-k')
    fsize=15;
    xlabel('\bf{y}','FontSize',fsize)
    ylabel('\bf{v}','FontSize',fsize)
    figure(2);
    plot(ts,xs(:,1), '.-k')
    fsize = 15;
    xlabel('\bf{t}','FontSize',fsize)
    ylabel('\bf{y}','FontSize',fsize)
    %ic = ic+1;
    


