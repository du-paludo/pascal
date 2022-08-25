program e116;
var a: longint;

begin
	read(a);
	if ((a mod 2 <> 0) and (a < -20)) or ((a mod 2 = 0) and (a > 7)) then
		writeln('SIM')
	else
		writeln('NAO');
end.