startup_rvc;

L(1) = Link([0 0.385 0 pi/2 0]);
L(2) = Link([0 0 0.220 0 0]);
L(3) = Link([0 0 0.220 0 0]);
L(4) = Link([0 0 0.155 0 0]);

robot = SerialLink(L,'name','asiye');

qf0 = [0 0 0 0];
qf1 = [0 -pi/2 pi/2 pi/2];
qf2 = [-pi/3 -pi/2 pi/2 0];
qf3 = [-pi/3 0 pi/2 -2*pi/3];
qf4 = [-2*pi/3 0 pi/2 0];

T0 = robot.fkine(qf0);
T1 = robot.fkine(qf1);
T2 = robot.fkine(qf2);
T3 = robot.fkine(qf3);
T4 = robot.fkine(qf4);

tempo = 0:0.4:10;
q = jtraj(qf0,qf1,tempo);
robot.plot(q);
pause(1);

q = jtraj(qf1,qf2,tempo);
robot.plot(q);
pause(1);

q = jtraj(qf2,qf3,tempo);
robot.plot(q);
pause(1);

q = jtraj(qf3,qf4,tempo);
robot.plot(q);
pause(1);

q = jtraj(qf4,qf1,tempo);
robot.plot(q);