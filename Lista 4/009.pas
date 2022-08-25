program e009;
var Pa, Pb, v, Ta, Tb: real;
var cont: integer;

begin
	read(Pa, Pb, Ta, Tb);
	cont:= 0;
	if Pb < Pa then
	begin
		v:= Pa;
		Pa:= Pb;
		Pb:= v;
		v:= Ta;
		Ta:= Tb;
		Tb:= v;
	end;
	if Ta < Tb then
		writeln('0')
	else
	begin
		while Pa <= Pb do
		begin
			Pa:= Pa * (1 + Ta);
			Pb:= Pb * (1 + Tb);
			cont:= cont + 1;
		end;
		writeln(cont);
	end;
end.