program e007;
var soma: real; i, sinal, num, den: longint; aux: boolean;

begin
	soma:= 0;
	num:= 1;
	den:= 20;
	sinal:= -1;
	i:= 1;
	aux:= true;
	while i <= 10 do
	begin
		soma:= soma + sinal * (num / den);
		if aux then
		begin
			num:= (num + 2) * 10;
			den:= (den div 10) + 2;
			aux:= false;
		end
		else begin
			num:= (num div 10) + 2;
			den:= (den + 2) * 10;
			aux:= true;
		end;
		i:= i + 1;
		sinal:= -sinal;
	end;
	writeln(soma:0:2);
end.