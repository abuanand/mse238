clear
a = 0; b = 2.5; h= 0.1; yINI=3;
[x_eu,y_eu] = Euler(@ODE,a,b,h,yINI);
[x_mod,y_mod] = ModEuler(@ODE,a,b,h,yINI);
xp = a:0.1:b;
yp = 70/9*exp(-0.3*xp)- 43/9*exp(-1.2*xp);
plot(x_eu,y_eu,'ro',x_mod,y_mod,'b*',xp,yp,'linewidth',2)
legend('Euler Explicit','Modified Euler','Analytical Solution','linewidth',2)
xlabel('x'); ylabel('y');