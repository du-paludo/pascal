program s002;
var n, i, soma: real;

begin
	read(n);
	soma:= 0;
	i:= 1;
	while i < n do
	begin
		soma:= soma + (i / (n - i));
		i:= i + 1;
	end;
	writeln(soma:0:2);
end.