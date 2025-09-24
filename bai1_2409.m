Fs = 1000;
T = 1/Fs;
duration = 4;
t = 0: T:duration-T;

f1 = 50;
A1 = 10;
p1 = 90;

f2 = 950;
A2 = 1;
p2 = 0;

x1 = A1*sin(2*pi*f1*t + p1);
x2 = A2*sin(2*pi*f2*t + p2);

x = x1+x2;

figure;
subplot(3,1,1);
plot(t, x1);
title('Sinusoid 1: 50 Hz, Amplitude 10, Phase 90°');
xlabel('Time (s)'); ylabel('Amplitude');

subplot(3,1,2);
plot(t, x2);
title('Sinusoid 2: 950 Hz, Amplitude 1, Phase 0°');
xlabel('Time (s)'); ylabel('Amplitude');

subplot(3,1,3);
plot(t, x);
title('Combined Signal');
xlabel('Time (s)'); ylabel('Amplitude');

sound(x,Fs);
