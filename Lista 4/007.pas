program e007;
var l, c: integer;

begin
	read(l, c);
	if (l mod 2 = 0) then
		if (c mod 2 = 0) then
			writeln('BRANCA')
		else
			writeln('PRETA')
	else
		if (c mod 2 = 0) then
			writeln('PRETA')
		else
			writeln('BRANCA');
end.