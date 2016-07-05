function [answ] = evaluation(sol,guess)
    
    nCorrectColors = length(intersect(sol,guess));
    nCorrectPlaces = sum(sol==guess);

     
    nWhite = nCorrectColors - nCorrectPlaces;
    nBlack = nCorrectPlaces;
    
    vBlack = (ones(1,nBlack)).* -2;
    vWhite =  (ones(1,nWhite)).* (-1);
    answ=[vBlack,vWhite];
    
    dif = numel(answ)-4;
    answ = [answ,zeros(1,-dif)];