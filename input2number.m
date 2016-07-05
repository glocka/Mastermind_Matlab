function inpnum = input2number(inptok)
    
    inpnum = zeros(1,4);
    for x = 1:4
        
        switch (lower(inptok{x}))
            case 'red'
                inpnum(x) = 1;
            case 'rot'
                inpnum(x) = 1;
            case 'r'
                inpnum(x) = 1;
            case '1'
                inpnum(x) = 1;
                
            case 'blue'
                inpnum(x) = 2;
            case 'blau'
                inpnum(x) = 2;
            case 'b'
                inpnum(x) = 2;
            case '2'
                inpnum(x) = 2;
                
            case 'yellow'
                inpnum(x) = 3;
            case 'gelb'
                inpnum(x) = 3;
            case 'y'
                inpnum(x) = 3;
            case '3'
                inpnum(x) = 3;
                
            case 'green'
                inpnum(x) = 4;
            case 'grün'
                inpnum(x) = 4;
            case 'g'
                inpnum(x) = 4;
            case 'green'
                inpnum(x) = 4;
            case '4'
                inpnum(x) = 4;
                
            case 'magenta'
                inpnum(x) = 5;
            case 'm'
                inpnum(x) = 5;
            case '5'
                inpnum(x) = 5;
                
            case 'cyan'
                inpnum(x) = 6;
            case 'c'
                inpnum(x) = 6;
            case '6'
                inpnum(x) = 6;
        end
    end