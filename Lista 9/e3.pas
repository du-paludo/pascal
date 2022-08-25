program permutacao_matriz;
type matriz = array [1..100, 1..100] of integer;
var A: matriz; n: integer;

procedure ler_matriz (var A: matriz; n: integer);
var i, j: integer;
begin
	for i:= 1 to n do
		for j:= 1 to n do
			read(A[i, j]);
end;

function eh_permutacao (var A: matriz; n: integer): boolean;
var i, j: integer; aux, tem_1L, tem_1C: boolean;
begin
	aux:= true;
	i:= 1;
	while (i <= n) and aux do
	begin
		tem_1L:= false;
		tem_1C:= false;
		j:= 1;
		while (j <= n) and aux do
		begin
			if (A[i, j] = 1) then
			begin
				if tem_1L then
					aux:= false
				else
					tem_1L:= true;
			end
			else if A[i, j] <> 0 then
				aux:= false;
			if (A[j, i] = 1) then
			begin
				if tem_1C then
					aux:= false
				else
					tem_1C:= true;
			end
			else if A[j, i] <> 0 then
				aux:= false;
			j:= j + 1;
		end;
		if (not tem_1L) or (not tem_1C) then
			aux:= false;
		i:= i + 1;
	end;
	eh_permutacao:= aux;
end;

begin
	read(n);
	ler_matriz(A, n);
	if eh_permutacao(A, n) then
		writeln('sim')
	else
		writeln('nao');
end.