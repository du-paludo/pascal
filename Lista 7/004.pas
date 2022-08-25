program e004;
type vetor = array[1..200] of integer;
var v, y, w: vetor; n, i, k, indice: integer;

begin
	read(n);
	for i:= 1 to n do
		read(v[i]);
	indice:= 0;
	while n > 0 do
	begin
		indice:= indice + 1;
		i:= 2;
		y[indice]:= v[1];
		w[indice]:= 1;
		while i <= n do
        begin
			if v[1] = v[i] then
			begin
				w[indice]:= w[indice] + 1;
				for k:= i to n do
					v[k]:= v[k + 1];
				n:= n - 1;
				i:= i - 1;
			end;
			i:= i + 1;
        end;
		if n > 0 then
        begin
			for k:= 1 to n do
				v[k]:= v[k+1];
			n:= n - 1;
        end;
    end;
	if indice = 0 then
		writeln('vetor vazio')
	else if indice = 1 then
		write('a sequencia tem 1 numero distinto: ')
	else
		write('a sequencia tem ', indice, ' numeros distintos: ');
	for i:= 1 to indice do
		write(y[i], ' ');
	writeln;
	for i:= 1 to indice do
	begin
		if w[i] = 1 then
			writeln(y[i], ' ocorre 1 vez')
		else
			writeln(y[i], ' ocorre ', w[i], ' vezes');
	end;
end.