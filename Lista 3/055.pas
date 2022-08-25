program e055;
var cont: longint;
var n, m: real;

begin
	read(n, m);
	cont:= 0;
	while m >= 1 do
	begin
		m:= m / 10;
		if round((frac(m)*10)) = n then
			cont:= cont + 1;
		m:= int(m);
	end;
	if cont > 0 then
		writeln(cont)
	else
		writeln('NAO');
end.