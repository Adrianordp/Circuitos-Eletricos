% Aula 07A
clc, clear all, close all

% Exemplo 1
disp('Exemplo 1')
N = 1000;
t = linspace(0,1.5,N);

I0  = 20; % Initial inductor current
Rs  =  2; % Series load resistance
Rp1 = 10; % Parallel load resistance
Rp2 = 40; % Parallel load resistance
L   =  2; % Inductance

Req = Rs + 1/(1/Rp1+1/Rp2);

tau = L/Req;

% a)
disp('a) figura 1')
iL = I0*exp(-t/tau);
plot(t,iL), grid on

% b)
disp('c) figura 1')
hold on
io = -iL*Rp1/(Rp1+Rp2);
plot(t,io)

% c)
disp('c) figura 2')
figure
vo = io*Rp2;
plot(t,vo), grid on

% d)
p10 = vo.^2/Rp1;
w = 0;
for i = 2:N
    w = w + (p10(i)+p10(i-1))*(t(2)-t(1))/2;
end

fprintf("d) %0.2fJ\n",w)
