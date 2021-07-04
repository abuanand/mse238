function [x,y] = Euler(ODE,a,b,h,yINI)

x(1) = a; y(1) = yINI;
N = (b-a)/h;
for i = 1:N
    x(i+1) = x(i) + h;
    y(i+1) = y(i) + ODE(x(i),y(i))*h;
end