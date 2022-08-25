program e017;
var n: longint;

function inverso (a: longint): longint;
var aux: longint;
begin
	aux:= 0;
	while a <> 0 do 
	begin
		aux:= (aux * 10) + (a mod 10);
		a:= a div 10;
	end;
	inverso:= aux;
end;

begin
	read(n);
	if inverso(n) = n then
		writeln('SIM')
	else
		writeln('NAO');
end.