%%Program to find idft
clc;
clear;
close all;
%%input sequence
Xk=input('enter the input sequence : ');
xn=calcidft(Xk);
N=length(xn);
disp('x(n)=');
disp(xn);
n=0:N-1;
stem(n,xn);
title('idft sequence');
xlabel('Time');
ylabel('Amplitude');
%%Xk should be row vector

function [xn]=calcidft(Xk)
N=length(Xk);
for k=0:1:N-1
    for n=0:1:N-1
        p=exp(1i*2*pi*n*k/N);
        IT(k+1,n+1)=p;
    end
end
disp('Transformation Matrix for idft')
disp(IT);
xn=(IT*(Xk.'))./N;
end
