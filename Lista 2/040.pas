program e040;
var a, maior, menor: longint;
 
begin
	read(a);
	maior:= a;
	menor:= a;
	while a <> 0 do
	begin
		if a > maior then
			maior:= a;
		if a < menor then
			menor:= a;
		read(a);
	end;
	writeln(maior, ' ', menor);
end.