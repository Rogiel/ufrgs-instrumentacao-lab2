a=importdata('../Data/Experimento1.lvm');

t = a(:, 1);
data = a(:, 2);

close all; 
fourierTransform=fft(data);

sample_rate=100;
w=0:sample_rate/(length(f) - 1):sample_rate;

fig1=figure(1);
plot(t,y1);
title ('Amplitude do pendulo em funcao de tempo');
xlabel('t(s)');
ylabel('Amplitude');
grid on;

set(gcf, 'PaperPosition', [0 0 10 5]);
set(gcf, 'PaperSize', [10 5]);
saveas(fig1,'images/time-plot','pdf')

fig2=figure(2);
plot(w, abs(fourierTransform));
title ('Analise em dominio de frequencia');
xlabel('f(Hz)');
ylabel('Amplitude');
grid on;

set(gcf, 'PaperPosition', [0 0 10 5]);
set(gcf, 'PaperSize', [10 5]);
saveas(fig2,'images/frequency-plot','pdf')



%N = 2^nextpow2(length(y1));
%p = abs(fft(y1,N))/N;                   %Power of signal
%Fs = 100;                                      %Sampling frequency
%f = Fs/2*linspace(0,1,N);  


