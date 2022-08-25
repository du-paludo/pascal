program e003;
type vetor = array[1..200] of integer;
var v: vetor; n, i: integer; ordenado: boolean;

begin
	read(n);
	if n = 0 then
		writeln('vetor vazio')
	else begin
		ordenado:= true;
		read(v[1]);
		for i:= 2 to n do
		begin
			read(v[i]);
			if v[i] < v[i-1] then
				ordenado:= false;
		end;
		if ordenado then
			writeln('sim')
		else
			writeln('nao');
		for i:= n downto 1 do
			write(v[i], ' ');
	end;
end.