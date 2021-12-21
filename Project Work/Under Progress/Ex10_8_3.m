% CODE:	
clear all
clc
close all 
phi1=@(x)((1-x^3)^(1/2));
MaxItr=40; Tolerr=10^(-6);x0=0.75;
for i=1:MaxItr
    x1=phi1(x0);
    if(abs(x1-x0)< Tolerr)
        fprintf('Desired accuracy achieved\n')
        break;
    end
    x0=x1;  %initial approximation update for next iterate 
    fprintf('%d %10.5f \n',i,x1);
end
phi2=@(x)(1-x^2)^(1/3);
MaxItr=100;Tolerr=10^(-6);x0=0.75;
for i=1:MaxItr
    x1=phi2(x0);
    if(abs(x1-x0)<Tolerr)
        fprintf('desired accuracy achieved\n')
        break;
    end
    x0=x1;%initial approximation update for next iterate 
    fprintf('%d %10.5f \n',i,x1);
end
phi3=@(x)(1+x)^(-1/2);
MaxItr=100;Tolerr=10^(-6);x0=0.75
for i=1:MaxItr
    x1=phi3(x0);
    if(abs(x1-x0)<Tolerr)
        fprintf('desired accuracy achieved\n')
        break;
    end
    x0=x1%initial approcimation update for next iterate 
%     fprintf('%d %10.5f \n',i,x1);
end