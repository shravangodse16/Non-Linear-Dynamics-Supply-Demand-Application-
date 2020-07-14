xvals = [];

for w = 0:0.01:4
    xold = 0.1;
    for i = 1:2000
        xnew = xold + w*((4-xold^2)/3 - xold);
        xold = xnew;
    end
    xss = xnew;
    for i = 1:1000
        xnew = xold + w*((4-xold^2)/3 - xold);
        xold = xnew;
        xvals(1, length(xvals)+1) = w;
        xvals(2, length(xvals)) = xnew;
        if (abs(xnew - xss) < 0.001)
            break
        end
    end
end

plot(xvals(1,:),xvals(2,:),'.','LineWidth',0.1,'MarkerSize',1.2,'Color',[1,1,1])
set(gca,'color','k','xcolor','w','ycolor','w')
set(gcf,'color','k')
        