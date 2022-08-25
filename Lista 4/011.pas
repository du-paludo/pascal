program e011;
var n, x, teste: longint;

begin
	read(n);
	teste:= 1;
	x:= 2;
	while x < n do
	begin
		if n mod x = 0 then
			teste:= 0;
		x:= x + 1;
	end;
	if (teste = 0) or (n <= 1) then
		writeln('NAO')
	else
		writeln('SIM');
end.