program e054;
var a, b, cont, teste: longint;

begin
	read(a);
	cont:= 0;
	teste:= 1;
	b:= a;
	while a <> 0 do
	begin
		if b = a then
			cont:= cont + 1
		else
			teste:= 0;
		read(a);
	end;
	if (cont >= 3) and (teste = 1) then
		writeln('SIM')
	else
		writeln('NAO');
end.