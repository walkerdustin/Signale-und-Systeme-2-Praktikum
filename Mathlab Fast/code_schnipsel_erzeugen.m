% schallgeschwindigkeit ist vSound
% abgetastet wurde mit 96 khz
% nun: t = dismic/V
% anzahl verpasster Werte: x =  t * 96000 + 10000
% verwendetes Signal : micsig = Wert x+1 bis x+ 100000


t0 = distMic0 / vSound;
missedValues0 = t0 * samplingRate  + 10000;
anfang0 = round(missedValues0 + 1);
ende0 = round(missedValues0 + 100000);
mic0sig = Qt(anfang0:ende0);



t1 = distMic1 / vSound;
missedValues1 = t1 * samplingRate  + 10000;
anfang1 = round(missedValues1 + 1);
ende1 = round(missedValues1 + 100000);
mic1sig = Qt(anfang1:ende1);

t2 = distMic2 / vSound;
missedValues2 = t2 * samplingRate  + 10000;
anfang2 = round(missedValues2 + 1);
ende2 = round(missedValues2 + 100000);
mic2sig = Qt(anfang2:ende2);

t3 = distMic3 / vSound;
missedValues3 = t3 * samplingRate  + 10000;
anfang3 = round(missedValues3 + 1);
ende3 = round(missedValues3 + 100000);
mic3sig = Qt(anfang3:ende3);

