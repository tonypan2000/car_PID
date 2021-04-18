OS = 2; % desired %OS = 5
T_S2 = 15; % desired settling time (seconds) = 15

Xi = sqrt((log(OS/100)^2)/(pi()^2 + (log(OS/100)^2)));

w_n = 4/(T_S2*Xi);

p = 5; %p = 10

K_d = ((p + 2 * Xi * w_n)*1750 - 4215) / 0.0143;

K_p = ((2*Xi*w_n*p + w_n^2)*1750 - 1430.0001) / 0.0143;

K_i = (w_n^2)*1750/0.01143;