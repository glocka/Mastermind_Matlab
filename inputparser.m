function inputparser(inpto)
    allowedanwsers = {'r','red','rot','1','blue','blau','b','2','yellow','gelb','y','3','green','grün','g','4','magenta','m','5','cyan','c','6'};
    
    if(numel(inpto) ~= 4)
        error ('numb')
    end
    
    L = zeros(1,4);
    for k = 1:4
        L(k) = any(strcmpi(inpto{k},allowedanwsers));
    end

    if(sum(L) ~= 4)
        error ('cha')
    end
    