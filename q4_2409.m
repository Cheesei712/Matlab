n = -10:10;
t = 0:0.001:1;
%a
impluse = (n==0);
%b
step = (n>=0);
%c
ramp = n.*(n>=0);
%d
f = 5;  % tần số 5 Hz
square_wave = sign(sin(2*pi*f*t));
%e
T = 1/f;
saw = 2*(t/T - floor(0.5 + t/T));

figure;
subplot(5,1,1);
stem(n, impulse, 'filled');
title('a. Impulse signal');
xlabel('n'); ylabel('Amplitude'); grid on;

subplot(5,1,2);
stem(n, step, 'filled');
title('b. Step signal');
xlabel('n'); ylabel('Amplitude'); grid on;

subplot(5,1,3);
stem(n, ramp, 'filled');
title('c. Ramp signal');
xlabel('n'); ylabel('Amplitude'); grid on;

subplot(5,1,4);
plot(t, square_wave, 'b','LineWidth',1.5);
title('d. Square');
xlabel('Time (s)'); ylabel('Amplitude'); grid on;

subplot(5,1,5);
plot(t, saw, 'r','LineWidth',1.5);
title('e. Sawtooth');
xlabel('Time (s)'); ylabel('Amplitude'); grid on;