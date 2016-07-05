function fillcircle(xc,yc,spielfeldpos)
    
    switch (spielfeldpos)
        case 1
            farbe = 'r';
        case 2
            farbe = 'b';
        case 3
            farbe = 'y';
        case 4
            farbe = 'g';
        case 5
            farbe = 'm';
        case 6
            farbe = 'c';
        case 0
            farbe = [0.83 0.571 0.42];
        case -1
            farbe = 'w';
        case -2
            farbe = 'k';
    end
    

    
    fill(xc,yc,farbe)
end