function chord(fre)
ssas = zeros(1,4096);
ssas(fre(4)+1) = 0.25;
ssas(fre(3)+1) = 0.25;
ssas(fre(2)+1) = 0.25;
ssas(fre(1)+1) = 0.25;
F = [ssas(1), ssas(2:4096)/2, 0, ssas(4096:-1:2)/2]*8192;
f = real(ifft(F));
sound(f);
end

