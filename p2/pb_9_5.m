%%
x = [1:5:8000]
midA = tone(1.0, 440);
plot((midA(1:ceil(10*8192/440))),[1:187])

sampleTimes = (0:187-1)/8192; %Not sure if you were allowed to change this
y = midA(1:ceil(10*8192/440))
plot(sampleTimes,y,'linewidth',2) %plotted with x and y
