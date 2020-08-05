function [root,ea,iter]=newtraph(f,df,xr,ealimit,maxit)
iter=0;
while(1)
    xrold=xr;
    if df(xr)==0
        disp('Error');
    end
    xr=xr-f(xr)/df(xr);
    iter=iter+1;
    if xr~=0
        ea=abs((xr-xrold)/xr)*100;
    end
    if ea<=ealimit || iter>=maxit
        break;
    end
    root=xr;
end
%[root,ea,iter]=newtraph(@(x) x^2-9,@(x) 2*x,5,.0001,3)