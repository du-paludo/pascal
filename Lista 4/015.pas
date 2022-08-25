program e015;
var n, t, soma, unidade: longint;

begin
	read(n);
	t:= n * 37;
	soma:= 0;
	while t > 0 do
	begin
		unidade:= (t mod 10);
		t:= (t div 10);
		soma:= soma + unidade;
	end;
	if n = soma then
		writeln('SIM')
	else
		writeln('NAO');
end.