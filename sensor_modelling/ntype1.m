clc
clear
close all

rl = [100 220 470 1e3];
t = 0:125;
    for i=1:length(rl)
    for j = 1:126     
        vo(j)= (rl(i)*5.0) / ((612.5*(exp(-0.03953*t(j))))+(rl(i)))
    end
    plot(t,vo)
    grid on
    hold on
    end
    legend('rl=100','rl=220','rl=470')