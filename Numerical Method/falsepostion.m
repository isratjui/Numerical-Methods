function [root,ea,iter]=falsepostion(f,xl,xu,ealimit,maxit)
iter=0;
xrold=xl;
while(1) %till true
    if f(xl)*f(xu)>0
        disp('Error');
        break;
    end
    
    xr=(xuf(xl)-xlf(xu))/(f(xl)-f(xu));
    if(f(xl)*f(xr)>0)
        xl=xr;
    elseif(f(xl)*f(xr)<0)
        xu=xr;
    else
        root=xr;
        break;
    end
    iter=iter+1;
    if xr~=0  %not zero
        ea=abs((xr-xrold)/xr)*100;
    end
    xrold=xr;
    if ea<=ealimit || iter>=maxit
        break;
    end
    
end
root=xr;
end
%[root,ea,iter]=falsepostion(@(x) x^3-0.165*x^2+3.993*10^-4,0,.11,.001,3)