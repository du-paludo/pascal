program e101;
var n: longint;

begin
	read(n);
	writeln((n mod 10), (n mod 100 div 10), (n div 100));
end.