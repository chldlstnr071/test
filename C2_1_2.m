function x = C2_1_2
x = 1/2;
t = linspace(-2, 2);

for n = 1: 2: 9
    x = x + sinc(n/2)*cos(pi*t*n/2);
    plot(t, x);
    hold on
end

plot(t, rectpuls(t/2)), xlabel('t'),ylabel('x(t)');
hold off