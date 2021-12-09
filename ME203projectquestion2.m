%Problem 2

voltage=Dynamicwind(:,1);
t=Dynamicwind(:,2);

cal_volts=[1.1334761517302536, 1.2168838402316453, 1.2574484652661773, 1.28406653483074, 1.2945098977285117, 1.306963086494241, 1.3147604417015477, 1.3228523686035325, 1.3311519051962617, 1.3343771944501273]; %(volts)
cal_speed=[0,.31,.53,.68,.73,.84,.90,.96,1.02,1.10];
%polyfit
a=polyfit(cal_volts,cal_speed,1);
V=polyval(a,voltage);

T=t(length(t))-t(1);
TIME=linspace(0,T,length(t));

subplot(1, 3, 1);
figure1=plot(TIME,V)

%fft calculations (not sure about any of this stuff
Fs=1/(TIME(2)-TIME(1));
Tf=1/Fs;
L=T*1000;

v=fft(V,NFFT)/L;
f = Fs/2*linspace(0,1,NFFT/2+1);
NFFT = 2^nextpow2(L); 
Y = fft(V,NFFT)/L;    

subplot(1, 3, 2);
figure2=loglog(f,2*abs(Y(1:NFFT/2+1)))
title('Amplitude Spectrum')
xlabel('Frequency')
ylabel('|Y(f)|')

p1=0.06694
p2=0.0829704
p3=0.100327
f1=1/p1
f2=1/p2
f3=1/p3
TIME=linspace(0,T*20,length(t));
sig=sin(f1.*TIME)+sin(f2.*TIME)+sin(f3.*TIME);

subplot(1,3,3)
plot(TIME,sig)
axis([0,20,-3,3])
title('Input Signal')

