program matrizes;
const k = 2;
type matriz = array[1..k, 1..k] of integer;
var A, B, AB: matriz;

procedure ler_matriz (var m: matriz);
var i, j: integer;
begin
	for i:= 1 to k do
		for j:= 1 to k do
			read(m[i, j]);
end;

procedure multiplicar_matrizes (var A, B, AB: matriz);
var i, j, p: integer;
begin
	for i:= 1 to k do
		for j:= 1 to k do
		begin
			AB[i, j]:= 0;
			for p:= 1 to k dO
				AB[i, j]:= AB[i, j] + A[i, k] * B[k, j];
		end;
end;

procedure imprimir_matriz (var m: matriz);
var i, j: integer;
begin
	for i:= 1 to k do
		for j:= 1 to k do
			write(m[i, j], ' ');
		writeln;
end;

begin
	ler_matriz(A);
	ler_matriz(B);
	multiplicar_matrizes(A, B, AB);
	imprimir_matriz(AB);
end.