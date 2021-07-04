clear all
F = @ (x) 8-4.5*(x-sin(x));
a = 2.5; b = 3; imax = 20; tol = 0.001;
Fa = F(a); Fb = F(b);
if Fa*Fb > 0
    disp('Function has same sign at points a and b')
else
    disp ( 'iteration    a             b        (xNS)      f(xNS)    Tolerance ')
for i = 1:imax
    xns = (a+b)/2;
    toli = (b-a)/2;
    Fxns = F(xns);
    plot_it(i) = i;
    plot_tol(i) = toli;
    plot_sol(i) = xns;
    fprintf('%3i     %11.6f %11.6f %11.6f %11.6f %11.6f\n', i,a,b,xns,Fxns,toli)
    if Fxns == 0
        fprintf('An exact solution x=%11.6f was found', xns)
        break
    end
    if toli < tol
        break
    end
    if i == imax
        fprintf('Solution was not obtained after %i iterations', imax)
        break
    end
    if F(a)*Fxns < 0 
        b = xns;
    else
        a = xns;
    end
end
end
plot(plot_it,plot_tol,'--',plot_it,plot_sol,'-.','linewidth',2)
legend('Tolerance','Solution','Location','SouthEast')

