program e083;
var d, m, a: integer;

begin
	a:= 0;
	m:= 0;
	read(d);
	while d >= 365 do
		begin
			a:= a + 1;
			d:= d - 365;
		end;
	while d >= 30 do
		begin
			m:= m + 1;
			d:= d - 30;
		end;
	writeln(a,' ',m,' ',d);
end.
		