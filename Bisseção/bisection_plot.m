function [xm,iter] = bisection_plot(f,a,b,tol,xmin,xmax,ymin,ymax,N)
	iter = 0;
    Error = inf;
    xm = 0.5*(a+b);
    xmesh = linspace(xmin,xmax,N);
    idx = 0;
    
    while Error > tol  
      figure(1)
      hax = axes;
      hold on
      plot([xmin xmax],[0 0],'k',[0 0],[ymin ymax],'k','linewidth',3);
      plot(xmesh,f(xmesh),'b','linewidth',3);
      saveas(gcf,['bisection_plot',num2str(idx),'.png'])
      idx = idx + 1;
      pause(1)
      line([a a],get(hax,'YLim'),'Color','r','linewidth',1,'LineStyle','--')
      line([b b],get(hax,'YLim'),'Color','r','linewidth',1,'LineStyle','--')
      plot(a,0,'om','MarkerSize',12);
      plot(b,0,'om','MarkerSize',12);
      saveas(gcf,['bisection_plot',num2str(idx),'.png'])
      idx = idx + 1;
      pause(1)
      line([xm xm],get(hax,'YLim'),'Color','g','linewidth',2)
      saveas(gcf,['bisection_plot',num2str(idx),'.png'])
      idx = idx + 1;
      hold off
        
      if f(a)*f(xm) < 0
         b = xm;
      else
         a = xm;
      end
      x0 = xm;
      xm = 0.5*(a+b);
      Error = abs(xm-x0);
      iter = iter + 1;
      pause(0.5)
    end
return