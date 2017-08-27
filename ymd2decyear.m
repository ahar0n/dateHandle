function [myDecYear] = ymd2decyear(yyyy, mm, dd)
% YMD2DECYEAR Fecha decimal.
% 
%   N = YMD2DECYEAR(Y, M, D) convierte una fecha como anho anho Y, mes M y 
%   dia D, a fecha decimal. Y, M y D son escalares enteros.
%
% See also DECYEAR2YMD, DECYEAR2NUM
%
% author: ahar0n
%   date: 2017.08.22

dateAsNum = datenum(yyyy, mm, dd);

pastLastDay = datenum(yyyy, 1, 0);
futureLastDay = datenum(yyyy+1, 1, 0);

myDecYear = yyyy + (dateAsNum - pastLastDay) /... 
    (futureLastDay - pastLastDay);

end