program e002;
var n: longint;

function eh_binario (a: longint): boolean;
var unidade: longint;
begin
	eh_binario:= true;
	while a <> 0 do
	begin
		unidade:= a mod 10;
		a:= a div 10;
		if (unidade <> 0) and (unidade <> 1) then
			eh_binario:= false;
	end;
end;

begin
    read (n);
    if eh_binario (n) then
        writeln ('sim')
    else
        writeln ('nao');
end.
