function rv = hchord(spec , dur, loudness)
% chords but with added fundamentals.
% check out test.m within 9.11m for an example with plot.

[N, width] = size(spec);
if (width ~= 2)
rv = [];
return
end
%%
t = (0:8192*dur -1)/8192;
rv = zeros(1, length(t));
for j = 1:N
f = 440 * 2^(spec(j ,1) + spec (j,2)/12);
%rv = rv + sin(2*pi*f*t);
for k = 1:length(loudness)
    fund = k*f;
    rv = rv + loudness(k)*sin(2*pi*fund*t);
end
end
rv = rv/N * 0.999;
sound(rv)
end