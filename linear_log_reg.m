
clc;
clear all;
close all;
n=input('Enter the number of data points')
for i=1:n
    fprintf('Enter Data set= %d\n',i)
    x(i)= input('x value');
    y(i)=input('y value');
end
sumx=0;
sumy=0;
sumxy=0;
sumxsq=0;
for i=1:n
    sumx=sumx+log(x(i));
    sumy=sumy+log(y(i));
    sumxy=sumxy+log(x(i))*log(y(i));
    sumxsq=sumxsq+log(x(i))^2;
end
 
b2=(n*sumxy-sumx*sumy)/(n*sumxsq-sumx^2)
a2=exp((sumy/n)-b2*sumx/n)
plot(x,y, 'o');
hold on;
ym=log(a2)+b2.*log(x)
plot(x,ym)
legend('Actual data point', 'fitted straight line')
a2=exp(log(a2));


