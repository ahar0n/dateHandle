function [ts] = monthly(e0, eN)
% MONTHLY Serie de tiempo a resolucion mensual.
%
%   [T] = MONTHLY(I, F) calcula un vector de fecha mensual, a partir de una
%   fecha inicial (I) hasta una fecha final(F).
%
% I,F : fecha {string} e.g. '1984/12/24', o como numero serie e.g. 725000.00.
%
% See also DAILY
%
% author: ahar0n
%   date: 2017.08.26

i = 1;
t(i) = datenum(e0);
while t(i) < datenum(eN)
    [y, m, d] = datevec(t(i));
    i = i + 1;
    t(i) = datenum(y, m+1, d);
end

ts = t;

end