program maximizar_soma;
type vetor = array[1..100] of integer;
var v: vetor; n, i, j, sum_a, sum_b, sum_c: integer;

begin
	read(n);
	for i:= 1 to n do
		read(v[i]);
	sum_a:= 0;
	sum_b:= 0;
	sum_c:= 0;
	for i:= 1 to n do
	begin
		for j:= i to n do
		begin
			sum_c:= sum_c + v[j];
			if sum_c > sum_b then
				sum_b:= sum_c;
		end;
		if sum_b > sum_a then
			sum_a:= sum_b;
		sum_b:= 0;
		sum_c:= 0;
	end;
	writeln(sum_a);
end.