program e033;
var a, b: integer;
 
begin
	read(a, b);
	case a of
		3: writeln('TRIANGULO ', (b * 3));
		4: writeln('QUADRADO ', (b * b));
		5: writeln('PENTAGONO ');
		else writeln('ERRO');
	end;
end.