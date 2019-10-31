% Aula 06B
clc,clear all, close all

% Numero de pontos
N = 6000;
% Capacitancia
C = 0.5e-6;
% Vetor de tempo
maxT = 6;
t = linspace(0,maxT,N);

% item a)

% Inicialização do vetor de tensao
v = zeros(N,1);
% Definicao do vetor de tensao
for k = 1:N
    if t(k) <= 1
        v(k) = 4*t(k);
    else
        v(k) = 4*exp(-(t(k)-1));
    end
end
figure('Name','v')
plot(t,v), grid on

% Inicializacao do vetor de corrente
i = zeros(N,1);
% Definicao do vetor de correntes
for k = 2:N-1
    i(k) = C*(v(k+1)-v(k-1))/(t(k+1)-t(k-1));
end
figure('Name','i')
plot(t,i), grid on

% Inicializacao do vetor de potencias
p = zeros(N,1);
% Definicao do vetor de potencias
for k = 1:N
    p(k) = i(k)*v(k);
end
figure('Name','p')
plot(t,p), grid on

% Inicializacao do vetor de energia
wi = 0;
w = zeros(N,1);
% Definicao do vetor de energia
for k = 1:N
    w(k) = wi+(p(k))*(t(2)-t(1));
    wi = w(k);
%     w(k) = C*v(k)^2/2; % Formula alternativa
end
figure('Name','w')
plot(t,w), grid on

disp('item b')
disp('Analisando a figura:w, vemos que a energia do capacitor aumenta')
disp('durante o intervalo de tempo [0,1]. O sinal positivo da potencia')
disp('observado na figura:p tambem reforca essa conclusao.')

fprintf('\nitem c)\n')
disp('Analisando a figura:w, observa-se que o capacitor perde energia a partir')
disp('de 1 s. O sinal negativo da potencia na figura:p reforca essa conclusao.')

fprintf('\nitem d)\n')
fprintf('A integral de [0,1] = %4.2f uJ\n',w(floor(N/maxT))*10^6)
fprintf('A integral de (1:inf) = %4.2f uJ\n',(w(N)-w(floor(N/maxT)))*10^6)


