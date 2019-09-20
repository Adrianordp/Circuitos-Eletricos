clc, clear all, close all

%% Exemplo 1
% Example 4.4 - Nilsson 2015 - Electric Circuits (10e)
disp('Exemplo 1')
M1 = [10 -8  0
      -8 20 -6
       0 -6 10];
N1 = [40
       0
     -20];
I1 = M1\N1;
a1_1 = -I1(1)*40;
a1_2 =  I1(3)*20;
b1   =  8*(I1(1)-I1(2));
disp('a1_1 =')
disp(a1_1)
disp('a1_2 =')
disp(a1_2)
disp('b1 =')
disp(b1)

%% Exemplo 2
% Assessment problems 4.7 - Nilsson 2015 - Electric Circuits (10e)
disp('Exemplo 2')
M2 = [31  -5 -26
      -5 125 -90
     -26 -90 124];
N2 = [80
       0
       0];
I2 = M2\N2;
a2 = abs(-80*I2(1));
b2 = 8*I2(3)^2;
disp('a2 =')
disp(a2)
disp('b2 =')
disp(b2)

%% Exemplo 3
% Example 4.5 - Nilsson 2015 - Electric Circuits (10e)
disp('Exemplo 3')
M3 = [25 -5 -20
      -5 10 -4
      -5 -4  9];
N3 = [50
       0
       0];
I3 = M3\N3;
S3 = 4*(I3(2)-I3(3))^2;
disp('S3 =')
disp(S3)

%% Exemplo 4
% Figure 4.25 - Nilsson 2015 - Electric Circuits (10e)
disp('Exemplo 4')
M4 = [9 -5  6
     -3 15 -2
     -1  0  1];
N4 = [50
       0
       5];
I4 = M4\N4;
disp('I4 =')
disp(I4)

%% Exemplo 5
% Assessment problems 4.12 - Nilsson 2015 - Electric Circuits (10e)
disp('Exemplo 5')
M5 = [2  4 -4
     -2 -2  5
      1 -1  0];
N5 = [10
       6
       2];
I5 = M5\N5;
S5 = 1*I5(3)^2;
disp('S5 =')
disp(S5)