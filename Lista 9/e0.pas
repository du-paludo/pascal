program matriz_triangular;
type matriz = array[1..100, 1..100] of integer;
var A: matriz; n: integer;

procedure ler_matriz (var m: matriz; n: integer);
var i, j: integer;
begin
	for i:= 1 to n do
		for j:= 1 to n do
			read(m[i, j]);
end;

function eh_triangular (var m: matriz; n: integer): boolean;
var i, j: integer; aux1, aux2: boolean;
begin
	aux1:= true;
	aux2:= true;
	i:= 1;
	while (i <= n) and (aux1 or aux2) do
	begin
		j:= i + 1;
		while (j <= n) and (aux1 or aux2) do
		begin
			if (m[i, j] <> 0) and aux1 then
				aux1:= false;
			if (m[j, i] <> 0) and aux2 then
				aux2:= false;
			j:= j + 1;
		end;
		i:= i + 1;
	end;
	if aux1 or aux2 then
		eh_triangular:= true
	else
		eh_triangular:= false;
end;

begin
	read(n);
	ler_matriz(A, n);
	if eh_triangular(A, n) then
		writeln('sim')
	else
		writeln('nao');
end.