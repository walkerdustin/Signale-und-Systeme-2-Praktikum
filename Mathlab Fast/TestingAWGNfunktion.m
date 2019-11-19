signal = ones(1000, 1);
randomStream = RandStream('mt19937ar','Seed',5489);
mic0sig = awgn(signal, 10, 'measured', randomStream);
mic1sig = awgn(signal, 10, 'measured', randomStream);
mic2sig = awgn(signal, 10, 'measured', randomStream);
mic3sig = awgn(signal, 10, 'measured', randomStream);

plotFunktions.plotsignals0bis100([mic0sig mic1sig  mic2sig mic3sig]);