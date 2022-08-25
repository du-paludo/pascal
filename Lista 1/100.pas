program e100;
var n, i: longint;

begin
	read(n);
	i:= (n div 100) + (n mod 100);
	if i*i = n then
		writeln('SIM')
	else
		writeln('NAO');
end.