program compactacao;
type vetor = array[1..100] of integer;
var v: vetor; n: integer;

procedure remover_repetido(var v: vetor; var n: integer);
var i, j, k: integer;
begin
	for i:= 1 to n do
	begin
		j:= i + 1;
		while j <= n do
		begin
			if v[j] = v[i] then
			begin
				for k:= j to n do
					v[k]:= v[k + 1];
				n:= n - 1;
			end
			else j:= j + 1;
		end;
	end;
end;

procedure ler_escrever(var v: vetor; var n: integer);
var i: integer;
begin
	for i:= 1 to n do
		read(v[i]);
	write('O:');
	for i:= 1 to n do
		write(' ', v[i]);
	writeln;
	remover_repetido(v, n);
	write('C:');
	for i:= 1 to n do
		write(' ', v[i]);
	writeln;
end;

begin
	read(n);
	while n <> 0 do
	begin
		ler_escrever(v, n);
		read(n);
	end;
end.