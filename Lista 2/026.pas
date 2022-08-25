program e026;
var A: longint;

begin
	read(A);
	if A <= 6 then
		writeln(100)
	else
		writeln(80 + 15 * (A - 3));
end.