clc;
%clear;
close;

%signal coefficients
b = input("input bk coefficients : ");
a = input("input ak coefficients : ");

%order of the signals
M = length(b) - 1;
N = length(a) - 1;
order = N;
initial_conditions = input("enter the initial conditions : ");

%length of signals
n = -N : 20;

%x[n] = u[n] - u[n-2]
x = [n >= 0] - [n >= 2];

% plotting x[n]
subplot(1, 2, 1);
stem(n, x);
title('input sequence');
xlabel('n');
ylabel('x[n]');

%y[n]
y = [initial_conditions zeros(1, length(n) - N)];

%running loops for solving and finding out y[n]
for n=N+1:20
    sumx=0;sumy=0;
    for k=0:M
        sumx=sumx+(b(k+1)*x(n-k));
    end
    for k=1:N
        sumy=sumy+(a(k+1)*y(n-k));
    end
    y(n)=sumx-sumy;
end

n = -N:20;

% plotting y[n]
subplot(1, 2, 2);
stem(n, y)
xlabel('n');
ylabel("y[n]");
disp("y[n] = ");
disp(y);

