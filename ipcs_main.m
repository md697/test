% Parameters

Kd = 3;
L = 1;
mCart = 1;
mPend = 1;
theta0 = 0;
x0 = 0;
tf = 200;

A = [-116.592321910037, -32.461985602428;...
    -71.2609775616371, -3.48905510892101];
B = [-212.76758546654;
    -145.814509733058];
C = [-775.927378314427, 9.53466512662173];
D = -1590.94866382106;

sim ipcs

exes = simout.Data(:,1);
thetas = simout.Data(:,2);
times = simout.Time;

figure(1)
subplot(2,1,1)
plot(times,exes,'k-','LineWidth',1)
title('x vs. time')
xlabel('t (s)')
ylabel('x (m)')

subplot(2,1,2)
plot(times,thetas,'k-','LineWidth',1)
title('\theta vs. time')
xlabel('t (s)')
ylabel('\theta (rad)')