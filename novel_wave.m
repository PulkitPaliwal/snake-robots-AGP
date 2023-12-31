function y = novel_wave(t,A,w,i,phi)
frac = (w*t/(2*pi) + (i-1)*phi);
frac = frac - floor(frac);
for i = 1:length(t)
    if frac(i) <=1/4 && frac(i)>=0
        y(i,:) = A*(1- 16*(frac(i).^2));
    elseif frac(i) < 0.75 && frac(i) >0
        y(i,:) = -A*(1- 16*((frac(i) - 0.5).^2));
    else
        y(i,:) =A*(1- 16*((frac(i) - 1).^2));
    end
end
