
finalsignal = 1/ sqrt(bandpower(Qt - mean(Qt)))* (Qt - mean(Qt));
Qt = finalsignal;
mic1sig = 1/ sqrt(bandpower(mic1sig - mean(mic1sig)))* (mic1sig - mean(mic1sig));
mic2sig = 1/ sqrt(bandpower(mic2sig - mean(mic2sig)))* (mic2sig - mean(mic2sig));
mic3sig = 1/ sqrt(bandpower(mic3sig - mean(mic3sig)))* (mic3sig - mean(mic3sig));
mic0sig = 1/ sqrt(bandpower(mic0sig - mean(mic0sig)))* (mic0sig - mean(mic0sig));