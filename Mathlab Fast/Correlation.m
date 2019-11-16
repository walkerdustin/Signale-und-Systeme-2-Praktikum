corrSegmentLength = 350; % Länge des Korrelationssegment
corrBegin = 1000; %Stelle ab der Korrelationssegment ausgeschnitten werden soll
corrEnde = corrBegin + corrSegmentLength;

%xcorr/rm0,rm1,200,*unbiased+

corrSegment = mic0sig(corrBegin:corrEnde);

mic0sigMain = mic0sig(corrBegin:(corrEnde+corrSegmentLength));
mic1sigMain = mic1sig(corrBegin:(corrEnde+corrSegmentLength));
mic2sigMain = mic2sig(corrBegin:(corrEnde+corrSegmentLength));
mic3sigMain = mic3sig(corrBegin:(corrEnde+corrSegmentLength));
%plot(xcorr(mic0,corrSegment,200,'unbiased')
corrMic0 = xcorr(mic0sigMain,corrSegment);
corrMic1 = xcorr(mic1sigMain,corrSegment);
corrMic2 = xcorr(mic2sigMain,corrSegment);
corrMic3 = xcorr(mic3sigMain,corrSegment);


[temp corrIndex0] = max(corrMic0);
[temp corrIndex1] = max(corrMic1);
[temp corrIndex2] = max(corrMic2);
[temp corrIndex3] = max(corrMic3);

corrIndexDiff01 = corrIndex1 - corrIndex0;
corrIndexDiff02 = corrIndex2 - corrIndex0;
corrIndexDiff03 = corrIndex3 - corrIndex0;

corrTdiff01 = corrIndexDiff01/samplingRate;
corrTdiff02 = corrIndexDiff02/samplingRate;
corrTdiff03 = corrIndexDiff03/samplingRate;


corrTdiff01korrekt = t0 - t1;
corrTdiff02korrekt = t0 - t2;
corrTdiff03korrekt = t0 - t3;

timeDiffsCorr = [corrTdiff01 corrTdiff02 corrTdiff03];
