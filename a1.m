t = 0: 0.1: 6.28;
y6 = exp(-0.1 * t) .* sin(0.1 * t);
y7 = exp(-1 * t) .* sin(1 * t);
y8 = exp(-5 * t) .* sin(5 * t);

figure;
plot(t, y6,'r', t, y7,'b', t, y8,'g');
xlabel('t');
ylabel('y(t)');
grid on;
