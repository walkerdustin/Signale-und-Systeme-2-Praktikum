%{
 plot(x,arrIterations1x1x1);
 hold on;
 plot(x,arrIterations2x2x2);
 plot (x,arrIterations10x10x10);
 hold off;
 title('Iterationsversuche in Abhängig von der Boxgroesse');
ylabel('Iterationsversuche');
xlabel('Versuche');
legend('1m x 1m x 1m','2m x 2m x 2m', '10m x 10m x 10m');
axis([0 100 0 15]);
%}
%{
x = categorical({'Anordnung1','Anordnung2', 'Anordnung3', 'Anordnung4','Anordnung5'});
y = [78,578,858,43,32];
b = bar(x,y);

xtips1 = b(1).XEndPoints;
ytips1 = b(1).YEndPoints;
labels1 = string(b(1).YData);
text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
    'VerticalAlignment','bottom')


 title('Fehleranzahl in Abhänigkeit der Mikrofonpositionen');
ylabel('Fehleranzahl');
%}
%{
x = categorical({'Schätzwert1','Schätzwert2', 'Schätzwert3', 'Schätzwert4','Schätzwert5'});
y = [41,138,449,494,7438];
b = bar(x,y);

xtips1 = b(1).XEndPoints;
ytips1 = b(1).YEndPoints;
labels1 = string(b(1).YData);
text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
    'VerticalAlignment','bottom')


 title('Fehleranzahl in Abhänigkeit des Schätzwertes');
ylabel('Fehleranzahl');
%}
%{


%x = categorical({'350','750', '1000', '1500','2000','2500','3000','3500'});
x = [350,750,1000,1500,2000,2500,3000,3500];
y = [36.1,26.3,21.9,10.9,1.8,1.1,0.3,0.03];
b = bar(x,y);

xtips1 = b(1).XEndPoints;
ytips1 = b(1).YEndPoints;
labels1 = string(b(1).YData);
text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
    'VerticalAlignment','bottom')


 title('Relative Fehlerhäufigkeit in Abhängigkeit von K_{corr}');
ylabel('Fehleranzahl [%]');
xlabel('K_{corr}');
%}



%x = categorical({'350','750', '1000', '1500','2000','2500','3000','3500'});
x = [350,750,1000,1500,2000,2500,3000,3500];
y = [8.6,5.8,3.7,2.9,1.8,1.7,1.5,0.5];
b = bar(x,y);

xtips1 = b(1).XEndPoints;
ytips1 = b(1).YEndPoints;
labels1 = string(b(1).YData);
text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
    'VerticalAlignment','bottom')


 title('Relative Fehlerhäufigkeit in Abhängigkeit von K_{corr}');
ylabel('Fehleranzahl [%]');
xlabel('K_{corr}');

%{
%x = categorical({'350','750', '1000', '1500','2000','2500','3000','3500'});
x = [5000,7500,10000,12500,15000];
y = [23.1,3.7,37.9,31.9,21.8];
b = bar(x,y);

xtips1 = b(1).XEndPoints;
ytips1 = b(1).YEndPoints;
labels1 = string(b(1).YData);
text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
    'VerticalAlignment','bottom')


 title('Relative Fehlerhäufigkeit in Abhängigkeit des Signalstarts');
ylabel('Fehleranzahl [%]');
xlabel('Signalstart');


%plot(xcorr(mic2sigMain, corrSegment))
%title('Korrelation');

%}

%{
x = [1:260002];
x = x/samplingRate;
x= x';
plot(x',Qt);
xlabel('Laufzeit [s]');
title('Auszug aus Moskitosignal');
%}