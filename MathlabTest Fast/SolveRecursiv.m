function [cM,cIteration] = SolveRecursiv (gM, iteration)
%falls iteration nicht erfolgreich (zu viele Versuche) -> iteration = -1

%Einbinden der Globalen Variablen
    global A0;
    global Ax;
    global Ay;
    global Az;
    global B0;
    global Bx;
    global By;
    global Bz;
    global C0;
    global Cx;
    global Cy;
    global Cz;

%Abbruchbedingungen
maxDelta = 0.001;
maxIteration = 20;

    %Anker der Rekursivenfunktion
    if iteration > maxIteration
        cM = [-1 -1 -1];
        cIteration = -1;
    else    
        cIteration = iteration + 1;
        LGS = [Ax(gM(1),gM(2),gM(3)) Ay(gM(1),gM(2),gM(3)) Az(gM(1),gM(2),gM(3));
               Bx(gM(1),gM(2),gM(3)) By(gM(1),gM(2),gM(3)) Bz(gM(1),gM(2),gM(3));
               Cx(gM(1),gM(2),gM(3)) Cy(gM(1),gM(2),gM(3)) Cz(gM(1),gM(2),gM(3))];
        Sol = [ (-A0(gM(1),gM(2),gM(3)) + gM(1)*Ax(gM(1),gM(2),gM(3)) + gM(2)*Ay(gM(1),gM(2),gM(3)) + gM(3)*Az(gM(1),gM(2),gM(3)));
                (-B0(gM(1),gM(2),gM(3)) + gM(1)*Bx(gM(1),gM(2),gM(3)) + gM(2)*By(gM(1),gM(2),gM(3)) + gM(3)*Bz(gM(1),gM(2),gM(3)));
                (-C0(gM(1),gM(2),gM(3)) + gM(1)*Cx(gM(1),gM(2),gM(3)) + gM(2)*Cy(gM(1),gM(2),gM(3)) + gM(3)*Cz(gM(1),gM(2),gM(3)))
                ];

       % cM = LGS\Sol;
       cM = linsolve(LGS,Sol);

        distance = norm(gM-cM);
        
        
        if distance > 100
            cM = [-1 -1 -1];
            cIteration = -1;
            return
        elseif  distance > maxDelta 
            [cM cIteration] = SolveRecursiv (cM, cIteration);
          
        end 
    end
end