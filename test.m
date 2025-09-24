clc; clear; close all;

% Thời gian rời rạc cho impulse, step, ramp
n = -10:10;

% (a) Impulse signal δ[n]
impulse = (n==0);

% (b) Step signal u[n]
step = (n>=0);

% (c) Ramp signal r[n] = n*u[n]
ramp = n.*(n>=0);

% Thời gian liên tục cho square & sawtooth
t = 0:0.001:1;

% (d) Square wave
f = 5;  % tần số 5 Hz
square_wave = sign(sin(2*pi*f*t));

% (e) Sawtooth wave
T = 1/f;
saw_wave = 2*(t/T - floor(0.5 + t/T));
% Vẽ đồ thị
figure;

subplot(5,1,1);
stem(n, impulse, 'filled');
title('a. Impulse signal \delta[n]');
xlabel('n'); ylabel('Amplitude'); grid on;

subplot(5,1,2);
stem(n, step, 'filled');
title('b. Step signal u[n]');
xlabel('n'); ylabel('Amplitude'); grid on;

subplot(5,1,3);
stem(n, ramp, 'filled');
title('c. Ramp signal r[n]');
xlabel('n'); ylabel('Amplitude'); grid on;

subplot(5,1,4);
plot(t, square_wave, 'b','LineWidth',1.5);
title('d. Square wave');
xlabel('Time (s)'); ylabel('Amplitude'); grid on;

subplot(5,1,5);
plot(t, saw_wave, 'r','LineWidth',1.5);
title('e. Sawtooth wave');
xlabel('Time (s)'); ylabel('Amplitude'); grid on;
