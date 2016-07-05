showinfo
spielfeld = zeros(12,8);
rahmenx=[0,6,6,6,6,0,0,0];
rahmeny=[0,0,0,15,15,15,15,0];
alphabet =['A','B','C','D','E','F','G','H','I','J','K','L'];
poscirc =cell(48,4);
posans=cell(48,4);
runde = 1;
%mode1= 1;%remove in real game
while(true)
    mode1  = input('Enter a number:  1-Easy Mode  2-Hard Mode'); % Answer as Integer
    if (isempty(mode1) )
        continue
    end
    if (mode1 == 1 || mode1 == 2)
        break
    end
end
loesung = modeselecter(mode1);
%loesung = [1,2,3,4];
figure('Units','normalized','Position',[0.5,0.0,0.3,0.9])
hold on
plot (rahmenx,rahmeny,'k')
fill(rahmenx,rahmeny,[0.83 0.571 0.42])
axis equal
xlim([0,6])
ylim([0,15])
axis off

k = 1;
for x=1:4
    for y=1:12
        [xc,yc]=circle(x,y*1.1,0.5);
        text(0.1,y*1.1,alphabet(y))
        poscirc{k,1} = x;
        poscirc{k,2} = y;
        poscirc{k,3} = xc;
        poscirc{k,4} = yc;
        k = k+1;
    end
    text(x-0.1,0.25,num2str(x))
end

k= 1;
for x=[5,5.5]
    for y=0.75:12
        [xc,yc]=circle(x,y*1.1,0.25);
        posans{k,1} = x;
        posans{k,2} = y;
        posans{k,3} = xc;
        posans{k,4} = yc;
        k = k+1;
        [xc,yc]= circle(x,1.1*y+0.5,0.25);
        posans{k,1} = x;
        posans{k,2} = y+0.5;
        posans{k,3} = xc;
        posans{k,4} = yc;
        k = k+1;
    end
end
matposc = cell2mat(poscirc(:,1:2));
matansc = cell2mat(posans(:,1:2));

while  (runde <=12)
    %inp = '1 2 3 4';%remove in real game
    inp  = input('Enter your guess (Color Color Color Color)','s');
    inptok = strsplit(inp);% input parsen
    try
        inputparser(inptok)
    catch 
        warning('Wrong INPUT. Please Reenter again!')
        continue
    end

    inpnum = input2number(inptok); 
    %inpnum = randi(6,1,4); %remove in real game
    spielfeld(runde,1:4) = inpnum;
    
    % Ausgabe Spielfeld
    for x=1:4
        for y=1:12
            L = matposc(:,1) == x & matposc(:,2) == y; %log. indizierung der zeile und spalte
            fillcircle(poscirc{L,3},poscirc{L,4},spielfeld(y,x))
        end
    end
    
    %Auswertung des Spielzuges
    answ = evaluation(loesung,inpnum);
    spielfeld(runde,5:8) = answ;
    
    %Ausgeben der Bewertung
    for y=0.75:0.5:12.5
        for x=[5,5.5]
            L = matansc(:,1) == x & matansc(:,2) == y; %log. indizierung der zeile und spalte
            xfeld = ceil(x);
            helper = y;
            
            while (helper>1)
                helper = helper -1;
            end
            
            if (helper == 0.75)
                yfeld = ceil(y);
            else
                yfeld = floor(y);
                xfeld = xfeld + 2;
            end
    
            fillcircle(posans{L,3},posans{L,4},spielfeld(yfeld,xfeld))
        end
    end

    if (sum(answ) == -8)
        disp('You solved Mastermind')
        text(1,14.7,'You WON the GAME')
        break
    end
    
    if (runde == 12 && sum(answ) ~= -8)
        disp('You did not solve Mastermind')
        text(1,14.7,'You LOSE the GAME')
        drawanswer(loesung);
        break
    end
   runde = runde + 1; 
end   
hold off
    