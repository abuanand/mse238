clear all
x = 0:0.4:5.2;
y = [0 3 4.5 5.8 6.2 7.4 9.6 15.6 20.7 26.7 31.1 35.6 39.3 41.5];
p = polyfit(x,y,4)
x_temp = 0:0.1:5.2;
y_temp = polyval(p,x_temp);
figure
plot(x,y, 'ro' ,x_temp,y_temp, 'k', 'linewidth',2)
xlabel('Strain')
ylabel('Stress (MPa)')