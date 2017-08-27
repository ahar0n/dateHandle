function [t] = monthly(e0, eN)
% MONTHLY Serie de tiempo a resolucion mensual.
%
%   [T] = MONTHLY(I, F) calcula un vector de fecha mensual, a partir de una
%   fecha inicial (I) hasta una fecha final(F).
%
% See also DAILY
%
% author: ahar0n
%   date: 2017.08.26

i = 1;
t(i) = e0;
while t < eN
    [y, m, d] = datevec(t(i));
    t(i+1) = datenum(y, m+1, d);
    i = i + 1;
end

t = t(1:end-1);

end