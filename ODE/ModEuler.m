function [x,y] = ModEuler(ODE,a,b,h,yINI)

x(1) = a; y(1) = yINI;
N = (b-a)/h;
for i = 1:N
    x(i+1) = x(i) + h;
    SlopeEu= ODE(x(i),y(i));
    yEuler = y(i) + SlopeEu*h;
    SlopeEnd = ODE(x(i+1),yEuler);
    y(i+1) = y(i)+ (SlopeEu+SlopeEnd)*h/2;
end