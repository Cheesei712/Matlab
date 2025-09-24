%x(t) = 3*sin(100*pi*t);
A = 3;
omega = 100*pi;
f = omega/2*pi;
t = 0:0.0001:0.1; 
x = A*sin(2*pi*f*t);

%a
Fs_min = 2*f;
fprintf ('%.2f\n',Fs_min);

%b
Fs1 = 200;
t1 = 0:1/Fs1:0.1;
x1 = A*sin(2*pi*f*t1);

%c
Fs2 = 75
t2 = 0:1/Fs2:0.1;
x2 = A*sin(2*pi*f*t2);


subplot(3,1,2);
plot(t, x, 'b'); hold on;
stem(t1, x1, 'r');
title('Fs = 200 Hz');
xlabel('Thời gian (s)');
ylabel('Biên độ');
%legend('Tín hiệu gốc','Mẫu');
grid on;

subplot(3,1,3);
plot(t, x, 'b'); hold on;
stem(t2, x2, 'r');
title('Fs = 75 Hz');
xlabel('Thời gian (s)');
ylabel('Biên độ');
%legend('Tín hiệu gốc','Mẫu');
grid on;



