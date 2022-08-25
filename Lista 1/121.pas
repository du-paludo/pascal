program e121;
var n, a1, an, s: real;

begin
	read(n, a1, an);
	s:= ((a1 + an) * n) / 2;
	writeln(round(s));
end.