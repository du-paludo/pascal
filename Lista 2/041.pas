program e041;
var n, soma, penultimo, ultimo, i: longint;
 
begin
	read(n);
	penultimo:= 0;
	ultimo:= 1;
	i:= 0;
	while i < n do
	begin
		soma:= ultimo + penultimo;
		penultimo:= ultimo;
		ultimo:= soma;
		i:= i + 1;
	end;
	writeln(soma - 1);
end.