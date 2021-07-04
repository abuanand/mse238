clear all

x = 0:0.4:5.2;
y = [0 3 4.5 5.8 6.2 7.4 9.6 15.6 20.7 26.7 31.1 35.6 39.3 41.5];

%x = 0:3;
%y = [-5 -6 -1 16];
V = vander(x);
c = V\y'

epsilon = 0:0.05:5.2;
interpolation= polyval (c,epsilon);
plot(x,y, 'ro' ,epsilon,interpolation, 'k', 'linewidth',2)