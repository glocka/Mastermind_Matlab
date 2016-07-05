function showinfo
    
figure('Units','normalized','Position',[0.0,0.5,0.4,0.5])
hold on
axis off
axis equal
plot ([0,12,12,12,12,0,0,0],[2,2,2,10,10,10,10,2],'k')
text(0.2,9.5,'MASTERMIND','FontSize',14)
text(0.2,9,'by Gerald Birngruber')
text(0.2,8,'Color: allowed Inputs','FontSize',14)
text(1,7.5,'RED: red, RED, rot, ROT, r, 1','Color','r')
        [xc,yc]=circle(0.5,7.5,0.1);
        fillcircle(xc,yc,1);
text(1,7,'BLUE: blue, BLUE, blau, BLAU, b, 2','Color','b')
        [xc,yc]=circle(0.5,7,0.1);
        fillcircle(xc,yc,2);
text(1,6.5,'Yellow: yellow, YELLOW, gelb, GELB, y, 3','Color','y','BackgroundColor',[0.4,0.4,0.4])
        [xc,yc]=circle(0.5,6.5,0.1);
        fillcircle(xc,yc,3);
text(1,6,'GREEN: green, GREEN, grün, GRÜN, g, 4','Color','g')
        [xc,yc]=circle(0.5,6,0.1);
        fillcircle(xc,yc,4);
text(1,5.5,'MAGENTA: magenta, MAGENTA, m, 5','Color','m')
        [xc,yc]=circle(0.5,5.5,0.1);
        fillcircle(xc,yc,5);
text(1,5,'CYAN: cyan, CYAN, c, 6','Color','c')
        [xc,yc]=circle(0.5,5,0.1);
        fillcircle(xc,yc,6);


text(7,8,'Answers','FontSize',14)
text(8,7,'WHITE:')
        [xc,yc]=circle(7.5,7,0.1);
        fillcircle(xc,yc,-1);
text(7,6.5,'Right Color but wrong Position')
text(8,6,'BLACK:')
        [xc,yc]=circle(7.5,6,0.1);
        fillcircle(xc,yc,-2);
text(7,5.5,'Right Color and right Position')

text(0.2,4,'MODE','FontSize',14)
text(1,3.5,'1 - Easy Mode: Each color appears only once.')
text(1,3,'2 - Hard Mode: Each color can appeare more than once.')

hold off