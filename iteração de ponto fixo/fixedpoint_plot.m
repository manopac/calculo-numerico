function xnew = fixedpoint_plot(g,x0,tol,maxiter,xmin,xmax,ymin,ymax,N)
    
    xmesh = linspace(xmin,xmax,N);
    idx = 0;
    
    figure()
    plot([xmin xmax],[0 0],'k',[0 0],[ymin ymax],'k','linewidth',3);
    hold on
    plot(xmesh,xmesh   ,'g','linewidth',3);
    plot(xmesh,g(xmesh),'b','linewidth',3);
    saveas(gcf,['fixedpoint_plot',num2str(idx),'.png'])
	idx = idx + 1;
    
    pause(1)
    plot(x0,0,'om','MarkerSize',12);
	saveas(gcf,['fixedpoint_plot',num2str(idx),'.png'])
	idx = idx + 1;
    
	pause(1)
	plot([x0 x0],[0 g(x0)],'r--','linewidth',2);
	plot(x0,g(x0)         ,'om' ,'MarkerSize',12);
	saveas(gcf,['fixedpoint_plot',num2str(idx),'.png'])
	idx = idx + 1;
    
	iter = 0;
    Error = inf;
    while Error > tol && iter < maxiter
        
        iter = iter + 1;
        xnew = g(x0);
        
        pause(1)
        plot([x0 xnew],[g(x0) xnew],'r--','linewidth',2);
        plot(xnew,xnew,'om','MarkerSize',12);
        saveas(gcf,['fixedpoint_plot',num2str(idx),'.png'])
        idx = idx + 1;
        
        pause(1)
        plot([xnew xnew],[xnew g(xnew)],'r--','linewidth',2);
        plot(xnew,g(xnew),'om','MarkerSize',12);
        saveas(gcf,['fixedpoint_plot',num2str(idx),'.png'])
        idx = idx + 1;
        
        Error = abs(xnew-x0);
        x0 = xnew;
    end
    if Error > tol
        xnew = NaN;
    end
end