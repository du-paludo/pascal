program e008;
var a, b, cont, soma: longint;

begin
	read(a, b);
	soma:= a + b;
	cont:= 2;
	while ((b <> 2 * a) and (b <> a div 2)) or ((a = 1) and (b = 0)) do
	begin
		cont:= cont + 1;
		a:= b;
		read(b);
		soma:= soma + b;
	end;
	writeln(cont, ' ', soma, ' ', a, ' ', b);
end.