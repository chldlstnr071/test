Fs = 1000;      %sampling frequency
t = -2:1/Fs:2;  %time vector
L = length(x);  %signal length
f = Fs*(-L/2:L/2-1)/L;

x = sinc(100*t);
mag_X = abs(fft(x/1000));
plot(f, fftshift(mag_X)), xlabel('f'), ylabel('|X(f)|');

