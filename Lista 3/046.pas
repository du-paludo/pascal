program e046;
var
	n, num, den: real;
	p: integer;

begin
	read(n, p);
	num:= 0;
	den:= 0;
	while (n <> 0) or (p <> 0) do
	begin
		num:= num + n*p;
		den:= den + p;
		read(n, p);
	end;
	writeln((num/den):0:2);
end.