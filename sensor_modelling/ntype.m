clc
clear
close all

t=0:125;
rl=0:100:1e6;

for i=1:10001
    for j = 1:126     
        vo(i,j)= ((rl(i))*5.0) / ((612.5*(exp(-0.03953*t(j))) )+(rl(i)))
        
    end
end