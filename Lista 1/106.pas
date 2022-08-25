program e106;
var a: longint;

begin
	read(a);
	if (a >= 0) then
		writeln(a*a*a)
	else
		writeln(a*a);
end.