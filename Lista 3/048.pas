program e048;
var a, b, mult: longint;

begin
	read(a, b);
	if (a <= b) and (a > 0) and (b > 0) and (b mod 2 <> 0) and (a mod 2 <> 0) then
	begin
		mult:= b;
		while a < b do
		begin
			mult:= mult * a;
			a:= a + 2;
		end;
		writeln(mult);
	end
	else
		writeln('erro');
end.