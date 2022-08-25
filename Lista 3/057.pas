program e057;
var a, n: longint;

begin
	read(a);
	n:= 0;
	while a <> 0 do
	begin
		if (a mod 7 = 0) and (a > n) then
			n:= a;
		read(a);
	end;
	writeln(n);
end.