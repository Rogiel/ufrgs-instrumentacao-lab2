a=importdata('../Data/Experimento7.lvm');

t = a(:, 1);
data = a(:, 2);

close all; 
fourierTransform=fft(data);

sample_rate=1/(t(2) - t(1));
w=0:sample_rate/(length(data) - 1):sample_rate;

fig=figure();
plot(t,data);
title ('Tensao eletica do pendulo em funcao de tempo');
xlabel('t(s)');
ylabel('Volts');
grid on;

set(gcf, 'PaperPosition', [0 0 10 5]);
set(gcf, 'PaperSize', [10 5]);
saveas(fig,'images/time-plot-raw','pdf')

[b,a] = butter(10,20 / sample_rate);
data = filter(b, a, data);

fig=figure();
plot(t,data);
title ('Tensao eletica do pendulo em funcao de tempo');
xlabel('t(s)');
ylabel('Volts');
grid on;

set(gcf, 'PaperPosition', [0 0 10 5]);
set(gcf, 'PaperSize', [10 5]);
saveas(fig,'images/time-plot','pdf')

angle = -4.3 + 34 .* data;

fig=figure();
plot(t,angle);
title ('Inclinacao do pendulo em funcao de tempo');
xlabel('t(s)');
ylabel('Graus');
grid on;

set(gcf, 'PaperPosition', [0 0 10 5]);
set(gcf, 'PaperSize', [10 5]);
saveas(fig,'images/angle-time-plot','pdf')

fig=figure();
plot(w, abs(fourierTransform));
title ('Analise em dominio de frequencia');
xlabel('f(Hz)');
ylabel('Amplitude');
grid on;

set(gcf, 'PaperPosition', [0 0 10 5]);
set(gcf, 'PaperSize', [10 5]);
saveas(fig,'images/frequency-plot','pdf')


fig=figure();
plot(w(1:12), abs(fourierTransform(1:12)));
title ('Analise em dominio de frequencia');
xlabel('f(Hz)');
ylabel('Amplitude');
grid on;

set(gcf, 'PaperPosition', [0 0 10 5]);
set(gcf, 'PaperSize', [10 5]);
saveas(fig,'images/frequency-plot-slice','pdf')


%N = 2^nextpow2(length(y1));
%p = abs(fft(y1,N))/N;                   %Power of signal
%Fs = 100;                                      %Sampling frequency
%f = Fs/2*linspace(0,1,N);  


