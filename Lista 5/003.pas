program s003;
var i, num, den, soma: real;

begin
	num:= 1;
	den:= 1;
	soma:= 0;
	i:= 0;
	while i < 5 do
	begin
		soma:= soma + (num/den);
		num:= num + den;
		den:= den + num;
		i:= i + 1;
	end;
	writeln(soma:0:2);
end.