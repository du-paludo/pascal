program e056;
var n, m, i, soma: longint;

begin
	read(n, m);
	if n mod 2 = 0 then
		i:= 1
	else
		i:= 0;
	soma:= 0;
	while i < ((m - n) div 2) do
	begin
		if n mod 2 = 0 then
			soma:= soma + n + 2 * i
		else
			soma:= soma + n + 1 + 2 * i;
		i:= i + 1;
	end;
	writeln(soma);
end.