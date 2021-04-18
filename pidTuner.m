clear
clc

t = 0:0.01:30;

Ke = 0.01;
Kt = 0.01;
R = 1;
L = 0.5;

m = 1500;
J = 3500;
c = 1430;
k = 51560;
GR = 1.43;


syms Kp Kd Ki s

PID = Kp + Ki/s + Kd*s;
s = tf('s');

plant = 1/(J*s + c);
motor = Kt/(L*s + R);

plant_motor = feedback(plant*motor,Ke);

sys_tf = feedback(plant_motor*GR,1);

step(sys_tf,t);

pidTuner(sys_tf,'PID')