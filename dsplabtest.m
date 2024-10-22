clc;
clear all;
close all;
f1=input('Enter the first frequency:');
f2=input('Enter the second frequency:');
fs=input('Enter the sampling Frequency:');
r=input('Enter the decimating factor:');
T=input('Enter the time duration:');
dt=1/50;
n=dt:dt:T;
x=cos(2*pi*n*f1/fs)+cos(2*pi*n*f2/fs);
md=decimate(x,r);
subplot(4,1,1);
plot(n,x);
xlabel('time');
ylabel('amplitude');
title('input signal');
subplot(4,1,2);
stem(x);
xlabel('time');
ylabel('amplitude');
title('discrete input signal');
subplot(4,1,3);
stem(md);
xlabel('time');
ylabel('amplitude');
title('output signal');

