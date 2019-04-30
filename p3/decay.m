function samples = decay(score)
%Same as song, besides the fact that each note will be decaying
%Insert: bs5 = [0 -1 1/4; 0 10 1/4; 0 10 1/4; 0 10 1/4; 0 6 1;
%0 -1 1/4; 0 8 1/4; 0 8 1/4; 0 8 1/4; 0 5 2]; for score.

samples = [];
[N, width] = size(score);
if (width ~= 3)
return;
end

for n = 1:N
octave = score(n, 1);
note = score(n, 2);
duration = score(n, 3);
freq = 0;
 if (note >= 0)
 freq = 2^(octave + note/12) * middleA;
 end
 
 x = 0:(duration*8192-1); %addition for decay
 samples = [samples exp((-.001).*x).*tone(duration , freq)]; %exp function for decay on tone
 end
 end

 function rv = middleA
 rv = 440;
 end

 function rv = tone(duration , freq)
 sampleTimes = (0: duration*8192-1)/8192;
 rv = sin(2*pi*freq* sampleTimes) * .999;

 end