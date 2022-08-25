program subsequencias;
type vetor = array [1..100] of longint;
var v: vetor; n, pos, tam_seq: longint;

procedure ler_vetor (var v: vetor; n: longint);
var i: integer;
begin
	for i:= 1 to n do
		read(v[i]);
end;
	
function seq (var v: vetor; n, tam_seq: longint): longint;
var i, j, k, cont: integer; teste: boolean;
begin
	i:= 1;
	seq:= 0;
	while (i <= n - 2*tam_seq + 1) and (seq = 0) do
	begin
		j:= i + tam_seq;
		while (j <= n - tam_seq + 1) and (seq = 0) do
		begin
			if v[j] = v[i] then
			begin
				teste:= true;
				cont:= 2;
				k:= i;
				while (cont <= tam_seq) and teste do
				begin
					k:= k + 1;
					j:= j + 1;
					if v[j] <> v[k] then
						teste:= false;
					cont:= cont + 1;
				end;
				if teste then
					seq:= i;
			end
			else
				j:= j + 1;
		end;
		i:= i + 1;
	end;
end;	

begin
    read(n);
    ler_vetor(v, n); 
    pos:= 0;
    tam_seq:= n div 2;
    while (pos = 0) and (tam_seq >= 2) do
    begin
         pos:= seq(v, n, tam_seq);
         tam_seq:= tam_seq - 1;
    end;
    if pos > 0 then
        writeln(pos,' ', tam_seq + 1)
    else
        writeln('nenhuma');
end.