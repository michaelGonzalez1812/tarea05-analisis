%*******************************************************************************
% Authors:
%       Michael Gonzalez Rivera
%       Esteban Aguero Perez
%       Daniela Hernández Alvarado
%*******************************************************************************

%Calcula el error de la funcion RK4 en el rango de 1/8 > h > 1/1024
function [h, error] = errorxh(f, xi, xf, y0)
  hi = 1 / 8;
  pos = 1;
  while (hi >= 1 / 1024)
    h(pos) = hi;
    [x, y] = RK4(f, xi, xf, y0, hi);
    error(pos) = (2 - y(length(y))) / 2;
    hi = hi / 2;
    pos = pos + 1;
  endwhile
  semilogy(h, error);
end