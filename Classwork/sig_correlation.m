%% worked out from the text
Dt=0.01;
T = 6.0;
t = [-1:Dt:T];

x = ustep(t) - ustep(t-5);
%% signal examples to calculate correlation
g1 = 0.5(ustep(t) - ustep(t-5));
g2 = -(ustep(t) - ustep(t-5));
g3 = exp(-t/5).*(ustep(t)-ustep(t-5));
g4 = exp(-t).*(ustep(t)-ustep(t-5));
g5 = sin(2*pi*t).*(ustep(t)-ustep(t-5));

%% signal energies
e0 = sum(x.*conj(x))*Dt;
e1 = sum(g1.*conj(g1))*Dt;
e2 = sum(g2.*conj(g2))*Dt;
e3 = sum(g3.*conj(g3))*Dt;
e4 = sum(g4.*conj(g4))*Dt;
e5 = sum(g5.*conj(g5))*Dt;

%% correlation coefficients
c0 = sum(x.*conj(x))*Dt / (sqrt(e0*e0))
c1 = sum(x.*conj(g1))*Dt / (sqrt(e0*e1))
c2 = sum(x.*conj(g2))*Dt / (sqrt(e0*e2))
c3 = sum(x.*conj(g3))*Dt / (sqrt(e0*e3))
c4 = sum(x.*conj(g4))*Dt / (sqrt(e0*e4))
c5 = sum(x.*conj(g5))*Dt / (sqrt(e0*e5))

disp(c0);
disp(c1);
disp(c2);
disp(c3);
disp(c4);
disp(c5);
