p = [1 -3 5 -3 0 5];
d = [1 -3 3];
[q,r] = deconv(p,d)
%Above is like how the problem states.

tester = r(1:length(r)-length(d)+1)
~all(tester)
%above I kind of had to get help with this.
%I used slicing in order to solve this problem.
%All is inversed because if it's the correct answer it'll shoot out all 0's
%which should be correct.