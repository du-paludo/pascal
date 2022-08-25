program ocorrencias;
type vetor = array[1..100] of integer;
var v, w: vetor; i, n, m: integer;

function contador(var v, w: vetor; n, m: integer): integer;
var j, k, cont: integer; teste: boolean;
begin
	cont:= 0;
	j:= 1;
	while j <= n do
	begin
		if v[j] = w[1] then
		begin
			teste:= true;
			k:= 2;
			while (k <= m) and teste do
			begin
				if v[j + k - 1] <> w[k] then
					teste:= false;
				k:= k + 1;
			end;
			if teste then
				cont:= cont + 1;
		end;
		j:= j + 1;
	end;
	contador:= cont;
end;

begin
	read(n);
	read(m);
	for i:= 1 to n do
		read(v[i]);
	for i:= 1 to m do
		read(w[i]);
	writeln(contador(v, w, n, m));
end.