
distMic0 = norm(mic0 - fly);
distMic1 = norm(mic1 - fly);
distMic2 = norm(mic2 - fly);
distMic3 = norm(mic3 - fly);

%Digitalisierungsfehler durch abtastrate von controller 100K Samples /s
%1s / 100.000 = 
t0 = distMic0 / vSound  + (rand()*(digitalisierungsfehler) - 0.5* digitalisierungsfehler);
t1 = distMic1 / vSound  + (rand()*(digitalisierungsfehler) - 0.5* digitalisierungsfehler);
t2 = distMic2 / vSound  + (rand()*(digitalisierungsfehler) - 0.5* digitalisierungsfehler);
t3 = distMic3 / vSound  + (rand()*(digitalisierungsfehler) - 0.5* digitalisierungsfehler);


TimeDivs = [t0 t1 t2 t3];