program e004;
var i: longint;

function eh_primo (n: longint): boolean;
var j: longint;
begin
	eh_primo:= true;
	j:= 2;
	while j < n do
	begin
		if n mod j = 0 then
			eh_primo:= false;
		j:= j + 1;
	end;
end;

begin
    for i:= 1 to 10000 do
        if eh_primo (i) then
            writeln (i);
end.