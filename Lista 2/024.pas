program e024;
var a, i: integer;

begin
	read(a);
	i:= 2020 - a;
	writeln(i);
	if i >= 16 then
		writeln('SIM')
	else
		writeln('NAO');
	if i >= 18 then
		writeln('SIM')
	else
		writeln('NAO');
end.