program e113;
var a, b: longint;

begin
	read(a, b);
	if (b <= (0.3 * a)) then
		writeln('SIM')
	else
		writeln('NAO');
end.