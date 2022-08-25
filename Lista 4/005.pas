program e005;
var n, i, k, j, a: longint; par, impar, aux: boolean;

begin
	read(n);
	i:= 1;
	k:= 1;
	aux:= true;
	par:= false;
	impar:= false;
	while (i <= n) and aux do
	begin
		j:= 1;
		while (j <= k) and (i <= n) and aux do
		begin
			read(a);
			if a mod 2 = 0 then
				par:= true
			else
				impar:= true;
			i:= i + 1;
			j:= j + 1;
		end;
		if (j - 1 <> k) or (par and impar) then
			aux:= false
		else begin
			k:= k + 1;
			if par then
				par:= false;
			if impar then
				impar:= false;
		end;
	end;
	if aux then
		writeln(k - 1)
	else
		writeln('0');
end.