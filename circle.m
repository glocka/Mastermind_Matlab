function [xplot,yplot]=circle(x,y,r)
ang=0:0.01:2*pi; 
xp=r*cos(ang);
yp=r*sin(ang);
xplot=x+xp;
yplot=y+yp;
plot(xplot,yplot,'k');
end