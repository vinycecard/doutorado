%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Vinicius de Castro Ecard %%%
%%%%%%%%%%% Lista 7 %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clc; clear all; close all

%% a)
n = 0:100;
%x[n] = u[n] - u[n-11];
x = heaviside(n) - heaviside(n-11);
%y[n] =  = u[n] - u[n-26];
y = heaviside(n) - heaviside(n-26);

w = conv(x,y)
subplot(311)
title('Sinal x[n]'); hold on
plot(n,x)
grid on
subplot(312)
plot(n,y); hold on
title('Sinal y[n]')
grid on;
subplot(313)
title('Sinal w[n]')
hold on; plot(w)
grid on;

%% b)
Y = fft(w,256);
figure;title('W(e^jw)'); hold on; grid on
plot(abs(Y))

%% c)
c = 1
while (c)
    disp('Digite 0 para parar')
    k = input('Digite o tamanho da janela para x[n]: ');
    if(k==0)
        c = 0;
    else
        s = input('Digite o tamanho da janela para y[n]: ');
        n1 = 0:k;
        n2 = 0:s;
        x = heaviside(n1) - heaviside(n1-11);
        y = heaviside(n2) - heaviside(n2-26);
        w = conv(x,y);
        figure(3)
        subplot(311)
        plot(n1,x)
        title('Sinal x[n]');grid on
        subplot(312)
        plot(n2,y); 
        title('Sinal y[n]')
        grid on;
        subplot(313)
        plot(w)
        title('Sinal w[n]');grid on;
        
        Y = fft(w,256);
        figure(4);
        plot(abs(Y)); grid on
        title('W(e^jw)'); 
    end
        
end
    
    
