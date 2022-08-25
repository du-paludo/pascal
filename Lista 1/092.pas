program e092;
var p1, p2, p3, n: integer;

begin
	read(p1, p2, p3);
	n:=(p1 + (2*p2) + (3*p3)) div (1 + 2 + 3);
	writeln(n);
end.