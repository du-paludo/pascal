program e111;
var a: longint;

begin
	read(a);
	if (a mod 3 = 0) and (a mod 7 = 0) then
		writeln('SIM')
	else
		writeln('NAO');
end.