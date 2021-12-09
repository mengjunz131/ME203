% Zhang_Mengjun
% ME_203
% HW_4

%% Problem 1

clc, clear all, format compact

A=[3 5 -4; -8 -1 33; -17 6 -9];
% method 1
for a=1:3
for b=1:3
    if A(a,b)>=1
    B(a,b)=log(A(a,b))
else
    B(a,b)=A(a,b)+20
    end
end
end

%method 2

while a<=3
    while b<=3
    if A(a,b)>=1
    B(a,b)=log(A(a,b))
        break
    end
    if A(a,b)<1
        B(a,b)=A(a,b)+20
        break
    end
    break
    end
 break
end



%% Problem 2
k = 1; b = -2; x = -1; y = -2;
while k <= 3 k,
b, x, y
y = x^2 - 3;
if y < b
b = y;
end
x = x + 1;
k = k + 1;
end
img=imread('problem_2.png');
image(img)

%% Problem 3
clc, clear all, format compact
%Instructions
disp 'First enter the weight of object, then enter material coefficient'
disp 'Usable Material coefficients:Metalonwood, Woodonmetal, Metalonmedal, Rubberonconcrete'
%defining coefficients
Metalonwood =.4;
Woodonmetal =.35;
Metalonmetal =.2;
Rubberonconcrete =.7;
W=input('weight: ');
M=input('material coefficient: ');
%Calculations for each friction coefficient
Metal_on_metal=.2*W;
Wood_on_wood=.35*W;
Metal_on_wood=.4*W;
Rubber_on_concrete=.7*W;
%Switch case to display answer
disp 'Answer is not displayed in the command window but displayed below.'
switch M
    case .2
        fprintf ('%d\n',Metal_on_metal)
    case .35
        fprintf ('%d\n',Wood_on_wood)
    case .4
        fprintf ('%d\n',Metal_on_wood)
    case .7
        fprintf ('%d\n',Rubber_on_concrete)
end


%% Problem 4
clc, clear all, format compact

P = zeros(4,2);

for i = 1:4
P(i,:) = input('enter coordinates of point :');
end

A = eye(4);
B = zeros(4,1);
for i = 1:4
A(i,:) = [P(i,1)^3 P(i,1)^2 P(i,1) 1];
B(i) = P(i,2);
end

eqn = A\B;
disp('coefficients of the polynomial are:')
disp(eqn)


%% Problem 5
clc, clear all, format compact
n=1
for t=0:0.1:4
x=5*t-10
y=25*t.^2-120*t+144
d(n)=sqrt(x.^2+y.^2)
n=n+1
end
t=0:0.1:4
[a,b]=min(d)
disp(['the minimum distance is ',num2str(a),'m and that occur at time',num2str(t(b)),'sec'])
