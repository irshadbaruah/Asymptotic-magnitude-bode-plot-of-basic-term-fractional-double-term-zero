clc;
clf;
clear all;
close all;
hold off;
alpha=0.9;
beta=0.9;
a2=3;
Wcr=1.842;
w1=logspace(-2,log10(Wcr),1000);
w2=logspace(log10(Wcr),2,1000);
Mag1= (20*log10(abs(a2)))*ones(1,numel(w1));
Mag2=@(w2) 20*(alpha + beta)*log10(w2);
y=semilogx(w1,Mag1,'Color','black','LineStyle','--');
hold on;
y=semilogx(w2,Mag2(w2),'Color','black','LineStyle','--');
grid on;
xlabel('Frequency(rad/sec)','FontSize', 15);
ylabel('Magnitude dB','FontSize', 15);


clc;
clear 
alpha=0.9;beta=0.9;
a1=2;a2=3;
w=logspace(-2,2,1000);
mag1=@(w) (20*log10(abs(sqrt(((1j.*w).^(alpha + beta) + a1*(1j.*w).^alpha  + a2).^2))));
x=semilogx(w,mag1(w),'Color','black');
hold on;
grid on;
xlabel('Frequency (rad/sec)','FontSize', 15);
ylabel('Magnitude (dB)','FontSize', 15);
legend('Asymptotic magnitude bode plot','Exact magnitude bode plot','Location', 'northeast');

