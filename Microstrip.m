centro do patch.
clear all;
clc;
epsr    = 3.38;
h
z0
= 0.635e-3;
= 50 ;
% Constante dielétrica do dielétrico
% Altura do dielétrico
% Impedância da microfita
A       = (z0/60)*sqrt((epsr+1)/2)+(epsr-1)/(epsr+1)*(0.23+0.11/epsr);
if A> 1.52
t   =(8*exp(A)/(exp(2*A)-2));
end
if A<= 1.52
B   = 60*pi^2/(z0*sqrt(epsr));
t   = (2/pi)*(B-1-log(2*B-1)+((epsr-1)/(2*epsr))*(log(B-1)+0.39-0.61/epsr));
end
w       = t*h/1e-3;         % largura da trilha em milimetros
d = w*t;
