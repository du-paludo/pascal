program e001;
var n, m: longint;

function contrario (a, b: longint): boolean;
var unidade, inverso: longint;
begin
	contrario:= false;
	inverso:= 0;
	while b <> 0 do
	begin
		unidade:= b mod 10;
		b:= b div 10;
		inverso:= inverso * 10 + unidade;
	end;
	if a = inverso then
		contrario:= true;
end;

begin
	read (n,m);
	if contrario (n,m) then
		writeln (n,' eh o contrario de ',m)
	else
		writeln (n,' nao eh o contrario de ',m);
end.