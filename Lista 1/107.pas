program e107;
var n: longint;

begin
	read (n);
	if (n mod 3) = 0 then
		writeln('SIM')
	else
		writeln('NAO');
end.