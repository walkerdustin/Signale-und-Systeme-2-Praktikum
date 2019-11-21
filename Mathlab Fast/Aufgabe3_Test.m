clear all
Variables;
fly = bornFly(1,1,1);
BrundleFly;
setDerivatives(TimeDivs);

%% Test fuer Fehler Rechnung durch Noise

%arrSNR = 5:-0.1: 0;
arrSnrDB = 0;
%arrSnrDB = 10:-1:-10;
%arr1SNR = 1: 1 : 50;
%arrSNR = 1/ arr1SNR;
varCount = 1000;
arrnumberofWrongCorrelations = [];
arrMeanErrors = [];

for snrDB = arrSnrDB
    numberofWrongCorrelations = 0;
    arrErrors = [];
    
    for i = 1:varCount 
        %% Correlation Simulieren
        fly = bornFly(1,1,1);
        BrundleFly;
        code_schnipsel_erzeugen;
        Normierung;
        %tempmic0sig = mic0sig;
        AddNoiseToSignal;
        %plotFunktions.plotsignals0bis100([tempmic0sig mic0sig]);  % to close all figure windows:   close all
        
        Correlation;
        
        setDerivatives(timeDiffsCorr);
        gM = [0.5,0.5,0];
        [cM, iteration] = SolveRecursiv (gM, 0);
        r = norm(cM);
        d = norm(fly - cM');
        
        if iteration == -1
            arrErrors = [arrErrors, -1];
        elseif r > 10
            arrErrors = [arrErrors, -2];
        else 
            arrErrors = [arrErrors, d];
        end
        
    end
    meanError = mean(arrErrors);
    arrMeanErrors = [arrMeanErrors meanError];
    arrnumberofWrongCorrelations = [arrnumberofWrongCorrelations numberofWrongCorrelations];
    snr
end