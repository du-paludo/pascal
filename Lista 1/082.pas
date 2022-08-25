program e082;
var h, m, s: longint;

begin
	read (s);
	h:= 0;
	m:= 0;
	while (s >= 3600) do
	begin
		h:= h + 1;
		s:= s - 3600;
	end;
	while (s >= 60) do
	begin
		m:= m + 1;
		s:= s - 60;
	end;
	writeln(h,':',m,':',s);
end.
		