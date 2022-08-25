program e025;
var d, m, a, n: integer;

begin
	read(d, m, a);
	n:= 2021 - a;
	if (d > 29) and (m = 04) then
		n:= n - 1;
	if (m > 4) then
		n:= n - 1;
	writeln(n);
end.