corrSegmentLength = 50000; % Länge des Korrelationssegment
corrBegin = 1000; %Stelle ab der Korrelationssegment ausgeschnitten werden soll
corrEnde = corrBegin + corrSegmentLength;

%xcorr/rm0,rm1,200,*unbiased+

corrSegment = mic0sig(corrBegin:corrEnde);


%plot(xcorr(mic0,corrSegment,200,'unbiased')
corrMic0 = xcorr(mic0sig,corrSegment);
corrMic1 = xcorr(mic1sig,corrSegment);
corrMic2 = xcorr(mic2sig,corrSegment);
corrMic3 = xcorr(mic3sig,corrSegment);


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


corrTdiff01korrekt = t1 - t0;
corrTdiff02korrekt = t2 - t0;
corrTdiff03korrekt = t3 - t0;

