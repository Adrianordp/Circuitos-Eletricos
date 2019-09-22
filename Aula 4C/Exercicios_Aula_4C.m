clc, clear all, close all

%% Exercício 1
% Assessment problems 4.12 - Nilsson 2015 - Electric Circuits (10e)
disp('Exercício 1')
M1 = [2  4 -4
     -2 -2  5
      1 -1  0];
N1 = [10
       6
       2];
I2 = M1\N1;
A1 = 1*I2(3)^2; % Answer (power dissipated by 1 Ohm resistor)
disp('A1 =')
disp(A1)
%% Exercício 2
% Assessment problems 4.11 - Nilsson 2015 - Electric Circuits (10e)
disp('Exercício 2')
M2 = [7 -2 -5
      0 -1  0
      2  0 -3];
N2 = [75
      10
       0];
I2 = M2\N2;
A2 = I2(1); % Answer (current i_a)
disp('A2 =')
disp(A2)
