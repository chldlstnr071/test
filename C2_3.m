t = -5: 0.1 : 5;
x1 = (t+1).*heaviside(t+1)-t.*heaviside(t)-heaviside(t-1);
x2 = t.*heaviside(t)-(t-1).*heaviside(t-1)-heaviside(t-2);
mag_X1 = abs(fft(x1/10));
mag_X2 = abs(fft(x2/10));
ang_X1 = angle(fft(x1/10));
ang_X2 = angle(fft(x2/10));

L = length(x1);
f = (-L/2:L/2-1)*(10/L);

subplot(1, 2, 1);
plot(f, fftshift(mag_X1), f, fftshift(mag_X2));
xlabel('f'), ylabel('magnitude');
hold on;
subplot(1, 2, 2);
plot(f, fftshift(ang_X1), f, fftshift(ang_X2))
xlabel('f'), ylabel('phase in radians');
hold off;

