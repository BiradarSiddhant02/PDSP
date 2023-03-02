%recursive function to calculate DIT FFT in matlab

function [X]=DITFFT(x)
N=length(x);
if N==1
    X=x;
else
    X=zeros(1,N);
    x_even=DITFFT(x(1:2:N));
    x_odd=DITFFT(x(2:2:N));
    for k=0:N/2-1
        X(k+1)=x_even(k+1)+x_odd(k+1)*exp(-1i*2*pi*k/N);
        X(k+1+N/2)=x_even(k+1)-x_odd(k+1)*exp(-1i*2*pi*k/N);
    end
end

%recursive function to calculate DIT FFT in matlab

function [X]=DITFFT(x)
N=length(x);
if N==1
    X=x;
else
    X=zeros(1,N);
    x_even=DITFFT(x(1:2:N));
    x_odd=DITFFT(x(2:2:N));
    for k=0:N/2-1
        X(k+1)=x_even(k+1)+x_odd(k+1)*exp(-1i*2*pi*k/N);
        X(k+1+N/2)=x_even(k+1)-x_odd(k+1)*exp(-1i*2*pi*k/N);
    end
end

%recursive function to calculate DIT FFT in matlab

function [X]=DITFFT(x)
N=length(x);
if N==1
    X=x;
else
    X=zeros(1,N);
    x_even=DITFFT(x(1:2:N));
    x_odd=DITFFT(x(2:2:N));
    for k=0:N/2-1
        X(k+1)=x_even(k+1)+x_odd(k+1)*exp(-1i*2*pi*k/N);
        X(k+1+N/2)=x_even(k+1)-x_odd(k+1)*exp(-1i*2*pi*k/N);
    end
end

%recursive function to calculate DIT FFT in matlab

function [X]=DITFFT(x)
N=length(x);
if N==1
    X=x;
else
    X=zeros(1,N);
    x_even=DITFFT(x(1:2:N));
    x_odd=DITFFT(x(2:2:N));
    for k=0:N/2-1
        X