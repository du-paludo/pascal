program e036;
var t, A: integer;
var q: real;
 
begin
	read(t, A);
	case t of
		1: q:= A / (0.5 * 0.4 * 10);
		2: q:= A / (0.5 * 0.6 * 10);
		3: q:= A / (0.5 * 0.8 * 10);
	end;
	if (frac(q) <> 0) then
		q:= int(q) + 1;
	writeln(q:0:0, ' caixas');
end.