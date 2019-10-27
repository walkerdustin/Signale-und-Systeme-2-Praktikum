[A B C] = setDerivatives(timeMic0,timeMic1,timeMic2,timeMic3,mic0,mic1,mic2,mic3,vSound);
%[A B C] = setDerivatives(0.0027,0.0019,0.0042,0.0045,mic0,mic1,mic2,mic3,vSound);
u = 0.82;
v = 0.22;
w = 0.52;
%geschätzter Startpunkt
gM = [0 0 0]

for i=1:10
    [gM(1) gM(2) gM(3)] = SolveLGS(gM(1),gM(2),gM(3),A,B,C);
    gM = SolveRecursiv(gM);

end;


