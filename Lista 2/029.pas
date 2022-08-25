program e029;
var i: integer;
var a, b, c: real;
 
begin
	read(i, a, b, c);
	if i = 1 then
	begin
		if (a < b) and (a < c) then
			if (b < c) then writeln(a:0:0, ' ', b:0:0, ' ', c:0:0)
			else writeln(a:0:0, ' ', c:0:0, ' ', b:0:0);
		if (b < a) and (b < c) then
			if (a < c) then writeln(b:0:0, ' ', a:0:0, ' ', c:0:0)
			else writeln(b:0:0, ' ', c:0:0, ' ', a:0:0);
		if (c < a) and (c < b) then
			if (a < b) then writeln(c:0:0, ' ', a:0:0, ' ', b:0:0)
			else writeln(c:0:0, ' ', b:0:0, ' ', a:0:0);
	end;
	if i = 2 then
	begin
		if (a < b) and (a < c) then
			if (b < c) then writeln(c:0:0, ' ', b:0:0, ' ', a:0:0)
			else writeln(b:0:0, ' ', c:0:0, ' ', a:0:0);
		if (b < a) and (b < c) then
			if (a < c) then writeln(c:0:0, ' ', a:0:0, ' ', b:0:0)
			else writeln(a:0:0, ' ', c:0:0, ' ', b:0:0);
		if (c < a) and (c < b) then
			if (a < b) then writeln(b:0:0, ' ', a:0:0, ' ', c:0:0)
			else writeln(a:0:0, ' ', b:0:0, ' ', c:0:0);
	end;
	if i = 3 then
	begin
		if (a > b) and (a > c) then
			writeln(b:0:0, ' ', a:0:0, ' ', c:0:0);
		if (b > a) and (b > c) then
			writeln(a:0:0, ' ', b:0:0, ' ', c:0:0);
		if (c > a) and (c > b) then
			writeln(a:0:0, ' ', c:0:0, ' ', b:0:0);
	end;
end.