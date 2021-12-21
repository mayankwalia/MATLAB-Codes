function  TestingEulerOneEq

[T,Ycomp] = OneEqUpdateVals(@yprime, [0 2], 0.2, .5);
Yexact = yexact(T);
Yerr = abs(Ycomp - Yexact);
disp('  Time  Computed  Exact  Error');
%disp([T, Ycomp, Yexact, Yerr]);  unformatted ouput
table = [T; Ycomp: Yexact; Yerr];  %formatted ouput
fprintf('%8.2f %12.5f %12.5f %14.5fe\n',table)

% for comparing computed and exact solution
figure(1);
plot(T,Ycomp,'-*r',T,yexact(T),'linewidth',2)
title('\bf(Analytical and computed solution of dy/dt = y - t^2 + 1)')
axis('tight');  grid on;
xlabel('\bf(t-axis)')
ylabel('\bf(y-axis)')
legend('\bf(Computed solution)','\bf(Analytical solution)','location','best')
print(gcf,'-dpng','-r300','ExpliEulerCompExact.png')

figure(2);
plot(T, Yerr, '-*r'); grid on;
title('\bf(Error between computed and exact solution)')
print(gcf,'-dpng','-r300','ExpliEulerErr.png')

%differential equation coded here
function yprime = yprime(t,y)
yprime = y - t^2 + 1;

% Code for yexact % used as subfunctions
function yexact = yexact(t)
yexact = (t+1).^2 - 0.5*exp(t);
