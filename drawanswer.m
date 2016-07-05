function drawanswer(sol)
    
    for x = 1:4
        [xc,yc]=circle(x+1.5,14.1,0.25);
        fillcircle(xc,yc,sol(x));
        text(0.1,14.1,'ANSWER:')
    end