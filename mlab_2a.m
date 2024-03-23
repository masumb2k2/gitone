clc; %Clear the window
close all;  %Close all files
clear all; %Clear the screen
n=0:1:100; %Range of n
y=cos(.05*((2*pi*n)+(pi/4)));
x=.5.*n.*y;
stem(n,x);
grid on;
title('Cosine signal (.5ncos(2npi+(pi/4)))');
xlabel('n -->');
ylabel('x -->'); 