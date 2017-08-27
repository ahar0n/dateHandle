function [yyyy, mm, dd] = decyear2ymd(decimalYear)
% DECYEAR2YMD Componentes de fecha.
% 
%   [Y, M, D] = DECYEAR2YMD(N) convierte una fecha como anho decimal a 
%   vector anho Y, mes M y dia D. N es un escalar (e.g. 2018.7654...)
%
% See also YMD2DECYEAR, DECYEAR2NUM, DECYEAR2YMD
%
% author: ahar0n
%   date: 2017.08.22

thisYear = floor(decimalYear);

restYear = decimalYear - thisYear; 

pastLastDay = datenum(thisYear, 1, 0);
futureLastDay = datenum(thisYear+1, 1, 0);

myDate = datenum(thisYear,1,restYear*(futureLastDay - pastLastDay));
[yyyy, mm, dd] = datevec(myDate);

end