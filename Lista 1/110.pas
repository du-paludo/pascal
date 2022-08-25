program e110;
var a, b: longint;

begin
	read(a, b);
	if (a mod b = 0) then
		writeln('SIM')
	else
		writeln('NAO');
end.