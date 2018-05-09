%*******************************************************************************
% Authors:
%       Michael Gonzalez Rivera
%       Esteban Aguero Perez
%       Daniela Hernández Alvarado
%*******************************************************************************

%Aproxima la solución de una ecuacion diferencial de la forma
%      df/dx = f(x, y)
function [x, y] = RK4(f, xi, xf, y0, h)
  x = xi:h:xf;
  y(1) = y0;
  pos = 0;
  for t = x 
    pos = pos + 1;
    if (pos < length(x))
      k1 = f(t, y(pos));
      k2 = f(t + 0.5 * h, y(pos) + 0.5 * k1 * h);
      k3 = f(t + 0.5 * h, y(pos) + 0.5 * k2 * h);
      k4 = f(t + h, y(pos) + k3 * h);
      y(pos + 1) = y(pos) + (0.16666666 * (k1 + 2 * k2 + 2 * k3 + k4) * h);
    endif
  endfor
end
