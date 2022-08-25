program e112;
var n: integer;

begin
	read (n);
	if (n mod 2) = 0 then
		writeln('PAR')
	else
		writeln('IMPAR');
end.