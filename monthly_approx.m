function [t] = monthly_approx(strdate, siglo)
% date_monthly_approx(D, F, S) fecha como numero aproximada al mes (al
% primer dia del mes).
%
% D{str} fecha con formato 'dd/mm/yyyy'
% S{int} constante de siglo para fechas anios cortos ('yy') e.g. 1900

date_cell = regexp(strdate,'\d*','match');

month = str2num(date_cell{2});   % month
year = str2num(date_cell{3});    % year

if year < 100
    year = year + siglo;
end

t = datenum(year,month,1);

end