program e119;
var k, ak, r, n, an: real;

begin
	read(k, ak, r, n);
	an:= ak + (n - k) * r;
	writeln(round(an));
end.