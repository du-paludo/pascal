program palavras_cruzadas;
type matriz = array[1..100, 1..100] of integer;
var A, H, V: matriz; m, n: integer;

procedure ler_copiar_matriz (var A, H, V: matriz; m, n: integer);
var i, j: integer;
begin
	for i:= 1 to m do
		for j:= 1 to n do
		begin
			read(A[i, j]);
			H[i, j]:= A[i, j];
			V[i, j]:= A[i, j];
		end;
end;

procedure escrever (var A: matriz; m, n: integer);
var i, j: integer;
begin
	for i:= 1 to m do
	begin
		for j:= 1 to n do
			write(A[i, j], ' ');
		writeln;
	end;
end;

procedure analisar_matriz (var A, H, V: matriz; m, n: integer);
var i, j, cont, k: integer;
begin
	cont:= 0;
	for i:= 1 to m do
		for j:= 1 to n do
			if A[i, j] = 0 then
			begin
				if (H[i, j + 1] <> -1) and (j < n) and ((A[i, j - 1] = -1) or (j = 1)) then
				begin
					cont:= cont + 1;
					A[i, j]:= cont;
					k:= j;
					while (A[i, k] <> -1) and (k <= n) do
					begin
						H[i, k]:= -1;
						k:= k + 1;
					end;
				end
				else if (V[i + 1, j] <> -1) and (i < m) and ((A[i - 1, j] = -1) or (i = 1)) then
				begin
					cont:= cont + 1;
					A[i, j]:= cont;
					k:= i;
					while (A[k, j] <> -1) and (k <= m) do
					begin
						V[k, j]:= -1;
						k:= k + 1;
					end;
				end;
			end;
end;

begin
	read(m, n);
	ler_copiar_matriz(A, H, V, m, n);
	analisar_matriz(A, H, V, m, n);
	escrever(A, m, n);
end.