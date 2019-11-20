SignalToNoiseRatio = 50; % == Signal/Noise  in dB
%S = RandStream('mt19937ar','Seed',5489);
%fprintf('adding noise with snr = %d \n', snr)

%snrDB = 10 * log10(snr);

mic0sig = awgn(mic0sig, snrDB, 'measured', randomStream);
mic1sig = awgn(mic1sig, snrDB, 'measured', randomStream);
mic2sig = awgn(mic2sig, snrDB, 'measured', randomStream);
mic3sig = awgn(mic3sig, snrDB, 'measured', randomStream);