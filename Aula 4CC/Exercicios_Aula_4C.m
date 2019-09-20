clc, clear all, close all

%% Exercício 1
% Assessment problems 4.11 - Nilsson 2015 - Electric Circuits (10e)
M1 = [7 -2 -5
      0 -1  0
      2  0 -3];
N1 = [75
      10
       0];
I1 = M1\N1;
S1 = I1(1);
disp('S1 =')
disp(S1)