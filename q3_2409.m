f1 = 150;
f2 = 700;
f3 = 1200
t = 0:0.0001:0.02;
x = 3*cos(f1*pi*t) + 5*sin(f2*pi*t) +10*cos(f3*pi*t);
%a
fN = 2*max([f1,f2,f3]);
fprintf ('fN = %.2f\n', fN);

%b
Fs = 500;
t_s = 0:1/Fs:0.02;
x_s = 3*cos(f1*pi*t_s) + 5*sin(f2*pi*t_s) +10*cos(f3*pi*t_s);

figure;
plot(t, x, 'b', 'LineWidth', 1.5); hold on;
stem(t_s, x_s, 'r','filled');
title('Fs = 500 Hz');
xlabel('Thời gian (s)');
ylabel('Biên độ');
grid on;