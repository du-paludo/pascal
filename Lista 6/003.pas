program e003;
var n: longint;

function converte_em_decimal (a: longint): longint;
var dec, i, b: longint;
begin
	dec:= 0;
	i:= 1;
	while a <> 0 do
	begin
		b:= a mod 10;
		dec:= dec + b * i;
		a:= a div 10;
		i:= i * 2;
	end;
	converte_em_decimal:= dec;
end;

begin
    read (n);
    writeln (converte_em_decimal (n));
end.