program e102;
var a, n, x: longint;

begin
	read(a);
	n:= (a div 100) + (3 * (a mod 100 div 10)) + (5 * (a mod 10));
	x:= (n mod 7);
	writeln(a, x);
end.