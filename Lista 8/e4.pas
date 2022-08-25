program substituicao;
type vetor = array [1..100] of integer;
var v1, v2, v3: vetor; tv1, tv2, tv3, pos_ini, pos_fim: integer;

procedure ler_vetor (var v: vetor; var tv: integer);
var i: integer;
begin
	i:= 1;
	read(v[i]);
	while v[i] <> 0 do
	begin
		i:= i + 1;
		read(v[i]);
	end;
	tv:= i - 1;
end;
		
function ocorre (var v2, v1: vetor; var tv2, tv1, pos_ini, pos_fim: integer): boolean;
var i, j, k: integer; aux: boolean;
begin
	ocorre:= false;
	i:= 1;
	while (i <= tv1 - tv2 + 1) and (not ocorre) do
	begin
		j:= 1;
		aux:= true;
		k:= i;
		while aux and (j <= tv2) do 
		begin
			if v1[k] <> v2[j] then
				aux:= false;
			j:= j + 1;
			k:= k + 1;
		end;
		if aux then
		begin
			ocorre:= true;
			pos_ini:= i;
			pos_fim:= k - 1;
		end;
		i:= i + 1;
	end;
end;

procedure substitui (var v3, v1: vetor; var tv3, tv1, pos_ini, pos_fim, tv2: integer);
var i, j: integer;
begin
	if tv3 > tv2 then
	begin
		for i:= tv1 downto pos_fim + 1 do
			v1[i + tv3 - tv2]:= v1[i];
		tv1:= tv1 + (tv3 - tv2);
	end;
	if tv3 < tv2 then
	begin
		for i:= (pos_ini + tv3) to tv1 - (tv2 - tv3) do
			v1[i]:= v1[i + tv2 - tv3];
		tv1:= tv1 - (tv2 - tv3);
	end;
	i:= pos_ini;
	for j:= 1 to tv3 do
	begin
		v1[i]:= v3[j];
		i:= i + 1;
	end;
end;

procedure imprime_vetor (var v: vetor; var tv: integer);
var i: integer;
begin
	for i:= 1 to tv - 1 do
		write(v[i], ' ');
	write(v[tv]);
end;

begin
	ler_vetor (v1, tv1);
	ler_vetor (v2, tv2);
	ler_vetor (v3, tv3);
	if ocorre (v2, v1, tv2, tv1, pos_ini, pos_fim) then
		substitui (v3, v1, tv3, tv1, pos_ini, pos_fim, tv2);
	if tv1 = 0 then
		writeln('vazia')
	else
		imprime_vetor (v1, tv1);
end.