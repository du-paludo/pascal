program quadrado_magico_2;
type matriz = array[1..100, 1..100] of integer;
var A: matriz; n, cont, tam, i, j: integer;

procedure ler_matriz (var A: matriz; n: integer);
var p, q: integer;
begin
	for p:= 1 to n do
		for q:= 1 to n do
			read(A[p, q]);
end;

function eh_quadrado_magico (var A: matriz; tam, i, j: integer): boolean;
var aux: boolean; p, q, soma_a, soma_b: integer;
begin
	aux:= true;
	soma_a:= 0;
	soma_b:= 0;
	q:= j;
	for p:= i to i + tam - 1 do
	begin
		soma_a:= soma_a + A[p, q];
		q:= q + 1;
	end;
	q:= j + tam - 1;
	for p:= i to i + tam - 1 do
	begin
		soma_b:= soma_b + A[p, q];
		q:= q - 1;
	end;
	if soma_b <> soma_a then
		aux:= false;
	p:= i;
	while (p <= i + tam - 1) and aux do
	begin
		soma_b:= 0;
		for q:= j to j + tam - 1 do
			soma_b:= soma_b + A[p, q];
		if (soma_b <> soma_a) then
			aux:= false;
		p:= p + 1;
	end;
	q:= j;
	while (q <= j + tam - 1) and aux do
	begin
		soma_b:= 0;
		for p:= i to i + tam - 1 do
			soma_b:= soma_b + A[p, q];
		if (soma_b <> soma_a) then
			aux:= false;
		q:= q + 1;
	end;
	eh_quadrado_magico:= aux;
end;

begin
	read(n);
	ler_matriz(A, n);
	cont:= 0;
	for tam:= n downto 2 do
		for i:= 1 to n - tam + 1 do
			for j:= 1 to n - tam + 1 do
				if eh_quadrado_magico(A, tam, i, j) then
					cont:= cont + 1;
	writeln(cont);
end.