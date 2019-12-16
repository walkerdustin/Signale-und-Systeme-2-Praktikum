clear variables;
close all;


%% Basis ist ein Zeitvektor, der die (?quidistanten) Zeitpunkte, an denen die Abtastwerte gewonnen wurden, enth?lt
% Abtastrate soll 2 GHz sein
% Es werden N=100000 Werte aufgezeichnet
% Der erste Abtastwert wird zum Zeitpunkt t=0 abgespeichert
% Wie gro? ist der betrachtete Zeitraum?
N=100000;
ts=0.5e-9;
sr=1/ts;
tvec=(0:1:N-1)*ts;

%% Erzeugen Sie die folgenden Signale:
% s1: cosinus mit f1=  10kHz;
% s2: cosinus mit f2=  20kHz;
% s3: cosinus mit f3= 100kHz;
% s4: cosinus mit f4=  20MHz;
% s5: cosinus mit f5=  25MHz;
% s6: cosinus mit f6= 200MHz;
% s7: cosinus mit f7=   1GHz;
% s8: cosinus mit f8=   2GHZ;
%
% a) Welche Signale sind kritisch f?r die Simulation unter den gegebenen Randbedingungen
% b) Erstellen Sie aussagekr?ftige Plaotzur Dartsellung der SIgnale

%% Berechnen Sie das Sektrum der gegebenen Signale mit Hilfe der Funktion fft.
% Welche Rolle spielt in diesem Zusammenhang die Funktion fftshift
% interpretieren Sie das Ergebnis der Funktion fft f?r mehrere der
% gegebenen Signale und bestimmen Sie die Aufl?sung und den Frequenzbereich
% der berechnetene Spektren


%% Betrachten Sie nun das Spektrum des Signals s3. Welche Unterschiede ergeben sich, wenn Sie anstatt N=100000 Abtastwerten, 110000 Abtastwerte verwenden?
% Wie l?sst sich das erkl?ren?
% Wie l?ssint sich dieser Effekt mit Hilfe der Funktion "hanning"
% kompensieren?
% Was bedeutet dies f?r das Signal im Zeitvergleich


%% Lineare und nichtlineare Verzerrungen
% Evaluieren Sie die folgende Aufgabe mit dem Signal sn=s4+s5
% Um zu beschreiben, wie Systeme eEingangssignale aufd Ausgangssignale
% abbilden, stehen verschiedene Methoden zur Verf?gung:
% * Impulsantwort
% * ?bertragungsfunktion
% * ?bertragungskennlinie: Auf welchen Ausgangswert wird ein Momentanwert
%   am Eingang abgebildet.
% Simulieren Sie die im folgenden beschriebenen ?bertragungskan?le und
% diskutieren Sie die Methoden zur Beschreibung f?r jeden der folgenden
% Kan?le:
% * der Eingangswert x wird auf den Ausgangswert sgn(x) * x * x  (* steht hier f?r die Multiplikation)
% * das Signal wird in 2 gleiche Anteile aufgeteilt. Einer der beiden Teile
% wird um 25 ns verz?gert und mit dem anderen Anteil addiert. Dies ergibt
% dann das Ausgangssignal


%% Filterentwurf

Entwerfen Sie ein Tiefpassfilter (FIR) mit dem Filter-Designtool, das in der Lage ist, aus dem Signal s5+s6+s7+s8+randn(...) das Signal s5 zu regenerieren
