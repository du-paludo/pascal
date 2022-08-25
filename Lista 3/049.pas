program e049;
var n, sm, f1, f2, f3, f4, t: real;

begin
	read(n);
	sm:= 450;
	t:= 0;
	f1:= 0;
	f2:= 0;
	f3:= 0;
	f4:= 0;
	while n <> 0 do
	begin
		if (n <= 3*sm) then
			f1:= f1 + 1
		else if (n > 3*sm) and (n <= 9*sm) then
			f2:= f2 + 1
		else if (n > 9*sm) and (n <= 20*sm) then
			f3:= f3 + 1
		else if (n > 20*sm) then
			f4:= f4 + 1;
		t:= t + 1;
		read(n);
	end;
	writeln((f1/t * 100):0:2);
	writeln((f2/t * 100):0:2);
	writeln((f3/t * 100):0:2);
	writeln((f4/t * 100):0:2);
end.