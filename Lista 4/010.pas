program e010;
var i, t, n: longint; 

begin
	read(n);
	i:= 1;
	t:= 0;
	while t < n do
	begin
		t:= i * (i + 1) * (i + 2);
		i:= i + 1;
	end;
	if t = n then
		writeln('1')
	else
		writeln('0');
end.