function [d] = calcMaxMicDiff(mic0, mic1, mic2, mic3)
%     mics = [mic0' mic1' mic2' mic3']
%     mics2 = [mic0; mic1; mic2; mic3]
%     distances = mics - mics2;
    distances = [norm(mic0 - mic1) norm(mic0 - mic2) norm(mic0 - mic3) norm(mic1 - mic2) norm(mic1 - mic3) norm(mic2 - mic3)]
    
    d = max(distances);

end

