

distMic0 = norm(mic0 - fly);
distMic1 = norm(mic1 - fly);
distMic2 = norm(mic2 - fly);
distMic3 = norm(mic3 - fly);


t0 = distMic0 / vSound;
t1 = distMic1 / vSound;
t2 = distMic2 / vSound;
t3 = distMic3 / vSound;


TimeDivs = [(t0-t1) (t0-t2) (t0-t3)];

