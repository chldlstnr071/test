function [mag_x] = C2_1_3

for n = -20 : 20
    subplot(2, 1, 1), stem(n, (1/2)*abs(sinc(n/2)), 'o'),xlabel('n'), ylabel('x(n)');
    hold on
    subplot(2, 1, 2), stem(n, angle(sinc(n/2)), 'o'),xlabel('n'), ylabel('<x(n)');
    hold on
end
hold off

