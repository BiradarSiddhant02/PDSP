%% inbuilt functions
b=input('Enter the coefficients of x: ');
a=input('Enter the coefficients of y: ');

initial_conditions=[0 0];

ic = filtic(b, a, flip(initial_conditions));
n = 0:20;
% x = [n >= 0] - [n >= 2];
x = double(n == 0);
y = filter(b, a, x, ic);
 
subplot(121);
stem(n,x);
title('input sequence x[n]');
xlabel('n');
ylabel('x[n]');
subplot(122);
stem(n,y);
 
title('output sequence y[n] with ZIC');
xlabel('n');
ylabel('y[n]');
disp('y[n]=');
disp(y)
