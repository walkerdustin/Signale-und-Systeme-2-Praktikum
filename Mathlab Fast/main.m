clear all

Variables;


fly = bornFly(1,1,1);
BrundleFly;
setDerivatives(TimeDivs);


%gesch�tzter Startpunkt
gM = [0.5 0.5 0.5];

Visualisation;

[gM iteration] = SolveRecursiv (gM, 0)
gMAufgabe1  = gM;

code_schnipsel_erzeugen;
Normierung;
Correlation;
setDerivatives(timeDiffsCorr);
gM = [0.5 0.5 0.5];
[gM iteration] = SolveRecursiv (gM, 0)
gMAufgabe2  = gM;
