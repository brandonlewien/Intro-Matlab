%%
x = [1:1:8192];
midA = tone(1.0, 440);
plot(midA)
sound(midA)
%audiowrite('midA.wav', midA, 8192) % just to see how it sounds when
%saved... sounds the same
%%
plot(midA.*2)
sound(midA.*2) %louder, pitch is higher
%%
sound(midA.*0) %Does not generate sound
plot(midA.*0) %Dead 0 line
%%
sound(midA.*exp((-3).*x)) %Also no sound
plot(midA.*(exp((-3).*x))) %Graph spikes and drastically decreases
%%
sound(midA.*cos(10.*x)) %Sound that will kill ears
plot(midA.*cos(10.*x)) %Values ranging from .6 to 1
%%
sound(midA.*sin(.001.*x)) %Pulsating beats. Made by trying to hit 0 and back to 1
plot(midA.*sin(.001.*x)) %Huge waves that hit 0 frequency.
%%
sound(midA.*exp(-.0005.*x)) %Sound decreases exponentially
plot(midA.*exp(-.0005*x)) %Frequency goes down low with an exponential curve
