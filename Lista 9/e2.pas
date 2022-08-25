program repeticao_em_matriz;
type matriz = array [1..1000, 1..1000] of integer;
var A: matriz; m, n: integer;

procedure ler_matriz (var A: matriz; m, n: integer);
var i, j: integer;
begin
	for i:= 1 to m do
		for j:= 1 to n do
			read(A[i, j]);
end;

function tem_repetido (var A: matriz; m, n: integer): boolean;
var aux: boolean; i, j, p, q: integer;
begin
	i:= 1;
	aux:= false;
	while (i <= m) and (not aux) do
	begin
		j:= 1;
		while (j <= n) and (not aux) do
		begin
			p:= 1;
			while (p <= m) and (not aux) do
			begin
				q:= 1;
				while (q <= n) and (not aux) do
				begin
					if (A[i, j] = A[p, q]) and ((i <> p) or (j <> q)) then
						aux:= true;
					q:= q + 1;
				end;
				p:= p + 1;
			end;
			j:= j + 1;
		end;
		i:= i + 1;
	end;
	tem_repetido:= aux;
end;

begin
	read(m, n);
	ler_matriz(A, m, n);
	if tem_repetido(A, m, n) then
		writeln('sim')
	else
		writeln('nao');
end.