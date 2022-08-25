program e031;
var n: longint;
 
begin
	read(n);
	writeln(n);
	case n of
		0..200: writeln('0');
		201..400: writeln('20%');
		401..600: writeln('30%');
		else writeln('40%');
	end;
end.