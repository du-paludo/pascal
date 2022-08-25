program e003;
var n, q, teste: longint;

begin
	read(n);
	if (n <> 0) then
		teste:= 1
	else
		teste:= 0;
	while (n <> 0) do
	begin
		read(q);
		if (q <> n * n) then
			teste:= 0;
		read(n);
	end;
	writeln(teste);
end.