program e006;
var dia1, mes1, ano1, dia2, mes2, ano2: longint;

function eh_anterior (d1, m1, a1, d2, m2, a2: longint): boolean;
begin
	eh_anterior:= true;
	if a1 > a2 then
		eh_anterior:= false;
	if a1 = a2 then
	begin
		if m1 > m2 then
			eh_anterior:= false;
		if (m1 = m2) and (d1 >= d2) then
			eh_anterior:= false;
	end;
end;

begin
    read (dia1, mes1, ano1, dia2, mes2, ano2);
    if eh_anterior (dia1, mes1, ano1, dia2, mes2, ano2) then
        writeln ('a primeira data eh anterior')
    else
        writeln ('a primeira data nao eh anterior');
end.