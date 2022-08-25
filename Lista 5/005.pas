program s005;
var i, soma, num, den, v: real;

begin
	soma:= 0;
	num:= 1;
	den:= 3;
	i:= 0;
	while i < 10 do
	begin
		soma:= soma + (num / den);
		v:= num;
		num:= 2 * den;
		den:= 2 * v;
		i:= i + 1;
	end;
	writeln(soma:0:2);
end.