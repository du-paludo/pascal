program e050;
var a, b, n: longint;

begin
	read(a, b);
	n:= 0;
	while (a mod b = 0) do
	begin
		a:= a div b;
		n:= n + 1;
	end;
	writeln(n);
end.