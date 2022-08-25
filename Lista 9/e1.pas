program elementos_nulos;
type matriz = array[1..100, 1..100] of integer;
var A: matriz; m, n, cont_l, cont_c: integer;

procedure ler_matriz (var A: matriz; m, n: integer);
var i, j: integer;
begin
	for i:= 1 to m do
		for j:= 1 to n do
			read(A[i, j]);
end;

procedure nulas (var A: matriz; m, n: integer; var cont_l, cont_c: integer);
var i, j: integer; aux: boolean;
begin
	i:= 1;
	cont_l:= 0;
	cont_c:= 0;
	while i <= m do
	begin
		aux:= true;
		j:= 1;
		while (j <= n) and aux do
		begin
			if A[i, j] <> 0 then
				aux:= false;
			j:= j + 1;
		end;
		if aux then
			cont_l:= cont_l + 1;
		i:= i + 1;
	end;
	j:= 1;
	while j <= n do
	begin
		aux:= true;
		i:= 1;
		while (i <= m) and aux do
		begin
			if A[i, j] <> 0 then
				aux:= false;
			i:= i + 1;
		end;
		if aux then
			cont_c:= cont_c + 1;
		j:= j + 1;
	end;
end;

begin
	read(m, n);
	ler_matriz(A, m, n);
	nulas(A, m, n, cont_l, cont_c);
	writeln('linhas: ', cont_l);
	writeln('colunas: ', cont_c);
end.