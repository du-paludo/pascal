program e018;
var c, n: longint; p: real;

begin
	read(c);
	read(n);
	if (c = 100) or (c = 103) then p:= n * 1.2
	else if (c = 101) or (c = 104) then p:= n * 1.3
	else if c = 102 then p:= n * 1.5
	else if c = 105 then p:= n * 1;
	writeln(p:0:2);
end.