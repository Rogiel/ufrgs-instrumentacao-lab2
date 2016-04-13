close all; 
s=fft(y1);
f=abs(s);
%freq=[0:0.05:100];
%f=[1:1:1000];
sample_rate=100;
freq=[0:sample_rate/(length(f) - 1):sample_rate]

figure(1);
plot(t,y1);
title ('Amplitude do pendulo em funcao de tempo');
xlabel('t(s)');
ylabel('Amplitude');
grid on;

figure(2);
plot(freq, f);
title ('Analise em dominio de frequencia');
xlabel('f(hz)');
ylabel('Amplitude');
grid on;




%N = 2^nextpow2(length(y1));
%p = abs(fft(y1,N))/N;                   %Power of signal
%Fs = 100;                                      %Sampling frequency
%f = Fs/2*linspace(0,1,N);  


