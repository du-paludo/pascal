program damas;
const max = 8;
type vetor = array[1..40] of integer; matriz = array[1..max, 0..max + 1] of integer;
var D: matriz; vetor_t, vetor_m, vetor_f: vetor; cont_t, cont_m, cont_f: integer;

procedure ler_matriz (var D: matriz);
var i, j: integer;
begin
	for i:= 1 to max do
		for j:= 1 to max do
			read(D[i, j]);
end;

procedure adicionar_no_vetor (var v: vetor; var cont: integer; i, j: integer);
begin
	cont:= cont + 2;
	v[cont - 1]:= i;
	v[cont]:= j;
end;

procedure analisar_movimentos (var D: matriz);
var i, j: integer;
begin
	cont_t:= 0;
	cont_m:= 0;
	cont_f:= 0;
	for i:= 1 to max do
	begin
		D[i, 0]:= 2;
		D[i, max + 1]:= 2;
	end;
	for i:= 1 to max do
		for j:= 1 to max do
			if D[i, j] = -1 then
			begin
				if (D[i + 1, j + 1] = 1) or (D[i + 1, j - 1] = 1) then
					adicionar_no_vetor(vetor_t, cont_t, i, j)
				else if (D[i + 1, j + 1] = 0) or (D[i + 1, j - 1] = 0) then
					adicionar_no_vetor(vetor_m, cont_m, i, j)
				else
					adicionar_no_vetor(vetor_f, cont_f, i, j);
			end;
end;

procedure escrever (var v: vetor; cont: integer);
var i: integer;
begin
	i:= 1;
	if cont = 0 then
		write('0')
	else
		while i <= cont do
		begin
			write(v[i], '-', v[i + 1], ' ');
			i:= i + 2;
		end;
	writeln;
end;

begin
	ler_matriz(D);
	analisar_movimentos(D);
	write('tomar: ');
	escrever(vetor_t, cont_t);
	write('mover: ');
	escrever(vetor_m, cont_m);
	write('ficar: ');
	escrever(vetor_f, cont_f);
end.