close all
clc

plot(v,t)
xlabel('Voltage (V)')
ylabel('Temperature (Degree Celsius)')
title('Graph of Temperature against Voltage')
grid on
title('Graph of Temperature against Voltage')
hold on
vs = 0:0.1:5.1;
vs(1) = 0.05;
j = 52;
g = mean(t);
for i=1:j
    ts(i) = (((vs(i)/5.0)*1023) - 5.013232)/0.8406359;
    d(i) = (abs((t(i)-ts(i))/ts(i)))*100;
    e(i) = (t(i)-ts(i))^2;
    f(i) = (t(i)-g)^2;
end
plot(vs,ts)
legend('Emulation Curve','Simulation Curve')
hold off
figure
plot(vs,d)
xlabel('Voltage (V)')
ylabel('Percentage Error (%)')
title('Graph of Percentage Error against Voltage')
grid on

figure
plot(t,d)
xlabel('Temperature (Degree Celsius)')
ylabel('Percentage Error (%)')
title('Graph of Percentage Error against Temperature')
hold on
plot(ts,d)
legend('Emulation Curve','Simulation Curve')

SST = sum(f)
SSE = sum(e)
MSE = SSE/j
Rsq = 1-(SSE/SST)
