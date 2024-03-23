clc; %Clear the window
close all;  %Close all files
clear all; %Clear the screen
R = 50;
noise = rand(R,1)-0.5;
m = 0:1:R-1;
x = 2*m.*(0.9.^m);
Xn = x + noise';
figure(1)
plot(m,noise,'r-',m,x,'.',m,Xn);
title ('Before Sampling Signal');
xlabel('Time index n (m-->)');
ylabel('Amplitude');
legend('noise[n]','x[n]','Xn[n]');
M = input('Number of input samples = ');
b = ones(M,1)/M;
y = filter(b,1,Xn);
M1 = input('Number of input samples = ');
b1 = ones(M1,1)/M1;
y1 = filter(b1,1,Xn);
figure(2)
plot(m,x,'.',m,y,'--',m,y1);
title ('After Sampling Signal');
legend('x[n]','y[n]','y1[n]');
xlabel ('Time index n'); 