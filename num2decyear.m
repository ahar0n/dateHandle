function [myNumDate] = num2decyear(d)
% NUM2DECYEAR Fecha como numero.
% 
%   N = NUM2DECYEAR(D) convierte una fecha serial en anio decimal.
%
% See also DECYEAR2NUM, DECYAER2YMD
%
% author: ahar0n
%   date: 2017.08.22

[yyyy, mm, dd] = datevec(d);
myNumDate = ymd2decyear(yyyy, mm, dd);

end