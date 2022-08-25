program e052;
var m, n, i, soma: longint;

begin
	read(m);
	i:= 0;
	soma:= 0;
	while (i < m) do
	begin
		read(n);
		soma:= soma + n;
		i:= i + 1;
	end;
	writeln(soma div m);
end.