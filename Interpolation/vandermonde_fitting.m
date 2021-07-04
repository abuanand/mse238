clear all
x = 0:3;
y = [-5 -6 -1 16];
V = vander(x)
c = V\y'
epsilon = 0:0.01:3;
interpolation= polyval (c,epsilon);
plot(x,y, 'ro' ,epsilon,interpolation, 'k', 'linewidth',2)