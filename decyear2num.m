function [myNumDate] = decyear2num(d)
% DECYEAR2NUM Fecha como numero.
% 
%   N = DECYEAR2NUM(D) convierte una fecha como anio decimal a dech serial.
%
% See also DECYEAR2NUM, DECYEAR2YMD
%
% author: ahar0n
%   date: 2017.08.22

[yy, mm, dd] = decyear2ymd(d);
myNumDate = datenum(yy, mm, dd);

end