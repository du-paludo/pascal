program e006;
type vetor = array [1..200] of real;
var v: vetor; tam, n: integer;

function busca (x: real; var v: vetor; tam: integer): integer;
var a, b, c: integer;
begin
	a:= 1;
	c:= tam;
	b:= (a + c) div 2;
	while (c >= a) and (v[b] <> x) do
	begin
		if v[b] > x then
			c:= b - 1
		else
			a:= b + 1;
		b:= (a + c) div 2;
	end;
	if a <= c then
		busca:= b
	else
		busca:= 0;
end;

procedure escrever (var tam: integer; var v: vetor);
var i: integer;
begin
	if tam = 0 then
		write('vazio')
	else
	for i:= 1 to tam do
		write(v[i]:0:1, ' ');
end;

procedure inserir (var tam: integer; var v: vetor);
var i: integer; x: real;
begin
	read(x);
	i:= tam;
	if tam = 200 then
		writeln('erro')
	else
	begin
		v[0]:= x;
		while x < v[i] do
		begin
			v[i+1]:= v[i];
			i:= i - 1;
		end;
		v[i+1]:= x;
		tam:= tam + 1;
		escrever(tam, v);
	end;
end;

procedure remover (var tam: integer; var v: vetor);
var i: integer; x: real;
begin
	read(x);
	i:= busca(x, v, tam);
	if i = 0 then
		write('erro')
	else begin
		for i:= i to tam - 1 do
			v[i]:= v[i + 1];
		tam:= tam - 1;
		escrever(tam, v);
	end;
end;

begin
	tam:= 0;
	read(n);
	while n <> 0 do
	begin
		if n = 1 then
		begin
			inserir(tam, v);
			writeln;
		end
		else if n = 2 then
		begin
			remover(tam, v);
			writeln;
		end;
		read(n);
	end;
	escrever(tam, v);
end.