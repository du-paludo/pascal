program e039;
var n, i, a: longint;
 
begin
	read(n);
	i:= 1;
	a:= 1;
	while i <= n do
	begin
		a:= a * (i * 2);
		i:= i + 1;
	end;
	writeln(a);
end.