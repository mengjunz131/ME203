% Zhang_Mengjun
% ME_203
% HW_3
% Due Date: 11/1/2021

%% Problem 1
%given
A=[0 -7 6;5 -4 3; 10 -1 9; 15 1 0; 20 2 -1]
%elements needed for plot
time=A(:,1)%seconds
force=A(:,2:3)%newtons
%plot
plot(time,force)

%% Problem 2
%given
A=[3 7 -4 12; -5 9 10 2; 6 13 8 11; 15 5 4 1]

%solutions
% part a
B=A(:,2:4)

% patt b
C=A(2:4,:)

% part c
D=A(1:2,2:4)

%% Problem 3

% given
A=[56 32; 24 -16]
B=[14 -4; 6 -2]

%calculations:
% part a
r1=A.*B

% part b
r2=A\B

% part c
r3=B.^3

%% Problem 4
% part a
E=6*pi*atan(12.5)+4

% part b
F=5*tan(3*asin(13/15))

%% Probem 5
% part a
% given:
%       -2x+y=-5
%       -2x+y=3

%calculation:
Ga=[-2 1; -2 1];
ba=[-5;3];
xya=inv(Ga)*ba;
xa=xya(1)
ya=xya(2)


% part b
% given:
%       -2x+y=3
%       -8x+4y=12
%calculation:
Gb=[-2 1;-8 4];
bb=[3;12];
xyb=inv(Gb)*bb;
xb=xyb(1)
yb=xyb(2)

% part c
% given:
%       -2x+y=-5
%       -2x+y=-5.00001
%calculation:
Gc=[-2 1;-2 1];
bc=[-5;-5.00001];
xyc=inv(Gc)*bc;
xc=xyc(1)
yc=xyc(2)


% part d
% given:
%       x1+5*x2-x3+6*x4=19
%       2*x1-x2+x3-2*x4=7
%       -x1+4*x2-x3+3*x4=30
%       3*x1-7*x2-2*x3+x4=-75
%calculation:
Gd=[1 5 -1 6; 2 -1 1 -2; -1 4 -1 3; 3 -7 -2 1];
bd=[19; 7; 30; -75];
xyd=inv(Gd)*bd;
x1=xyd(1)
x2=xyd(2)
x3=xyd(3)
x4=xyd(4)

%% Problem 6
%given
t=(1:0.1:3);
T=6*log(t)-7*exp(0.2*t);
%plot
plot(t,T)

%% Problem 7
%given
a=2
b=2
c=3

A1=(a==b)& (b==c)|(a==c)
A2=(a==b)|(b==c)&(a==c)
if A1==A2
    disp('1 and 2 expressions are equivalent')
else
    disp('1 and 2 expressions are not equivalent')
end

%% Problem 8
%Givens
I=input('Testing Grade:')

minval=0;
maxval=100;
if (I>=minval) && (I<=maxval)
    fprintf('Input within range.')
end
% Part  A
if (I>90);
    fprintf('Grade: A')
end
if (I>=80) && (I<=89);
    fprintf('Grade: B')
end

if (I>=70) && (I<=79);
    fprintf('Grade: C')
end
if (I>=60) && (I<=69);
    fprintf('Grade: D')
end

if (I<60)
    fprintf('Grade: F')
end
%% Problem 8
%Givens
I=input('Testing Grade:')

minval=0;
maxval=100;
if (I>=minval) && (I<=maxval)
    fprintf('Input within range.')
end
% PART B
if (I>90)
        fprintf('Grade: A')
    elseif (I>=80) && (I<=89)
            fprintf('Grade: B')
    elseif (I>=70) && (I<=79)
                fprintf('Grade: C')
    elseif (I>=60) && (I<=69)
                    fprintf('Grade: D')
    elseif (x<60)
                        fprintf('Grade: F')
end

