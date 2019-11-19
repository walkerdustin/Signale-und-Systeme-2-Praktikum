clear all
import
Variables;


fly = bornFly(1,1,1);
BrundleFly;
setDerivatives(TimeDivs);

%% Test fuer Fehler Rechnung durch Noise

arrSNR = 1000;
varCount = 10;
arrnumberofWrongCorrelations = [];
arrMeanErrors = [];
for snr = arrSNR
    numberofWrongCorrelations = 0;
    arrErrors = [];
    
    for i = 1:varCount 
        %% Correlation Simulieren
        fly = bornFly(1,1,1);
        BrundleFly;
        code_schnipsel_erzeugen;
        tempmic0sig = mic0sig;
        AddNoiseToSignal;
        %plotFunktions.plotsignals0bis100([tempmic0sig mic0sig]);  % to close all figure windows:   close all
        Normierung;
        Correlation;
        
        %% Berechnen der Richtigkeit des Ergebnisses der Korellation
        error01 = abs(corrIndexDiff01korrekt- corrIndexDiff01);
        error02 = abs(corrIndexDiff02korrekt- corrIndexDiff02);
        error03 = abs(corrIndexDiff03korrekt- corrIndexDiff03);
        arrErrors = [arrErrors error01]; 
        
        if error01 > 10
            numberofWrongCorrelations = numberofWrongCorrelations + 1;
        end
        
        
    end
    meanError = mean(arrErrors);
    arrMeanErrors = [arrMeanErrors meanError];
    arrnumberofWrongCorrelations = [arrnumberofWrongCorrelations numberofWrongCorrelations];
    snr
end