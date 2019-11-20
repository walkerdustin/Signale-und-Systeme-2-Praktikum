SignalToNoiseRatio = 50; % == Signal/Noise  in dB
%S = RandStream('mt19937ar','Seed',5489);
%fprintf('adding noise with snr = %d \n', snr)

mic0sig = awgn(mic0sig, snr, 'measured', randomStream);
mic1sig = awgn(mic1sig, snr, 'measured', randomStream);
mic2sig = awgn(mic2sig, snr, 'measured', randomStream);
mic3sig = awgn(mic3sig, snr, 'measured', randomStream);