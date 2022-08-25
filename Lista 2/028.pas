program e028;
var F: integer;
var C: real;

begin
	read(F);
	C:=((5*F) - 160) / 9;
	writeln(C:0:2);
	if (C <= 0) then
		writeln('solido');
	if (C > 0) and (C < 100) then
		writeln('liquido');
	if (C >= 100) then
		writeln('gasoso');
end.