
varCount = 1000;  
arrIterations1x1x1 = zeros(1,varCount);
arrIterations2x2x2 = zeros(1,varCount);
arrIterations10x10x10 = zeros(1,varCount);
arrIterationError = -1 * ones(1,varCount);

arrErrors = [];
arrAvgErrors = [];
arrAbweichung = [];
countError01 = 0;
countError02 = 0;
countError03 = 0;
%% Test für Abweichung in Abhängikeit der Kcorr

for i = 1:varCount
        
       fly = bornFly(1,1,1);
       BrundleFly;
       
       code_schnipsel_erzeugen;
        Normierung;

        Correlation;
        
        arrAbweichung = [arrAbweichung ((corrTdiff01-corrTdiff01korrekt)/corrTdiff01korrekt) ((corrTdiff02-corrTdiff02korrekt)/corrTdiff02korrekt) ((corrTdiff03-corrTdiff03korrekt)/corrTdiff03korrekt)];
       if corrIndexDiff01 ~= (-corrIndexDiff01korrekt)
           countError01= countError01+1;
       end;
        if corrIndexDiff02 ~= (-corrIndexDiff02korrekt)
           countError02= countError02+1;
       end;
        if corrIndexDiff03 ~= (-corrIndexDiff03korrekt)
           countError03= countError03+1;
       end;
        
end
    a = arrAbweichung * 100;
    
    aa = mean(a)
%% Test fuer Fehler Rechnung durch Schallgeschwindigkeit bzw.: Temperatur
%{

arrTemperature = 0:5:60;

for temperature = arrTemperature
    arrErrors = [];
    for i = 1:varCount 
        fly = bornFly(1,1,1);
        BrundleFlyWithError;
        %BrundleFly;
        setDerivatives(TimeDivs);
        gM = [0.5, 0.5, 0.5];
        [cM, iteration] = SolveRecursiv (gM, 0);
        d = norm(fly - cM');
        if iteration > -1 && d < 0.2
            arrErrors = [arrErrors, d];
        end
    end
    avgError = mean(arrErrors, 'all');
    arrAvgErrors = [arrAvgErrors avgError];
end
%}
%% Test fuer Fehler Rechnung durch Samples per second
%{ 
arrSamplesPerSecond = [linspace(10000, 100000, 10  ), linspace(200000, 1000000 , 9  )];

for SamplesPerSecond = arrSamplesPerSecond
    arrErrors = [];
    for i = 1:varCount
        fly = bornFly(1,1,1);
        BrundleFlyWithError;
        %BrundleFly;
        setDerivatives(TimeDivs);
        gM = [0.5,0.5,0.5];
        [cM, iteration] = SolveRecursiv (gM, 0);
        d = norm(fly - cM');
        if iteration > -1 && d < 0.07
            arrErrors = [arrErrors, d];
        end
    end
    avgError = mean(arrErrors, 'all');
    arrAvgErrors = [arrAvgErrors avgError];
end
%}
%% Test: Anzahl benötigter Iterationen in Abhänigkeit der Boxgröße
%{  
      
     for i = 1:varCount
        
       fly = bornFly(1,1,1);
       BrundleFly;
       setDerivatives(TimeDivs);
       gM = [0.5,0.5,0];
       [gM iteration] = SolveRecursiv (gM, 0);
       arrIterations1x1x1 = [arrIterations1x1x1 iteration];
    end
    
      arrIterations2x2x2 = [];
    for i = 1:varCount
       fly = bornFly(2,2,2);
       BrundleFly;
       setDerivatives(TimeDivs);
       gM = [0.5,0.5,0.5];
       [gM iteration] = SolveRecursiv (gM, 0);
       
       arrIterations2x2x2 = [arrIterations2x2x2 iteration];
    end
    

     arrIterations10x10x10 = [];
    for i = 1:varCount
       fly = bornFly(10,10,10);
       BrundleFly;
       setDerivatives(TimeDivs);
       gM = [0.5,0.5,0.5];
       [gM iteration] = SolveRecursiv (gM, 0);
       
       arrIterations10x10x10 = [arrIterations10x10x10 iteration];
    end
  

    x = 1:varCount;

%{
mic0 = [0   0   1];
mic1 = [1   0   0];
mic2 = [0   1   0];
mic3 = [1   1   0];

 for i = 1:varCount
        
       fly = bornFly(1,1,1);
       BrundleFly;
       setDerivatives(TimeDivs);
       gM = [0,0,0];
       [gM iteration] = SolveRecursiv (gM, 0);
       
       arrIterations0_1 = [arrIterations0_1 iteration];
    end

%}
%}





%{

%% Korrtest

a = 25:50;
a = a/mean(a);
b = 27:52;
b = b/mean(b);

a = a(5:15);
b = b(5:15);
%}
