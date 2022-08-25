program e062;
var a: real;

begin
	read(a);
	while a <> 0 do
	begin
		if a < 0 then
			writeln(a:0:2);
		read(a);
	end;
end.