function [t] = daily(e0, eN)
% DAILY Serie de tiempo a resolucion diaria.
%
%   [T] = DAILY(I, F) calcula un vector de fecha diaria, a partir de una
%   fecha inicial (I) hasta una fecha final(F).
%
% See also MONTHLY
%
% author: ahar0n
%   date: 2017.08.26

i = 1;
t(i) = e0;
while t < eN
    [y, m, d] = datevec(t(i));
    t(i+1) = datenum(y, m, d+1);
    i = i + 1;
end

t = t(1:end-1);

end