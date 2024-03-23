clc; %Clear the window
close all;  %Close all files
clear all; %Clear the screen
n=0:1:256; %Range of n
x1=cos(2*pi*n/256);
subplot(3,1,1);
stem(n,x1);
grid on;
title ('Cosine signal (cos(2npi/256))');
xlabel('n -->');
ylabel('x1 -->');
x2=cos(6*pi*n/256);
subplot(3,1,2);
stem(n,x2);
grid on;
title ('Cosine signal (cos(6npi/256))');
xlabel('n -->');
ylabel('x2 -->'); x=x1+x2;
subplot(3,1,3);
stem(n,x);
grid on;
title ('Addition of two given signal');
xlabel('n -->');
ylabel('x = x1+x2 -->');

