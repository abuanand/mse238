x = -3:3; 
y = [-1 -1 -1 0 1 1 1]; 
xq1 = -3:.01:3;
V = vander(x);
c = V\y';
poly= polyval(c,xq1);
p = pchip(x,y,xq1);
s = spline(x,y,xq1);
m = makima(x,y,xq1);
plot(x,y,'o',xq1,p,'-',xq1,s,'-.',xq1,m,'--',xq1,poly,'k','linewidth',2)
legend('Sample Points','pchip','spline','makima','polynomial','Location','SouthEast')