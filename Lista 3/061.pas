program e061;
var n, i: longint;

begin
	read(n);
	i:= 1;
	while i < n do
	begin
		writeln(i, ' ', n - 1 * i);
		i:= i + 1;
	end;
end.