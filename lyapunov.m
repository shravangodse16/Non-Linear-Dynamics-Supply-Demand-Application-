xvals = [];
x = 1.1;
for w = 0:0.01:4
    xold = 0.1;
    for i = 1:2000
        xnew = xold + w*((4-xold^2)/3 - xold);
        xold = xnew;
    end
    xss = xnew;
    xvals(1, length(xvals)+1) = w;
    xvals(2, length(xvals)) = (1/2000)*log(xss/x);
end

plot(xvals(1,:),xvals(2,:))