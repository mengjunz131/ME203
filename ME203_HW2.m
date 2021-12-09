% Zhang_Mengjun
% ME203
% HW 2
% Due 08/10/2021

%% Problem 1
x=1:0.2:5;
y=7*sin(4*x);
z=length(y) %how many elements are in the array y
y(3) %the value of the third element

%% Problem 2
d=sin(-pi/2):0.05:cos(0);
c=length(d)
d10=d(10)

%% Problem 3
s=roots([13,182,-184,2503])

%% Problem 4
a=(6*pi*(atan(12.5)))+4
b=5*tan(3*asin(13/5))

%% Problem 5
r=10;
phi=0:0.01:4*pi;
x=r*(phi-sin(phi));
y=r*(1-cos(phi));
figure(1)
plot(x,y)
xlabel('x')
ylabel('y')
title('cycloid')

%% Problem 6
%given
t=1:0.01:3;
T=6*log(t)-7*exp(0.2*t);
%plot
figure(2)
plot(t,T)
xlabel('time(min)')
ylabel('T(temperature in degree Celsius)')
title('time in min vs. temperature in degrees Celsius')

%% Problem 7
%given
V=20:0.01:100;
R=286.7; %(N*m)/(kg*K)
T=293; %K
m1=1; %kg
m2=3; %kg
m3=7; %kg
p1=m1*R*V.^(-1);
p2=m2*R*V.^(-1);
p3=m3*R*V.^(-1);
%plot
figure(3)
plot(V,p1,V,p2,V,p3)
xlabel('V(m^3)')
ylabel('Pressure(Pa)')
title('gases (with different mass) pressure versus the container volume')


%% Problem 8
t=0:0.1:10;
b=[0.05 0.1 0.2 0.5 1 2 5 10 20 40 50 60];
%plots
figure(4)
for i=1:12
y=1-exp(-b(i)*t);
plot(t,y)
hold on
end

%How long it will take for y(t) to reach 98 percent of its steady-state
%value?
for a=1:length(b)
    t= (- log(0.02))/b(a)
    t
end

xlabel('t')
ylabel('y(t)')
legend('b=0.05', 'b=0.1','b=0.2','b=0.5','b=1','b=2','b=5','b=10',...
    'b=20','b=40','b=50','b=60')


%% Problem 9
%given
r=0.1:0.01:100;%m
V=4/3*pi*r.^3;%m^3
A=4*pi*r.^2;%m^2
%plots
figure(5)
subplot(1,2,1)
%choose axes that will result in straight-line graphs for V
loglog(r,V)
xlabel('r')
ylabel('V')
title('plot of Volume')

subplot(1,2,2)
%choose axes that will result in straight-line graphs for A
loglog(r,A)
xlabel('r')
ylabel('A')
title('plot of Area')
