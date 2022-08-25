program s001;
var n, i, soma, sinal: real;

begin
	read(n);
	soma:= 0;
	sinal:= 1;
	i:= 0;
	while i < n do
	begin
		soma:= soma + sinal * (1000 - (3*i)) / (i + 1);
		sinal:= sinal * (-1);
		i:= i + 1;
	end;
	writeln(soma:0:2);
end.