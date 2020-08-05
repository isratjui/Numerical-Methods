function yy=lagrange(x,y,xx)
n=length(x);
if length(y)~= n, error('error')
end
for p=1:length(xx)
s=0;
for i=1:n
product =y(i);
for j=1:n
    if i~= j
        product = product * (xx(p)-x(j))/(x(i)-x(j));
    end
end
s=s+product;
end
yy(p)=s;
end 

end

%yy=lagrange(4,2,1)