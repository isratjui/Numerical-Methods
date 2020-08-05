clc;
clear all;
f=@(x)(10*exp(-x)*sin(2*pi*x))^2;
x_low=0;
x_up=.5;
h=0.125;
x=x_low:h:x_up;

for k=1:length(x)
    y(k)=f(x(k));
end
s=0;
for i=2:2:length(x)-1
    s=s+4*(y(i));
end
for i=3:2:length(x)-2
    s=s+2*(y(i));
end
sum=h/3*(y(1)+y(length(x))+s);

fprintf('Result from manual calculation= %d\n',sum);

r=trapz(x, y);
fprintf('Result from manual calculation= %d\n',r);