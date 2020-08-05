function[d]= central_difference(f,x,tol,max)
h=1;
D(1)=(f(x+h)-f(x-h))/2*h;
E(1)=0;
for n=1:2
    h=h/10;
    D(n+1)=(f(x+h)-f(x-h))/2*h;
    E(n+1)=abs(D(n+1)-D(n));
end

while((E(n)>E(n+1))&E(n)>tol & n<max)
    h=h/10;
    D(n+2)=(f(x+h)-f(x-h))/(2*h);
    E(n+2)=abs(D(n+2)-D(n+1));
    n=n+1;
end
d=D(n+1);

% f=@(x) x^2+5
% 
% f = 
% 
%     @(x)x^2+5
% 
% [d]= central_difference(f,2,0.0001,15)
% 
% d =
% 
%     4.0000