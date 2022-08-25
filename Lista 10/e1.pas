program equacoes_lineares;
type vetor = array[1..100] of real; matriz = array[1..100, 1..100] of real;
var X, B: vetor; A: matriz; m, n: integer;

procedure ler_matriz (var A: matriz; m, n: integer);
var i, j: integer;
begin
	for i:= 1 to m do
		for j:= 1 to n do
			read(A[i, j]);
end;

procedure ler_vetor (var v: vetor; n: integer);
var i: integer;
begin
	for i:= 1 to n do
		read(v[i]);
end;

function eh_solucao (var A: matriz; var B, X: vetor; m, n: integer): boolean;
var aux: boolean; i, j: integer; soma: real;
begin
	aux:= true;
	for i:= 1 to m do
	begin
		soma:= 0;
		for j:= 1 to n do
			soma:= soma + A[i, j] * X[j];
		if soma <> B[i] then
			aux:= false;
	end;
	eh_solucao:= aux;
end;

begin
	read(m, n);
	ler_vetor(X, n);
	ler_matriz(A, m, n);
	ler_vetor(B, m);
	if eh_solucao(A, B, X, m, n) then
		writeln('sim')
	else
		writeln('nao');
end.