program e019;
var a, b, c, m: real;
var f: integer;

begin
	read(a, b, c, f);
	m:= (a + b + c) / 3;
	if f >= 10 then
		writeln('NAO')
	else
	begin
		if m < 4 then
			writeln('NAO');
		if (m >= 4) and (m < 7) then
			writeln('TALVEZ');
		if (m >= 7) then
			writeln('SIM');
	end;
end.