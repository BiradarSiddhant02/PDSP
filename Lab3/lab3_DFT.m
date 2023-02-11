clc; clear; close;

%accept input
xn = input("the input sequence : ");
N = input("N point DFT : ");

%call calcdft function to calculate the dft of x[n]
Xk = calcdft(xn, N);
disp('dft of x[n]');
disp(Xk);

%find the magnitude and phase spectrum
magXk = abs(Xk);
phaseXk = angle(Xk);

%plotting the magnitude and phase spectrum
k = 0:N-1;
subplot(121);
stem(k, Xk);
title('Magnitude spectrum of dft of x[n]');
xlabel('Frequency');
ylabel("Magnitude");
subplot(122);
stem(k, phaseXk);
title("Phase spectrum of dft of x[n]");
xlabel('Frequency');
ylabel('Phase');

function [Xk]=calcdft(xn, N)
    L=length(xn);
    if(N<L)
    error('N must be >=L');
    end
    x1=[xn zeros(1,N-L)];
    for k=0:1:N-1
        for n=0:1:N-1
            p=exp(-1i*2*pi*n*k/N);
            T(k+1,n+1)=p;
        end
    end
    disp('Transformation Matrix for dft')
    disp(T);
    Xk=T*x1.';
 end

