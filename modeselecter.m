function sol = modeselecter(inp)
    k =1;
    
    if(inp == 2)
        sol = randi(6,1,4);
    else
        tmp = randperm(6);
        sol = tmp(1:4);
    end