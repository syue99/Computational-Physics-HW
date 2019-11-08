function [value, isterminal, direction] = myEvent(T, Y)
d = sqrt(Y(1)^2+Y(3)^2);
value      = (d < 10^(-7));
isterminal = 1;   % Stop the integration
direction  = 0;