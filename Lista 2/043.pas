program e043;
var n, i, s: longint;
 
begin
	read(n);
	i:= 0;
	s:= 0;
	while i < n do
	begin
		s:= s + (i * 2 + 1);
		i:= i + 1;
	end;
	writeln(s);
end.