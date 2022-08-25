program e006;
var k, i, n, x, soma: longint;

begin
	read(k);
	i:= 0;
	n:= 6;
	while i < k do
	begin
		soma:= 0;
		x:= 1;
		while x < n do
		begin
			if n mod x = 0 then
				soma:= soma + x;
			x:= x + 1;
		end;
		if soma = n then
		begin
			write(n, ' ');
			i:= i + 1;
		end;
		n:= n + 1;
	end;
end.