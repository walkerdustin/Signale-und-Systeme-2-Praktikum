

distMic0 = norm(mic0 - fly) + (rand()*0.02-0.01);
distMic1 = norm(mic1 - fly) + (rand()*0.02-0.01);
distMic2 = norm(mic2 - fly) + (rand()*0.02-0.01);
distMic3 = norm(mic3 - fly) + (rand()*0.02-0.01);


t0 = distMic0 / vSound;
t1 = distMic1 / vSound;
t2 = distMic2 / vSound;
t3 = distMic3 / vSound;


TimeDivs = [t0 t1 t2 t3];