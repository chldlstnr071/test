t = -2:0.001:2;
x = sinc(100*t).*cos(400*pi*t);
plot(t, x),xlabel('time'),ylabel('x(t)');


