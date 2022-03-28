function [x1,iter] = newton_plot(f,df,x0,tol,maxiter,xmin,xmax,ymin,ymax,N)
	iter = 0;
    error = inf;
    
    x = linspace(xmin,xmax,N);
    
    figure()
    plot([xmin xmax],[0 0],'k',[0 0],[ymin ymax],'k','linewidth',3);
    hold on
    plot(x,f(x),'b','linewidth',3);
    
    while error > tol && iter < maxiter
        iter = iter + 1;
        dx = - f(x0)/df(x0);
        x1 = x0 + dx;
        
        pause
        plot(x0,0,'om','MarkerSize',12);
        pause
        plot([x0 x0],[0 f(x0)],'r--','linewidth',2);
        plot(x0,f(x0),'ob','MarkerSize',12);
        pause
        plot([x0 x1],[f(x0) 0],'g-','linewidth',2);
        
        error = abs(x1-x0);
        x0 = x1;
    end
    if error > tol
        x1 = NaN;
    end
return