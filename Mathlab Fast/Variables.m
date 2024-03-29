%% Globale Variablen
global vSound;
vSound = 343.2 ; %Schallgeschwindigkeit
   
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
    global Qt;
    global mic1sig;
    global mic2sig;
    global mic3sig;
    global mic0sig;
    global samplingRate;
    
global TimeDivs;


%% Settings
%MikrophoneKoordinaten
global mic0;
global mic1;
global mic2;
global mic3;
mic0 = [0 0 0];
mic1 = [1 0 0];
mic2 = [1 1 0];
mic3 = [0.5 0.5 1];

% Qt stellt primaer nur ein Testsignal dar, verwendet werden die Signale
% mic1sig...
% deren Erzeugung folgt noch, hier vorlaeufig mit dem Moskitosignal
% initialisiert.

load('moskito96khz')
Qt = moskito96khz;

%% for Tests
global SamplesPerSecond;
SamplesPerSecond = 0.0;

global temperature;
temperature = 20;

samplingRate = 96000;
global snr;

global randomStream;
randomStream = RandStream('mt19937ar','Seed',5489);

