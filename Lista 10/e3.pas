program quadrado_magico;
type matriz = array[1..100, 1..100] of integer;
var A: matriz; n: integer;

procedure ler_matriz (var A: matriz; n: integer);
var i, j: integer;
begin
	for i:= 1 to n do
		for j:= 1 to n do
			read(A[i, j]);
end;

function eh_quadrado_magico (var A: matriz; n: integer): boolean;
var aux: boolean; i, j, soma_a, soma_b, soma_c: integer;
begin
	aux:= true;
	soma_a:= 0;
	soma_b:= 0;
	for i:= 1 to n do
		soma_a:= soma_a + A[i, i];
	j:= n;
	for i:= 1 to n do
	begin
		soma_b:= soma_b + A[i, j];
		j:= j - 1;
	end;
	if soma_b <> soma_a then
		aux:= false;
	i:= 1;
	while (i <= n) and aux do
	begin
		soma_b:= 0;
		soma_c:= 0;
		for j:= 1 to n do
		begin
			soma_b:= soma_b + A[i, j];
			soma_c:= soma_c + A[j, i];
		end;
		if (soma_b <> soma_a) or (soma_c <> soma_a) then
			aux:= false;
		i:= i + 1;
	end;
	eh_quadrado_magico:= aux;
end;

begin
	read(n);
	ler_matriz(A, n);
	if eh_quadrado_magico(A, n) then
		writeln('sim')
	else
		writeln('nao');
end.