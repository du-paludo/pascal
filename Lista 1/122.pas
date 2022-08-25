program e122;
var n, r, a1, an: real;

begin
	read(n, r, a1);
	an:= a1 + (n - 1) * r;
	writeln(round(an));
end.