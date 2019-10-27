
distMic0 = norm(mic0 - fly);
distMic1 = norm(mic1 - fly);
distMic2 = norm(mic2 - fly);
distMic3 = norm(mic3 - fly);

%Digitalisierungsfehler durch abtastrate von controller z.B.: 100K Samples/s
%t0 = distMic0 / vSound  + (rand()*(digitalisierungsfehler) - 0.5* digitalisierungsfehler);
%t1 = distMic1 / vSound  + (rand()*(digitalisierungsfehler) - 0.5* digitalisierungsfehler);
%t2 = distMic2 / vSound  + (rand()*(digitalisierungsfehler) - 0.5* digitalisierungsfehler);
%t3 = distMic3 / vSound  + (rand()*(digitalisierungsfehler) - 0.5* digitalisierungsfehler);

%fehler durch abtastrate von controller z.B.: 100K Samples/s
%t0 = distMic0 / vSound  + (rand()*(1 / SamplesPerSecond) - 0.5* 1 / SamplesPerSecond);
%t1 = distMic1 / vSound  + (rand()*(1 / SamplesPerSecond) - 0.5* 1 / SamplesPerSecond);
%t2 = distMic2 / vSound  + (rand()*(1 / SamplesPerSecond) - 0.5* 1 / SamplesPerSecond);
%t3 = distMic3 / vSound  + (rand()*(1 / SamplesPerSecond) - 0.5* 1 / SamplesPerSecond);

%fehler durch Schallgeschwindigkeit bzw. Temperatur.
vSoundTempratureDependant = 331.4 * sqrt(1 + 1/273.15 * temperature);
t0 = distMic0 / vSoundTempratureDependant;
t1 = distMic1 / vSoundTempratureDependant;
t2 = distMic2 / vSoundTempratureDependant;
t3 = distMic3 / vSoundTempratureDependant;


TimeDivs = [t0 t1 t2 t3];